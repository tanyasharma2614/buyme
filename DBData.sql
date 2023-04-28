-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: buyme
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `alertId` int NOT NULL AUTO_INCREMENT,
  `alertType` varchar(20) DEFAULT NULL,
  `bidId` int DEFAULT NULL,
  PRIMARY KEY (`alertId`),
  KEY `bidId` (`bidId`),
  CONSTRAINT `alerts_ibfk_1` FOREIGN KEY (`bidId`) REFERENCES `bidding` (`bidId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auction` (
  `auctionId` int NOT NULL AUTO_INCREMENT,
  `auctionStatus` int DEFAULT '0',
  `productId` int DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `initialPrice` float DEFAULT NULL,
  `secretMinimumBid` float DEFAULT NULL,
  `incrementPrice` float DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `currentMaxBid` int DEFAULT '0',
  `maxBidUserName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`auctionId`),
  KEY `productId` (`productId`),
  KEY `username` (`username`),
  CONSTRAINT `auction_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  CONSTRAINT `auction_ibfk_2` FOREIGN KEY (`username`) REFERENCES `enduser` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
INSERT INTO `auction` VALUES (1,0,1,'tanyasharma',20000,50000,2000,'2023-04-12 11:12:00','2023-04-13 11:12:00',8000,'tanyasharma'),(2,0,2,'sammed',50,80,10,'2023-04-14 17:55:00','2023-04-17 17:55:00',60,'tanyasharma'),(3,0,3,'sammed',30,100,100,'2023-04-15 19:27:00','2023-04-15 12:27:00',0,NULL),(4,0,4,'sammed',90,300,10,'2023-04-14 19:31:00','2023-04-15 19:29:00',0,NULL),(5,0,5,'sammed',20000,50000,10000,'2023-04-24 20:32:00','2023-04-24 20:34:00',20000,'sammed'),(6,0,6,'sammed',190,500,10,'2023-04-24 20:36:00','2023-04-24 20:45:00',0,NULL),(7,0,7,'tanyasharma',30,60,10,'2023-04-24 20:48:00','2023-04-24 20:50:00',40,'sammed'),(8,0,8,'sammed',50,100,10,'2023-04-24 22:02:00','2023-04-24 22:05:00',80,'sammed'),(9,0,9,'sammed',50,100,10,'2023-04-24 22:12:00','2023-04-24 22:15:00',110,'sammed'),(10,0,10,'sammed',15,50,10,'2023-04-24 22:25:00','2023-04-24 22:26:00',10,'sammed'),(11,0,11,'sammed',10,50,10,'2023-04-24 22:35:00','2023-04-24 22:38:00',40,'tanyasharma'),(12,0,12,'sammed',1000,1500,100,'2023-04-24 22:42:00','2023-04-24 22:45:00',1600,'tanyasharma'),(13,0,13,'sammed',40,90,10,'2023-04-25 00:20:00','2023-04-25 00:25:00',60,'tanyasharma'),(14,0,14,'sammed',40,90,10,'2023-04-25 00:20:00','2023-04-25 00:25:00',0,NULL),(15,0,15,'sammed',103,500,100,'2023-04-25 18:15:00','2023-04-25 18:25:00',1103,'tanyasharma'),(16,0,16,'sammed',100,500,100,'2023-04-25 18:59:00','2023-04-25 19:10:00',100,'sammed'),(17,0,17,'sammed',1003,1500,100,'2023-04-25 19:04:00','2023-04-25 19:30:00',1003,'sammed'),(18,0,18,'sammed',103,500,100,'2023-04-25 19:50:00','2023-04-25 12:50:00',0,NULL),(19,0,19,'sammed',103,1000,100,'2023-04-25 19:51:00','2023-04-26 12:51:00',0,NULL),(20,0,20,'sammed',105,1000,100,'2023-04-25 19:53:00','2023-04-25 23:53:00',600200,'sammed'),(21,0,21,'sammed',50,100,10,'2023-04-25 21:09:00','2023-04-25 23:09:00',0,NULL),(22,0,22,'sammed',103,1000,100,'2023-04-25 21:09:00','2023-04-25 23:09:00',403,'sammed'),(23,0,23,'sammed',103,1000,100,'2023-04-25 21:29:00','2023-04-25 22:29:00',800,'tanyasharma'),(24,0,25,'tanyasharma',20,40,5,'2023-04-25 21:44:00','2023-04-26 21:44:00',0,NULL),(25,0,26,'tanyasharma',20,30,5,'2023-04-25 21:45:00','2023-04-25 23:45:00',85,'sammed'),(26,0,27,'sammed',105,1000,100,'2023-04-25 23:41:00','2023-04-25 23:59:00',600,'sammed'),(27,0,28,'sammed',105,1000,100,'2023-04-25 23:41:00','2023-04-25 23:59:00',0,NULL),(28,0,29,'sammed',105,1000,100,'2023-04-26 00:10:00','2023-04-26 09:10:00',1100,'sammed'),(29,0,32,'jay',103,1000,100,'2023-04-26 12:59:00','2023-04-26 23:59:00',700,'sammed'),(30,0,33,'sammed',103,100,1000,'2023-04-26 13:26:00','2023-04-26 23:26:00',103,'sammed'),(31,0,34,'sammed',103,1000,100,'2023-04-26 13:28:00','2023-04-26 23:28:00',700,'jay'),(32,0,35,'tanyasharma',103,1000,100,'2023-04-26 16:05:00','2023-04-26 23:05:00',6100,'jay'),(33,0,36,'jay',103,100,1000,'2023-04-26 17:45:00','2023-04-26 23:45:00',103,'jay'),(34,0,37,'jay',103,1500,100,'2023-04-26 17:46:00','2023-04-26 23:46:00',2000,'tanyasharma'),(35,0,38,'tanyasharma',103,1000,100,'2023-04-26 18:02:00','2023-04-26 23:02:00',4100,'jay'),(36,0,39,'sammed',103,1000,100,'2023-04-26 23:27:00','2023-04-27 20:27:00',0,NULL),(37,0,40,'sammed',103,1000,100,'2023-04-26 20:29:00','2023-04-26 23:29:00',103,'sammed');
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidding`
--

DROP TABLE IF EXISTS `bidding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bidding` (
  `bidId` int NOT NULL AUTO_INCREMENT,
  `auctionId` int DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `bidPrice` int DEFAULT NULL,
  `didWin` int DEFAULT NULL,
  `upperLimit` float DEFAULT NULL,
  `bidIncrement` int DEFAULT NULL,
  PRIMARY KEY (`bidId`),
  KEY `auctionId` (`auctionId`),
  KEY `username` (`username`),
  CONSTRAINT `bidding_ibfk_1` FOREIGN KEY (`auctionId`) REFERENCES `auction` (`auctionId`),
  CONSTRAINT `bidding_ibfk_2` FOREIGN KEY (`username`) REFERENCES `enduser` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidding`
--

LOCK TABLES `bidding` WRITE;
/*!40000 ALTER TABLE `bidding` DISABLE KEYS */;
INSERT INTO `bidding` VALUES (1,1,'sammed',800,NULL,4000,NULL),(2,1,'tanyasharma',1700,NULL,2200,NULL),(3,2,'sammed',800,NULL,4000,NULL),(4,2,'tanyasharma',1700,NULL,2200,NULL),(5,5,'sammed',800,NULL,4000,NULL),(6,7,'tanyasharma',1700,NULL,2200,NULL),(7,7,'sammed',800,NULL,4000,NULL),(8,8,'sammed',800,NULL,4000,NULL),(9,8,'tanyasharma',1700,NULL,2200,NULL),(10,9,'sammed',800,NULL,4000,NULL),(11,9,'tanyasharma',1700,NULL,2200,NULL),(12,10,'sammed',800,NULL,4000,NULL),(13,11,'sammed',800,NULL,4000,NULL),(14,11,'tanyasharma',1700,NULL,2200,NULL),(15,12,'sammed',800,NULL,4000,NULL),(16,12,'tanyasharma',1700,NULL,2200,NULL),(17,13,'sammed',800,NULL,4000,NULL),(18,13,'tanyasharma',1700,NULL,2200,NULL),(19,15,'sammed',800,NULL,4000,NULL),(20,15,'tanyasharma',1700,NULL,2200,NULL),(21,16,'sammed',800,NULL,4000,NULL),(22,17,'sammed',800,NULL,4000,NULL),(23,20,'sammed',800,NULL,4000,NULL),(24,20,'tanyasharma',1700,NULL,2200,NULL),(25,22,'sammed',800,NULL,4000,NULL),(26,22,'tanyasharma',1700,NULL,2200,NULL),(27,22,'jay',4100,NULL,4100,NULL),(28,23,'sammed',800,NULL,4000,NULL),(29,23,'jay',4100,NULL,4100,NULL),(30,23,'tanyasharma',1700,NULL,2200,NULL),(31,25,'tanyasharma',1700,NULL,2200,NULL),(32,25,'jay',4100,NULL,4100,NULL),(33,25,'sammed',800,NULL,4000,NULL),(34,26,'sammed',800,NULL,4000,NULL),(35,26,'jay',4100,NULL,4100,NULL),(36,26,'tanyasharma',1700,NULL,2200,NULL),(37,28,'sammed',800,NULL,4000,NULL),(38,28,'tanyasharma',1700,NULL,2200,NULL),(39,28,'jay',4100,NULL,4100,NULL),(40,29,'jay',4100,NULL,4100,NULL),(41,29,'sammed',800,NULL,4000,NULL),(42,29,'tanyasharma',1700,NULL,2200,NULL),(43,30,'sammed',800,NULL,4000,NULL),(44,31,'sammed',800,NULL,4000,NULL),(45,31,'jay',4100,NULL,4100,NULL),(46,31,'tanyasharma',1700,NULL,2200,NULL),(47,32,'tanyasharma',1700,NULL,2200,NULL),(48,32,'sammed',800,NULL,4000,NULL),(49,32,'jay',4100,NULL,4100,NULL),(50,33,'jay',4100,NULL,4100,NULL),(51,34,'jay',4100,NULL,4100,NULL),(52,34,'sammed',800,NULL,4000,NULL),(53,34,'tanyasharma',1700,NULL,2200,NULL),(54,35,'tanyasharma',103,NULL,200,NULL),(55,35,'sammed',800,NULL,4000,NULL),(56,35,'jay',4100,NULL,4100,NULL),(57,37,'sammed',103,NULL,200,10);
/*!40000 ALTER TABLE `bidding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryName` varchar(32) NOT NULL,
  PRIMARY KEY (`categoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Furnitures'),('Kids'),('Mens'),('Womens');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enduser`
--

DROP TABLE IF EXISTS `enduser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enduser` (
  `username` varchar(30) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phoneNo` char(10) DEFAULT NULL,
  `emailId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enduser`
--

LOCK TABLES `enduser` WRITE;
/*!40000 ALTER TABLE `enduser` DISABLE KEYS */;
INSERT INTO `enduser` VALUES ('jay','Jay','Patil','5d773c82f05d130bbc743c00250ac317','2023-04-25','1 Richmond St','9999999991','jaysp02121997@gmail.com'),('sammed','Sammed','Admuthe','5f4dcc3b5aa765d61d8327deb882cf99','1998-12-18','1 Richmond Street','9999999999','admuthesammed@gmail.com'),('tanyasharma','Tanya','Sharma','5f4dcc3b5aa765d61d8327deb882cf99',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enduser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `dimensions` varchar(20) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `productImages` varchar(200) DEFAULT NULL,
  `categoryName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `username` (`username`),
  KEY `categoryName` (`categoryName`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`username`) REFERENCES `enduser` (`username`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryName`) REFERENCES `category` (`categoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Car','tanyasharma',NULL,NULL,NULL,'Mens'),(2,'Table','sammed',NULL,NULL,NULL,'Mens'),(3,'Clothes','sammed',NULL,NULL,NULL,'Mens'),(4,'Tables','sammed',NULL,NULL,NULL,'Mens'),(5,'Iphone','sammed',NULL,NULL,NULL,'Mens'),(6,'Tablet','sammed',NULL,NULL,NULL,'Mens'),(7,'Study Table','tanyasharma',NULL,NULL,NULL,'Mens'),(8,'Mouse','sammed',NULL,NULL,NULL,'Mens'),(9,'Pants','sammed',NULL,NULL,NULL,'Mens'),(10,'Mouse Pad','sammed',NULL,NULL,NULL,'Mens'),(11,'Compass','sammed',NULL,NULL,NULL,'Kids'),(12,'laptops','sammed',NULL,NULL,NULL,'Kids'),(13,'Popeyes','sammed',NULL,NULL,NULL,'Kids'),(14,'Popeyes','sammed',NULL,NULL,NULL,'Kids'),(15,'Cup','sammed',NULL,NULL,NULL,'Mens'),(16,'Apple Watch','sammed',NULL,NULL,NULL,'Mens'),(17,'Tesla','sammed',NULL,NULL,NULL,'Womens'),(18,'BMW','sammed',NULL,NULL,NULL,'Kids'),(19,'Audi Car','sammed',NULL,NULL,NULL,'Mens'),(20,'Gucci Bag','sammed',NULL,NULL,NULL,'Mens'),(21,'Logitec Goodies','sammed',NULL,NULL,NULL,'Mens'),(22,'Purse','sammed',NULL,NULL,NULL,'Womens'),(23,'Telephone','sammed',NULL,NULL,NULL,'Mens'),(25,'test','tanyasharma',NULL,NULL,NULL,'Mens'),(26,'test1','tanyasharma',NULL,NULL,NULL,'Mens'),(27,'table','sammed',NULL,NULL,NULL,'Mens'),(28,'table','sammed',NULL,NULL,NULL,'Mens'),(29,'chair','sammed',NULL,NULL,NULL,'Mens'),(32,'Zebra Toy','jay',NULL,NULL,NULL,'Kids'),(33,'Pens','sammed',NULL,NULL,NULL,'Mens'),(34,'Screw Driver KIT','sammed',NULL,NULL,NULL,'Mens'),(35,'X bow','tanyasharma',NULL,NULL,NULL,'Kids'),(36,'Cards','jay',NULL,NULL,NULL,'Mens'),(37,'Macbook','jay',NULL,NULL,NULL,'Mens'),(38,'Gucci Shoes','tanyasharma',NULL,NULL,NULL,'Mens'),(39,' AirPods Pro Max Ultra','sammed',NULL,NULL,NULL,'Mens'),(40,'AirPods Pro Gen 2','sammed',NULL,NULL,NULL,'Mens');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF`
--

DROP TABLE IF EXISTS `STAFF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF` (
  `username` varchar(30) NOT NULL,
  `isAdmin` int DEFAULT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF`
--

LOCK TABLES `STAFF` WRITE;
/*!40000 ALTER TABLE `STAFF` DISABLE KEYS */;
INSERT INTO `STAFF` VALUES ('userone',0,'USER','ONE','34819d7beeabb9260a5c854bc85b3e44');
/*!40000 ALTER TABLE `STAFF` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28 14:35:47
