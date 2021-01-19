CREATE TABLE IF NOT EXISTS 
categories(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, name VARCHAR(20), img VARCHAR(100));

CREATE TABLE IF NOT EXISTS 
authors(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, name VARCHAR(20) NOT NULL, img VARCHAR(100));

CREATE TABLE IF NOT EXISTS 
articles(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, headline VARCHAR(50) NOT NULL, subhead VARCHAR(30) NOT NULL, content 
VARCHAR(500) NOT NULL, category INT, author INT, claps VARCHAR(100), reviews VARCHAR(100), cover VARCHAR(100), FOREIGN KEY (category) REFERENCES categories(id),
FOREIGN KEY (author) REFERENCES authors(id));


-- CREATE TABLE IF NOT EXISTS 
-- reviews(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, text VARCHAR(500), user VARCHAR(20) NOT NULL );

