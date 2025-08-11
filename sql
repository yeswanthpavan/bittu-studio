CREATE DATABASE mywebsite;

USE mywebsite;

CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create an example admin user with hashed password
INSERT INTO admins (username, password) 
VALUES ('admin', SHA2('yourpassword', 256));

CREATE TABLE site_content (
    id INT AUTO_INCREMENT PRIMARY KEY,
    page_name VARCHAR(50),
    content TEXT
);
