USE `ch9.1`;

CREATE TABLE `SYS_USER`
(
`id` INT(5) NOT NULL,
`username` VARCHAR(20) NOT NULL,
`PASSWORD` VARCHAR(20) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `SYS_ROLE`
(
`id` INT(5) NOT NULL,
`NAME` VARCHAR(20) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 ;

CREATE TABLE `SYS_USER_ROLES`
(
`SYS_USER_ID` INT(5) NOT NULL,
`ROLES_ID` INT(5) NOT NULL,
PRIMARY KEY (`SYS_USER_ID`,`ROLES_ID`)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO SYS_USER (id,username, PASSWORD) VALUES (1,'wyf', 'wyf');
INSERT INTO SYS_USER (id,username, PASSWORD) VALUES (2,'wisely', 'wisely');


INSERT INTO SYS_ROLE(id,NAME) VALUES(1,'ROLE_ADMIN');
INSERT INTO SYS_ROLE(id,NAME) VALUES(2,'ROLE_USER');

INSERT INTO SYS_USER_ROLES(SYS_USER_ID,ROLES_ID) VALUES(1,1);
INSERT INTO SYS_USER_ROLES(SYS_USER_ID,ROLES_ID) VALUES(2,2);