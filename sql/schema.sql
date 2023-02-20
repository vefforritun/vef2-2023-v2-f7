CREATE TABLE public.events (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL UNIQUE,
  slug VARCHAR(64) NOT NULL UNIQUE,
  description TEXT,
  created TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE public.registrations (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  comment TEXT,
  event INTEGER NOT NULL,
  created TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT event FOREIGN KEY (event) REFERENCES events (id)
);

CREATE TABLE public.users (
  id serial primary key,
  username character varying(64) NOT NULL,
  password character varying(256) NOT NULL,
  admin BOOLEAN DEFAULT false
);
