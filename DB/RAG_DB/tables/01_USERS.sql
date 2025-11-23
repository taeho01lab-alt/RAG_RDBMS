CREATE TABLE USERS (
    USER_ID     VARCHAR2(20)                    NOT NULL,
    CREATED_AT  DATE         DEFAULT SYSDATE    NOT NULL,
    PASSWORD    VARCHAR2(20)                    NOT NULL,
    NAME        VARCHAR2(20)                    NOT NULL,
    ROLE        VARCHAR2(20) DEFAULT 'USER'     NOT NULL,
    
    CONSTRAINT PK_USERS
        PRIMARY KEY (USER_ID),
        
    CONSTRAINT CK_USERS_ROLE
        CHECK (ROLE IN ('USER', 'ADMIN'))
);
