-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: pim_database
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `application_logs`
--

DROP TABLE IF EXISTS `application_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `message` text,
  `priority` enum('emergency','alert','critical','error','warning','notice','info','debug') DEFAULT NULL,
  `fileobject` varchar(1024) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL,
  `component` varchar(190) DEFAULT NULL,
  `source` varchar(190) DEFAULT NULL,
  `relatedobject` int unsigned DEFAULT NULL,
  `relatedobjecttype` enum('object','document','asset') DEFAULT NULL,
  `maintenanceChecked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component` (`component`),
  KEY `timestamp` (`timestamp`),
  KEY `relatedobject` (`relatedobject`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_logs`
--

LOCK TABLES `application_logs` WRITE;
/*!40000 ALTER TABLE `application_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mimetype` varchar(190) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  `customSettings` longtext,
  `hasMetaData` tinyint(1) NOT NULL DEFAULT '0',
  `versionCount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullpath` (`path`,`filename`),
  KEY `parentId` (`parentId`),
  KEY `filename` (`filename`),
  KEY `modificationDate` (`modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,0,'folder','','/',NULL,1612789241,1612789241,1,1,NULL,0,0),(2,1,'folder','images','/',NULL,1613311050,1613311050,2,2,'a:0:{}',0,1),(3,2,'image','a1.jpg','/images/','image/jpeg',1613311167,1613311167,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:48:\"asset_3_9a35171cdcda97faf0c5774f9932e49d__a1.jpg\";s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(4,2,'image','a9.jpg','/images/','image/jpeg',1613311166,1613311166,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:225;s:11:\"imageHeight\";i:225;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:48:\"asset_4_42365dc1227ef850f598b6015fc13442__a9.jpg\";s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:5947;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(6,2,'image','a10.jpeg','/images/','image/jpeg',1613311167,1613311167,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:220;s:11:\"imageHeight\";i:258;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:8968;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(7,2,'image','jeans1.jpg','/images/','image/jpeg',1613311167,1613311167,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1000;s:11:\"imageHeight\";i:1500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:113244;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(8,2,'image','jeans2.jpg','/images/','image/jpeg',1613311168,1613311168,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:683;s:11:\"imageHeight\";i:1024;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:43655;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(9,2,'image','jeans4.jpg','/images/','image/jpeg',1613311169,1613311169,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:855;s:11:\"imageHeight\";i:1200;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:51415;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(10,2,'image','jeans3.jpg','/images/','image/jpeg',1613311169,1613311169,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:800;s:11:\"imageHeight\";i:800;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:61547;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(11,2,'image','m.jpeg','/images/','image/jpeg',1613311170,1613311170,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:531;s:11:\"imageHeight\";i:1280;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:49:\"asset_11_8a673a3edd57730ad07f01cfb7eed041__m.jpeg\";s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:53182;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(12,2,'image','shirt3.jpg','/images/','image/jpeg',1613311170,1613311170,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:450;s:11:\"imageHeight\";i:600;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:56825;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(13,2,'image','shirt1.jpg','/images/','image/jpeg',1613311171,1613311171,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1500;s:11:\"imageHeight\";i:1500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:215325;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(14,2,'image','shirt2.jpg','/images/','image/jpeg',1613311172,1613311172,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:26321;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(15,2,'image','shirt4.jpg','/images/','image/jpeg',1613311172,1613311172,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:850;s:11:\"imageHeight\";i:852;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311172;s:8:\"FileSize\";i:25776;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(16,1,'folder','_default_upload_bucket','/',NULL,1613312659,1613312659,1,0,'a:0:{}',0,1),(17,16,'image','a1.jpg','/_default_upload_bucket/','image/jpeg',1613312660,1613312660,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:49:\"asset_17_8f9a5625803b37da5e79ec47b00a3638__a1.jpg\";s:12:\"FileDateTime\";i:1613312660;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(18,16,'image','a2.jpg','/_default_upload_bucket/','image/jpeg',1613312701,1613312701,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:49:\"asset_18_cdbec7f8156bcd81114c757442ea09c4__a2.jpg\";s:12:\"FileDateTime\";i:1613312701;s:8:\"FileSize\";i:48040;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(19,16,'image','a1_1.jpg','/_default_upload_bucket/','image/jpeg',1613373945,1613373945,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613373945;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1),(20,16,'unknown','cat.json','/_default_upload_bucket/','application/json',1613650862,1613650862,2,2,'a:0:{}',0,1),(21,16,'image','a1_2.jpg','/_default_upload_bucket/','image/jpeg',1613673427,1613673427,2,2,'a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613673426;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}',0,1);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_metadata`
--

DROP TABLE IF EXISTS `assets_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets_metadata` (
  `cid` int NOT NULL,
  `name` varchar(190) NOT NULL,
  `language` varchar(10) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `type` enum('input','textarea','asset','document','object','date','select','checkbox') DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`cid`,`name`,`language`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_metadata`
--

LOCK TABLES `assets_metadata` WRITE;
/*!40000 ALTER TABLE `assets_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `id` varchar(165) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `data` longblob,
  `mtime` int unsigned DEFAULT NULL,
  `expire` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('asset_1',_binary 's:574:\"O:26:\"Pimcore\\Model\\Asset\\Folder\":20:{s:7:\"\0*\0type\";s:6:\"folder\";s:5:\"\0*\0id\";i:1;s:11:\"\0*\0parentId\";i:0;s:11:\"\0*\0filename\";s:0:\"\";s:7:\"\0*\0path\";s:1:\"/\";s:11:\"\0*\0mimetype\";N;s:15:\"\0*\0creationDate\";i:1612789241;s:19:\"\0*\0modificationDate\";i:1612789241;s:12:\"\0*\0userOwner\";i:1;s:19:\"\0*\0userModification\";i:1;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:0:{}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:0;s:25:\"\0*\0__dataVersionTimestamp\";i:1612789241;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930064,1616349263),('asset_10',_binary 's:896:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:10;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"jeans3.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311169;s:19:\"\0*\0modificationDate\";i:1613311169;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:800;s:11:\"imageHeight\";i:800;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:61547;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311169;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_11',_binary 's:964:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:11;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:6:\"m.jpeg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311170;s:19:\"\0*\0modificationDate\";i:1613311170;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:531;s:11:\"imageHeight\";i:1280;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:49:\"asset_11_8a673a3edd57730ad07f01cfb7eed041__m.jpeg\";s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:53182;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311170;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_12',_binary 's:896:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:12;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"shirt3.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311170;s:19:\"\0*\0modificationDate\";i:1613311170;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:450;s:11:\"imageHeight\";i:600;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:56825;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311170;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_13',_binary 's:899:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:13;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"shirt1.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311171;s:19:\"\0*\0modificationDate\";i:1613311171;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1500;s:11:\"imageHeight\";i:1500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:215325;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311171;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_14',_binary 's:896:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:14;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"shirt2.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311172;s:19:\"\0*\0modificationDate\";i:1613311172;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:26321;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311172;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_15',_binary 's:896:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:15;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"shirt4.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311172;s:19:\"\0*\0modificationDate\";i:1613311172;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:850;s:11:\"imageHeight\";i:852;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311172;s:8:\"FileSize\";i:25776;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311172;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_16',_binary 's:598:\"O:26:\"Pimcore\\Model\\Asset\\Folder\":20:{s:7:\"\0*\0type\";s:6:\"folder\";s:5:\"\0*\0id\";i:16;s:11:\"\0*\0parentId\";i:1;s:11:\"\0*\0filename\";s:22:\"_default_upload_bucket\";s:7:\"\0*\0path\";s:1:\"/\";s:11:\"\0*\0mimetype\";N;s:15:\"\0*\0creationDate\";i:1613312659;s:19:\"\0*\0modificationDate\";i:1613312659;s:12:\"\0*\0userOwner\";i:1;s:19:\"\0*\0userModification\";i:0;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:0:{}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613312659;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_17',_binary 's:981:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:17;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:6:\"a1.jpg\";s:7:\"\0*\0path\";s:24:\"/_default_upload_bucket/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613312660;s:19:\"\0*\0modificationDate\";i:1613312660;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:49:\"asset_17_8f9a5625803b37da5e79ec47b00a3638__a1.jpg\";s:12:\"FileDateTime\";i:1613312660;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613312660;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_18',_binary 's:981:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:18;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:6:\"a2.jpg\";s:7:\"\0*\0path\";s:24:\"/_default_upload_bucket/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613312701;s:19:\"\0*\0modificationDate\";i:1613312701;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:49:\"asset_18_cdbec7f8156bcd81114c757442ea09c4__a2.jpg\";s:12:\"FileDateTime\";i:1613312701;s:8:\"FileSize\";i:48040;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613312701;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_19',_binary 's:911:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:19;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:8:\"a1_1.jpg\";s:7:\"\0*\0path\";s:24:\"/_default_upload_bucket/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613373945;s:19:\"\0*\0modificationDate\";i:1613373945;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613373945;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613373945;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_2',_binary 's:580:\"O:26:\"Pimcore\\Model\\Asset\\Folder\":20:{s:7:\"\0*\0type\";s:6:\"folder\";s:5:\"\0*\0id\";i:2;s:11:\"\0*\0parentId\";i:1;s:11:\"\0*\0filename\";s:6:\"images\";s:7:\"\0*\0path\";s:1:\"/\";s:11:\"\0*\0mimetype\";N;s:15:\"\0*\0creationDate\";i:1613311050;s:19:\"\0*\0modificationDate\";i:1613311050;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:0:{}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311050;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_21',_binary 's:911:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:21;s:11:\"\0*\0parentId\";i:16;s:11:\"\0*\0filename\";s:8:\"a1_2.jpg\";s:7:\"\0*\0path\";s:24:\"/_default_upload_bucket/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613673427;s:19:\"\0*\0modificationDate\";i:1613673427;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613673426;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613673427;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_3',_binary 's:961:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:3;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:6:\"a1.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311167;s:19:\"\0*\0modificationDate\";i:1613311167;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:500;s:11:\"imageHeight\";i:500;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:48:\"asset_3_9a35171cdcda97faf0c5774f9932e49d__a1.jpg\";s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:38515;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311167;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_4',_binary 's:960:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:6:\"a9.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311166;s:19:\"\0*\0modificationDate\";i:1613311166;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:225;s:11:\"imageHeight\";i:225;s:16:\"embeddedMetaData\";a:6:{s:8:\"FileName\";s:48:\"asset_4_42365dc1227ef850f598b6015fc13442__a9.jpg\";s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:5947;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311166;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_6',_binary 's:891:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:6;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:8:\"a10.jpeg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311167;s:19:\"\0*\0modificationDate\";i:1613311167;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:220;s:11:\"imageHeight\";i:258;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:8968;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311167;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_7',_binary 's:898:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:7;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"jeans1.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311167;s:19:\"\0*\0modificationDate\";i:1613311167;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:1000;s:11:\"imageHeight\";i:1500;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:113244;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311167;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_8',_binary 's:896:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:8;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"jeans2.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311168;s:19:\"\0*\0modificationDate\";i:1613311168;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:683;s:11:\"imageHeight\";i:1024;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311166;s:8:\"FileSize\";i:43655;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311168;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('asset_9',_binary 's:896:\"O:25:\"Pimcore\\Model\\Asset\\Image\":20:{s:7:\"\0*\0type\";s:5:\"image\";s:5:\"\0*\0id\";i:9;s:11:\"\0*\0parentId\";i:2;s:11:\"\0*\0filename\";s:10:\"jeans4.jpg\";s:7:\"\0*\0path\";s:8:\"/images/\";s:11:\"\0*\0mimetype\";s:10:\"image/jpeg\";s:15:\"\0*\0creationDate\";i:1613311169;s:19:\"\0*\0modificationDate\";i:1613311169;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0metadata\";a:0:{}s:9:\"\0*\0locked\";N;s:17:\"\0*\0customSettings\";a:5:{s:25:\"imageDimensionsCalculated\";b:1;s:10:\"imageWidth\";i:855;s:11:\"imageHeight\";i:1200;s:16:\"embeddedMetaData\";a:5:{s:12:\"FileDateTime\";i:1613311169;s:8:\"FileSize\";i:51415;s:8:\"FileType\";i:2;s:8:\"MimeType\";s:10:\"image/jpeg\";s:13:\"SectionsFound\";s:0:\"\";}s:25:\"embeddedMetaDataExtracted\";b:1;}s:14:\"\0*\0hasMetaData\";b:0;s:11:\"\0*\0siblings\";N;s:14:\"\0*\0hasSiblings\";N;s:15:\"\0*\0_dataChanged\";b:0;s:15:\"\0*\0versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613311169;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349264),('document_1',_binary 's:886:\"O:27:\"Pimcore\\Model\\Document\\Page\":31:{s:8:\"\0*\0title\";s:0:\"\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";N;s:13:\"\0*\0controller\";s:7:\"default\";s:9:\"\0*\0action\";s:7:\"default\";s:11:\"\0*\0template\";s:0:\"\";s:11:\"\0*\0elements\";N;s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:1;s:11:\"\0*\0parentId\";i:0;s:6:\"\0*\0key\";s:0:\"\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:999999;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1612789241;s:19:\"\0*\0modificationDate\";i:1612789241;s:12:\"\0*\0userOwner\";i:1;s:19:\"\0*\0userModification\";i:1;s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:0;s:25:\"\0*\0__dataVersionTimestamp\";i:1612789241;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930060,1616349259),('document_4',_binary 's:948:\"O:27:\"Pimcore\\Model\\Document\\Page\":31:{s:8:\"\0*\0title\";s:11:\"productpage\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";s:9:\"AppBundle\";s:13:\"\0*\0controller\";s:39:\"@AppBundle\\Controller\\ContentController\";s:9:\"\0*\0action\";s:7:\"product\";s:11:\"\0*\0template\";N;s:11:\"\0*\0elements\";N;s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:1;s:6:\"\0*\0key\";s:11:\"productpage\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:1;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1613671508;s:19:\"\0*\0modificationDate\";i:1613840532;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:16;s:25:\"\0*\0__dataVersionTimestamp\";i:1613840532;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930069,1616349269),('document_properties_1',_binary 's:6:\"a:0:{}\";',1613930060,1616349259),('document_properties_4',_binary 's:272:\"a:1:{s:15:\"navigation_name\";O:22:\"Pimcore\\Model\\Property\":8:{s:7:\"\0*\0name\";s:15:\"navigation_name\";s:7:\"\0*\0data\";s:11:\"productpage\";s:7:\"\0*\0type\";s:4:\"text\";s:8:\"\0*\0ctype\";s:8:\"document\";s:8:\"\0*\0cpath\";N;s:6:\"\0*\0cid\";i:4;s:14:\"\0*\0inheritable\";b:0;s:12:\"\0*\0inherited\";b:0;}}\";',1613930064,1616349264),('object_1',_binary 's:598:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:1;s:13:\"\0*\0o_parentId\";i:0;s:8:\"\0*\0o_key\";s:0:\"\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:999999;s:17:\"\0*\0o_creationDate\";i:1612789241;s:21:\"\0*\0o_modificationDate\";i:1612789241;s:14:\"\0*\0o_userOwner\";i:1;s:21:\"\0*\0o_userModification\";i:1;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:0;s:25:\"\0*\0__dataVersionTimestamp\";i:1612789241;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930064,1616349263),('object_11',_binary 's:1289:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:6:\"monday\";s:14:\"\0*\0description\";N;s:7:\"\0*\0size\";s:0:\"\";s:6:\"\0*\0sku\";N;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";N;s:9:\"\0*\0fabric\";N;s:8:\"\0*\0price\";N;s:8:\"\0*\0brand\";N;s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";N;s:10:\"\0*\0sleeves\";N;s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";N;s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:11;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:11;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:12:\"formalShirt1\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613064617;s:21:\"\0*\0o_modificationDate\";i:1613411125;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613411125;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_14',_binary 's:600:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:14;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:6:\"fabric\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613119178;s:21:\"\0*\0o_modificationDate\";i:1613119178;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613119178;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349265),('object_18',_binary 's:599:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:18;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:5:\"Brand\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613119835;s:21:\"\0*\0o_modificationDate\";i:1613119835;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613119835;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349265),('object_2',_binary 's:601:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:2;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:8:\"category\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613053727;s:21:\"\0*\0o_modificationDate\";i:1613053726;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613053726;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349265),('object_21',_binary 's:1984:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:12:\"Formal Shirt\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:12236;s:8:\"\0*\0color\";O:39:\"Pimcore\\Model\\DataObject\\Data\\RgbaColor\":7:{s:4:\"\0*\0r\";i:143;s:4:\"\0*\0g\";i:184;s:4:\"\0*\0b\";i:239;s:4:\"\0*\0a\";i:255;s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";N;s:8:\"\0*\0price\";d:500;s:8:\"\0*\0brand\";s:13:\"Louis Vuitton\";s:10:\"\0*\0pockets\";d:2;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";N;s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:21;}s:20:\"\0*\0__rawRelationData\";a:2:{i:0;a:9:{s:2:\"id\";s:1:\"6\";s:6:\"src_id\";s:2:\"21\";s:7:\"dest_id\";s:2:\"15\";s:4:\"type\";s:6:\"object\";s:9:\"fieldname\";s:6:\"fabric\";s:5:\"index\";s:1:\"0\";s:9:\"ownertype\";s:6:\"object\";s:9:\"ownername\";s:0:\"\";s:8:\"position\";s:1:\"0\";}i:1;a:9:{s:2:\"id\";s:1:\"7\";s:6:\"src_id\";s:2:\"21\";s:7:\"dest_id\";s:1:\"6\";s:4:\"type\";s:6:\"object\";s:9:\"fieldname\";s:8:\"category\";s:5:\"index\";s:1:\"0\";s:9:\"ownertype\";s:6:\"object\";s:9:\"ownername\";s:0:\"\";s:8:\"position\";s:1:\"0\";}}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:21;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:12:\"Formal Shirt\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613120135;s:21:\"\0*\0o_modificationDate\";i:1613306454;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:3;s:25:\"\0*\0__dataVersionTimestamp\";i:1613306454;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_22',_binary 's:1958:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:12:\"Casual Shirt\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:0:\"\";s:6:\"\0*\0sku\";i:565464;s:8:\"\0*\0color\";O:39:\"Pimcore\\Model\\DataObject\\Data\\RgbaColor\":7:{s:4:\"\0*\0r\";i:121;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";i:255;s:9:\"\0*\0_owner\";N;s:13:\"\0*\0_fieldname\";N;s:12:\"\0*\0_language\";N;}s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";N;s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";N;s:10:\"\0*\0pockets\";d:2;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";N;s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:22;}s:20:\"\0*\0__rawRelationData\";a:2:{i:0;a:9:{s:2:\"id\";s:1:\"8\";s:6:\"src_id\";s:2:\"22\";s:7:\"dest_id\";s:1:\"5\";s:4:\"type\";s:6:\"object\";s:9:\"fieldname\";s:8:\"category\";s:5:\"index\";s:1:\"0\";s:9:\"ownertype\";s:6:\"object\";s:9:\"ownername\";s:0:\"\";s:8:\"position\";s:1:\"0\";}i:1;a:9:{s:2:\"id\";s:1:\"9\";s:6:\"src_id\";s:2:\"22\";s:7:\"dest_id\";s:2:\"21\";s:4:\"type\";s:5:\"asset\";s:9:\"fieldname\";s:5:\"image\";s:5:\"index\";s:1:\"0\";s:9:\"ownertype\";s:6:\"object\";s:9:\"ownername\";s:0:\"\";s:8:\"position\";s:1:\"0\";}}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:22;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:11:\"CasualShirt\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613286036;s:21:\"\0*\0o_modificationDate\";i:1613673435;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:3;s:25:\"\0*\0__dataVersionTimestamp\";i:1613673435;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_23',_binary 's:598:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:23;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:4:\"test\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613309415;s:21:\"\0*\0o_modificationDate\";i:1613309415;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613309415;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349265),('object_26',_binary 's:1293:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:5:\"shirt\";s:14:\"\0*\0description\";N;s:7:\"\0*\0size\";s:0:\"\";s:6:\"\0*\0sku\";N;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";N;s:9:\"\0*\0fabric\";s:0:\"\";s:8:\"\0*\0price\";N;s:8:\"\0*\0brand\";s:0:\"\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";N;s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:26;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:26;s:13:\"\0*\0o_parentId\";i:3;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:6:\"Shirtt\";s:9:\"\0*\0o_path\";s:9:\"/product/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613413138;s:21:\"\0*\0o_modificationDate\";i:1613413138;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613413138;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_27',_binary 's:1290:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:5:\"shirt\";s:14:\"\0*\0description\";N;s:7:\"\0*\0size\";s:0:\"\";s:6:\"\0*\0sku\";N;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";N;s:9:\"\0*\0fabric\";s:0:\"\";s:8:\"\0*\0price\";N;s:8:\"\0*\0brand\";s:0:\"\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";N;s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:27;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:27;s:13:\"\0*\0o_parentId\";i:3;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:3:\"new\";s:9:\"\0*\0o_path\";s:9:\"/product/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613413533;s:21:\"\0*\0o_modificationDate\";i:1613413533;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613413533;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_28',_binary 's:1337:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:12:\"Casual Shirt\";s:14:\"\0*\0description\";N;s:7:\"\0*\0size\";s:0:\"\";s:6:\"\0*\0sku\";i:15489;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:6:\"Female\";s:9:\"\0*\0fabric\";s:0:\"\";s:8:\"\0*\0price\";d:500;s:8:\"\0*\0brand\";s:0:\"\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:28;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:28;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:3:\"new\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613457384;s:21:\"\0*\0o_modificationDate\";i:1613457384;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613457384;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_3',_binary 's:600:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:3;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:7:\"product\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613053742;s:21:\"\0*\0o_modificationDate\";i:1613053742;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613053742;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349265),('object_44',_binary 's:1318:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:7:\"product\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:0:\"\";s:6:\"\0*\0sku\";N;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";N;s:9:\"\0*\0fabric\";s:0:\"\";s:8:\"\0*\0price\";N;s:8:\"\0*\0brand\";s:0:\"\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";N;s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:44;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:44;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:7:\"product\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613491023;s:21:\"\0*\0o_modificationDate\";i:1613491023;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613491023;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_45',_binary 's:1362:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product1\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:6:\"Cotton\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:45;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:45;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product1\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613493368;s:21:\"\0*\0o_modificationDate\";i:1613493368;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613493368;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_46',_binary 's:1362:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product2\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:6:\"cotton\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"gucci\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:46;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:46;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product2\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613493955;s:21:\"\0*\0o_modificationDate\";i:1613493955;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613493955;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_47',_binary 's:1362:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product3\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:6:\"cotton\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"gucci\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:47;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:47;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product3\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613494772;s:21:\"\0*\0o_modificationDate\";i:1613494772;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613494772;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_48',_binary 's:1362:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product4\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:6:\"cotton\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";N;s:12:\"\0*\0neckShape\";s:0:\"\";s:10:\"\0*\0sleeves\";s:0:\"\";s:9:\"\0*\0length\";N;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:48;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:48;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product4\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613494835;s:21:\"\0*\0o_modificationDate\";i:1613494835;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613494835;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_49',_binary 's:1387:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product5\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";N;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:9:\"Deep Neck\";s:10:\"\0*\0sleeves\";s:11:\"Full Sleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:49;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:49;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product5\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613495570;s:21:\"\0*\0o_modificationDate\";i:1613495570;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613495570;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_50',_binary 's:1389:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product6\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:9:\"Deep Neck\";s:10:\"\0*\0sleeves\";s:11:\"Full Sleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:50;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:50;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product6\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613495716;s:21:\"\0*\0o_modificationDate\";i:1613495716;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613495716;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_51',_binary 's:1388:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product7\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:11:\"Full Sleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:5:\"India\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:51;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:51;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product7\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613495851;s:21:\"\0*\0o_modificationDate\";i:1613495851;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613495851;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_52',_binary 's:1395:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product8\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:10:\"fullSleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:12:\"English (en)\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:52;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:52;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product8\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613495983;s:21:\"\0*\0o_modificationDate\";i:1613495983;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613495983;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_53',_binary 's:1393:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:8:\"product9\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:10:\"fullSleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:10:\"India (IN)\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:53;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:53;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:8:\"product9\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613496112;s:21:\"\0*\0o_modificationDate\";i:1613496112;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613496112;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_54',_binary 's:1395:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:9:\"product10\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:10:\"fullSleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:10:\"India (IN)\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:54;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:54;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:9:\"product10\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613496828;s:21:\"\0*\0o_modificationDate\";i:1613496828;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613496828;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_55',_binary 's:1395:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:9:\"product11\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:10:\"fullSleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:10:\"India (IN)\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:55;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:55;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:9:\"product11\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613497404;s:21:\"\0*\0o_modificationDate\";i:1613497404;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613497404;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_56',_binary 's:1395:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:9:\"product12\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:10:\"fullSleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:10:\"India (IN)\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:56;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:56;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:9:\"product12\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613497669;s:21:\"\0*\0o_modificationDate\";i:1613497669;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613497669;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_57',_binary 's:1395:\"O:32:\"Pimcore\\Model\\DataObject\\Product\":40:{s:12:\"\0*\0o_classId\";s:1:\"2\";s:14:\"\0*\0o_className\";s:7:\"product\";s:7:\"\0*\0name\";s:9:\"product13\";s:14:\"\0*\0description\";s:9:\"something\";s:7:\"\0*\0size\";s:1:\"M\";s:6:\"\0*\0sku\";i:454545;s:8:\"\0*\0color\";N;s:11:\"\0*\0discount\";d:0;s:9:\"\0*\0gender\";s:4:\"male\";s:9:\"\0*\0fabric\";s:5:\"Denim\";s:8:\"\0*\0price\";d:555;s:8:\"\0*\0brand\";s:5:\"Gucci\";s:10:\"\0*\0pockets\";d:4;s:12:\"\0*\0neckShape\";s:8:\"deepNeck\";s:10:\"\0*\0sleeves\";s:10:\"fullSleeve\";s:9:\"\0*\0length\";i:28;s:9:\"\0*\0madeIn\";s:10:\"India (IN)\";s:6:\"\0*\0faq\";N;s:17:\"\0*\0classification\";O:47:\"Pimcore\\Model\\DataObject\\Product\\Classification\":5:{s:15:\"\0*\0brickGetters\";a:1:{i:0;s:5:\"shirt\";}s:8:\"\0*\0shirt\";N;s:8:\"\0*\0items\";a:0:{}s:12:\"\0*\0fieldname\";s:14:\"classification\";s:11:\"\0*\0objectId\";i:57;}s:20:\"\0*\0__rawRelationData\";a:0:{}s:14:\"\0*\0o_published\";b:1;s:7:\"\0*\0o_id\";i:57;s:13:\"\0*\0o_parentId\";i:10;s:9:\"\0*\0o_type\";s:6:\"object\";s:8:\"\0*\0o_key\";s:9:\"product13\";s:9:\"\0*\0o_path\";s:15:\"/product/shirt/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613497784;s:21:\"\0*\0o_modificationDate\";i:1613497784;s:14:\"\0*\0o_userOwner\";i:0;s:21:\"\0*\0o_userModification\";i:0;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:1;s:25:\"\0*\0__dataVersionTimestamp\";i:1613497784;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930072,1616349271),('object_58',_binary 's:600:\"O:31:\"Pimcore\\Model\\DataObject\\Folder\":19:{s:9:\"\0*\0o_type\";s:6:\"folder\";s:7:\"\0*\0o_id\";i:58;s:13:\"\0*\0o_parentId\";i:1;s:8:\"\0*\0o_key\";s:6:\"import\";s:9:\"\0*\0o_path\";s:1:\"/\";s:10:\"\0*\0o_index\";i:0;s:17:\"\0*\0o_creationDate\";i:1613650536;s:21:\"\0*\0o_modificationDate\";i:1613650534;s:14:\"\0*\0o_userOwner\";i:2;s:21:\"\0*\0o_userModification\";i:2;s:13:\"\0*\0o_siblings\";a:0:{}s:16:\"\0*\0o_hasSiblings\";a:0:{}s:11:\"\0*\0o_locked\";N;s:22:\"\0*\0o_elementAdminStyle\";N;s:19:\"\0*\0o_childrenSortBy\";N;s:22:\"\0*\0o_childrenSortOrder\";N;s:17:\"\0*\0o_versionCount\";i:2;s:25:\"\0*\0__dataVersionTimestamp\";i:1613650534;s:12:\"\0*\0_fulldump\";b:0;}\";',1613930065,1616349265),('site_domain_c8371b9b3c918c1a6862c681c3c6d7af',_binary 's:13:\"s:6:\"failed\";\";',1613930060,1616349258),('system_resource_columns_edit_lock',_binary 's:101:\"a:6:{i:0;s:2:\"id\";i:1;s:3:\"cid\";i:2;s:5:\"ctype\";i:3;s:6:\"userId\";i:4;s:9:\"sessionId\";i:5;s:4:\"date\";}\";',1613930069,1616349269),('system_route_redirect',_binary 's:6:\"a:0:{}\";',1613930058,1616349258),('system_supported_locales_en',_binary 's:26248:\"a:751:{s:2:\"af\";s:9:\"Afrikaans\";s:5:\"af_NA\";s:19:\"Afrikaans (Namibia)\";s:5:\"af_ZA\";s:24:\"Afrikaans (South Africa)\";s:3:\"agq\";s:5:\"Aghem\";s:6:\"agq_CM\";s:16:\"Aghem (Cameroon)\";s:2:\"ak\";s:4:\"Akan\";s:5:\"ak_GH\";s:12:\"Akan (Ghana)\";s:2:\"sq\";s:8:\"Albanian\";s:5:\"sq_AL\";s:18:\"Albanian (Albania)\";s:5:\"sq_XK\";s:17:\"Albanian (Kosovo)\";s:5:\"sq_MK\";s:26:\"Albanian (North Macedonia)\";s:2:\"am\";s:7:\"Amharic\";s:5:\"am_ET\";s:18:\"Amharic (Ethiopia)\";s:2:\"ar\";s:6:\"Arabic\";s:5:\"ar_DZ\";s:16:\"Arabic (Algeria)\";s:5:\"ar_BH\";s:16:\"Arabic (Bahrain)\";s:5:\"ar_TD\";s:13:\"Arabic (Chad)\";s:5:\"ar_KM\";s:16:\"Arabic (Comoros)\";s:5:\"ar_DJ\";s:17:\"Arabic (Djibouti)\";s:5:\"ar_EG\";s:14:\"Arabic (Egypt)\";s:5:\"ar_ER\";s:16:\"Arabic (Eritrea)\";s:5:\"ar_IQ\";s:13:\"Arabic (Iraq)\";s:5:\"ar_IL\";s:15:\"Arabic (Israel)\";s:5:\"ar_JO\";s:15:\"Arabic (Jordan)\";s:5:\"ar_KW\";s:15:\"Arabic (Kuwait)\";s:5:\"ar_LB\";s:16:\"Arabic (Lebanon)\";s:5:\"ar_LY\";s:14:\"Arabic (Libya)\";s:5:\"ar_MR\";s:19:\"Arabic (Mauritania)\";s:5:\"ar_MA\";s:16:\"Arabic (Morocco)\";s:5:\"ar_OM\";s:13:\"Arabic (Oman)\";s:5:\"ar_PS\";s:32:\"Arabic (Palestinian Territories)\";s:5:\"ar_QA\";s:14:\"Arabic (Qatar)\";s:5:\"ar_SA\";s:21:\"Arabic (Saudi Arabia)\";s:5:\"ar_SO\";s:16:\"Arabic (Somalia)\";s:5:\"ar_SS\";s:20:\"Arabic (South Sudan)\";s:5:\"ar_SD\";s:14:\"Arabic (Sudan)\";s:5:\"ar_SY\";s:14:\"Arabic (Syria)\";s:5:\"ar_TN\";s:16:\"Arabic (Tunisia)\";s:5:\"ar_AE\";s:29:\"Arabic (United Arab Emirates)\";s:5:\"ar_EH\";s:23:\"Arabic (Western Sahara)\";s:6:\"ar_001\";s:14:\"Arabic (World)\";s:5:\"ar_YE\";s:14:\"Arabic (Yemen)\";s:2:\"hy\";s:8:\"Armenian\";s:5:\"hy_AM\";s:18:\"Armenian (Armenia)\";s:2:\"as\";s:8:\"Assamese\";s:5:\"as_IN\";s:16:\"Assamese (India)\";s:3:\"ast\";s:8:\"Asturian\";s:6:\"ast_ES\";s:16:\"Asturian (Spain)\";s:3:\"asa\";s:3:\"Asu\";s:6:\"asa_TZ\";s:14:\"Asu (Tanzania)\";s:2:\"az\";s:11:\"Azerbaijani\";s:7:\"az_Latn\";s:11:\"Azerbaijani\";s:7:\"az_Cyrl\";s:11:\"Azerbaijani\";s:10:\"az_Latn_AZ\";s:24:\"Azerbaijani (Azerbaijan)\";s:10:\"az_Cyrl_AZ\";s:24:\"Azerbaijani (Azerbaijan)\";s:3:\"ksf\";s:5:\"Bafia\";s:6:\"ksf_CM\";s:16:\"Bafia (Cameroon)\";s:2:\"bm\";s:7:\"Bambara\";s:5:\"bm_ML\";s:14:\"Bambara (Mali)\";s:2:\"bn\";s:6:\"Bangla\";s:5:\"bn_BD\";s:19:\"Bangla (Bangladesh)\";s:5:\"bn_IN\";s:14:\"Bangla (India)\";s:3:\"bas\";s:5:\"Basaa\";s:6:\"bas_CM\";s:16:\"Basaa (Cameroon)\";s:2:\"eu\";s:6:\"Basque\";s:5:\"eu_ES\";s:14:\"Basque (Spain)\";s:2:\"be\";s:10:\"Belarusian\";s:5:\"be_BY\";s:20:\"Belarusian (Belarus)\";s:3:\"bem\";s:5:\"Bemba\";s:6:\"bem_ZM\";s:14:\"Bemba (Zambia)\";s:3:\"bez\";s:4:\"Bena\";s:6:\"bez_TZ\";s:15:\"Bena (Tanzania)\";s:3:\"brx\";s:4:\"Bodo\";s:6:\"brx_IN\";s:12:\"Bodo (India)\";s:2:\"bs\";s:7:\"Bosnian\";s:7:\"bs_Cyrl\";s:7:\"Bosnian\";s:7:\"bs_Latn\";s:7:\"Bosnian\";s:10:\"bs_Cyrl_BA\";s:30:\"Bosnian (Bosnia & Herzegovina)\";s:10:\"bs_Latn_BA\";s:30:\"Bosnian (Bosnia & Herzegovina)\";s:2:\"br\";s:6:\"Breton\";s:5:\"br_FR\";s:15:\"Breton (France)\";s:2:\"bg\";s:9:\"Bulgarian\";s:5:\"bg_BG\";s:20:\"Bulgarian (Bulgaria)\";s:2:\"my\";s:7:\"Burmese\";s:5:\"my_MM\";s:25:\"Burmese (Myanmar (Burma))\";s:3:\"yue\";s:9:\"Cantonese\";s:8:\"yue_Hans\";s:9:\"Cantonese\";s:8:\"yue_Hant\";s:9:\"Cantonese\";s:11:\"yue_Hans_CN\";s:17:\"Cantonese (China)\";s:11:\"yue_Hant_HK\";s:31:\"Cantonese (Hong Kong SAR China)\";s:2:\"ca\";s:7:\"Catalan\";s:5:\"ca_AD\";s:17:\"Catalan (Andorra)\";s:5:\"ca_FR\";s:16:\"Catalan (France)\";s:5:\"ca_IT\";s:15:\"Catalan (Italy)\";s:5:\"ca_ES\";s:15:\"Catalan (Spain)\";s:3:\"ceb\";s:7:\"Cebuano\";s:6:\"ceb_PH\";s:21:\"Cebuano (Philippines)\";s:3:\"tzm\";s:23:\"Central Atlas Tamazight\";s:6:\"tzm_MA\";s:33:\"Central Atlas Tamazight (Morocco)\";s:3:\"ckb\";s:15:\"Central Kurdish\";s:6:\"ckb_IR\";s:22:\"Central Kurdish (Iran)\";s:6:\"ckb_IQ\";s:22:\"Central Kurdish (Iraq)\";s:3:\"ccp\";s:6:\"Chakma\";s:6:\"ccp_BD\";s:19:\"Chakma (Bangladesh)\";s:6:\"ccp_IN\";s:14:\"Chakma (India)\";s:2:\"ce\";s:7:\"Chechen\";s:5:\"ce_RU\";s:16:\"Chechen (Russia)\";s:3:\"chr\";s:8:\"Cherokee\";s:6:\"chr_US\";s:24:\"Cherokee (United States)\";s:3:\"cgg\";s:5:\"Chiga\";s:6:\"cgg_UG\";s:14:\"Chiga (Uganda)\";s:7:\"zh_Hans\";s:7:\"Chinese\";s:7:\"zh_Hant\";s:7:\"Chinese\";s:2:\"zh\";s:7:\"Chinese\";s:10:\"zh_Hans_CN\";s:15:\"Chinese (China)\";s:10:\"zh_Hans_HK\";s:29:\"Chinese (Hong Kong SAR China)\";s:10:\"zh_Hant_HK\";s:29:\"Chinese (Hong Kong SAR China)\";s:10:\"zh_Hant_MO\";s:25:\"Chinese (Macao SAR China)\";s:10:\"zh_Hans_MO\";s:25:\"Chinese (Macao SAR China)\";s:10:\"zh_Hans_SG\";s:19:\"Chinese (Singapore)\";s:10:\"zh_Hant_TW\";s:16:\"Chinese (Taiwan)\";s:3:\"ksh\";s:9:\"Colognian\";s:6:\"ksh_DE\";s:19:\"Colognian (Germany)\";s:2:\"kw\";s:7:\"Cornish\";s:5:\"kw_GB\";s:24:\"Cornish (United Kingdom)\";s:2:\"hr\";s:8:\"Croatian\";s:5:\"hr_BA\";s:31:\"Croatian (Bosnia & Herzegovina)\";s:5:\"hr_HR\";s:18:\"Croatian (Croatia)\";s:2:\"cs\";s:5:\"Czech\";s:5:\"cs_CZ\";s:15:\"Czech (Czechia)\";s:2:\"da\";s:6:\"Danish\";s:5:\"da_DK\";s:16:\"Danish (Denmark)\";s:5:\"da_GL\";s:18:\"Danish (Greenland)\";s:3:\"dua\";s:5:\"Duala\";s:6:\"dua_CM\";s:16:\"Duala (Cameroon)\";s:2:\"nl\";s:5:\"Dutch\";s:5:\"nl_AW\";s:13:\"Dutch (Aruba)\";s:5:\"nl_BE\";s:15:\"Dutch (Belgium)\";s:5:\"nl_BQ\";s:29:\"Dutch (Caribbean Netherlands)\";s:5:\"nl_CW\";s:16:\"Dutch (Curaçao)\";s:5:\"nl_NL\";s:19:\"Dutch (Netherlands)\";s:5:\"nl_SX\";s:20:\"Dutch (Sint Maarten)\";s:5:\"nl_SR\";s:16:\"Dutch (Suriname)\";s:2:\"dz\";s:8:\"Dzongkha\";s:5:\"dz_BT\";s:17:\"Dzongkha (Bhutan)\";s:3:\"ebu\";s:4:\"Embu\";s:6:\"ebu_KE\";s:12:\"Embu (Kenya)\";s:2:\"en\";s:7:\"English\";s:5:\"en_AS\";s:24:\"English (American Samoa)\";s:5:\"en_AI\";s:18:\"English (Anguilla)\";s:5:\"en_AG\";s:27:\"English (Antigua & Barbuda)\";s:5:\"en_AU\";s:19:\"English (Australia)\";s:5:\"en_AT\";s:17:\"English (Austria)\";s:5:\"en_BS\";s:17:\"English (Bahamas)\";s:5:\"en_BB\";s:18:\"English (Barbados)\";s:5:\"en_BE\";s:17:\"English (Belgium)\";s:5:\"en_BZ\";s:16:\"English (Belize)\";s:5:\"en_BM\";s:17:\"English (Bermuda)\";s:5:\"en_BW\";s:18:\"English (Botswana)\";s:5:\"en_IO\";s:40:\"English (British Indian Ocean Territory)\";s:5:\"en_VG\";s:32:\"English (British Virgin Islands)\";s:5:\"en_BI\";s:17:\"English (Burundi)\";s:5:\"en_CM\";s:18:\"English (Cameroon)\";s:5:\"en_CA\";s:16:\"English (Canada)\";s:5:\"en_KY\";s:24:\"English (Cayman Islands)\";s:5:\"en_CX\";s:26:\"English (Christmas Island)\";s:5:\"en_CC\";s:33:\"English (Cocos (Keeling) Islands)\";s:5:\"en_CK\";s:22:\"English (Cook Islands)\";s:5:\"en_CY\";s:16:\"English (Cyprus)\";s:5:\"en_DK\";s:17:\"English (Denmark)\";s:5:\"en_DG\";s:22:\"English (Diego Garcia)\";s:5:\"en_DM\";s:18:\"English (Dominica)\";s:5:\"en_ER\";s:17:\"English (Eritrea)\";s:5:\"en_SZ\";s:18:\"English (Eswatini)\";s:6:\"en_150\";s:16:\"English (Europe)\";s:5:\"en_FK\";s:26:\"English (Falkland Islands)\";s:5:\"en_FJ\";s:14:\"English (Fiji)\";s:5:\"en_FI\";s:17:\"English (Finland)\";s:5:\"en_GM\";s:16:\"English (Gambia)\";s:5:\"en_DE\";s:17:\"English (Germany)\";s:5:\"en_GH\";s:15:\"English (Ghana)\";s:5:\"en_GI\";s:19:\"English (Gibraltar)\";s:5:\"en_GD\";s:17:\"English (Grenada)\";s:5:\"en_GU\";s:14:\"English (Guam)\";s:5:\"en_GG\";s:18:\"English (Guernsey)\";s:5:\"en_GY\";s:16:\"English (Guyana)\";s:5:\"en_HK\";s:29:\"English (Hong Kong SAR China)\";s:5:\"en_IN\";s:15:\"English (India)\";s:5:\"en_IE\";s:17:\"English (Ireland)\";s:5:\"en_IM\";s:21:\"English (Isle of Man)\";s:5:\"en_IL\";s:16:\"English (Israel)\";s:5:\"en_JM\";s:17:\"English (Jamaica)\";s:5:\"en_JE\";s:16:\"English (Jersey)\";s:5:\"en_KE\";s:15:\"English (Kenya)\";s:5:\"en_KI\";s:18:\"English (Kiribati)\";s:5:\"en_LS\";s:17:\"English (Lesotho)\";s:5:\"en_LR\";s:17:\"English (Liberia)\";s:5:\"en_MO\";s:25:\"English (Macao SAR China)\";s:5:\"en_MG\";s:20:\"English (Madagascar)\";s:5:\"en_MW\";s:16:\"English (Malawi)\";s:5:\"en_MY\";s:18:\"English (Malaysia)\";s:5:\"en_MT\";s:15:\"English (Malta)\";s:5:\"en_MH\";s:26:\"English (Marshall Islands)\";s:5:\"en_MU\";s:19:\"English (Mauritius)\";s:5:\"en_FM\";s:20:\"English (Micronesia)\";s:5:\"en_MS\";s:20:\"English (Montserrat)\";s:5:\"en_NA\";s:17:\"English (Namibia)\";s:5:\"en_NR\";s:15:\"English (Nauru)\";s:5:\"en_NL\";s:21:\"English (Netherlands)\";s:5:\"en_NZ\";s:21:\"English (New Zealand)\";s:5:\"en_NG\";s:17:\"English (Nigeria)\";s:5:\"en_NU\";s:14:\"English (Niue)\";s:5:\"en_NF\";s:24:\"English (Norfolk Island)\";s:5:\"en_MP\";s:34:\"English (Northern Mariana Islands)\";s:5:\"en_PK\";s:18:\"English (Pakistan)\";s:5:\"en_PW\";s:15:\"English (Palau)\";s:5:\"en_PG\";s:26:\"English (Papua New Guinea)\";s:5:\"en_PH\";s:21:\"English (Philippines)\";s:5:\"en_PN\";s:26:\"English (Pitcairn Islands)\";s:5:\"en_PR\";s:21:\"English (Puerto Rico)\";s:5:\"en_RW\";s:16:\"English (Rwanda)\";s:5:\"en_WS\";s:15:\"English (Samoa)\";s:5:\"en_SC\";s:20:\"English (Seychelles)\";s:5:\"en_SL\";s:22:\"English (Sierra Leone)\";s:5:\"en_SG\";s:19:\"English (Singapore)\";s:5:\"en_SX\";s:22:\"English (Sint Maarten)\";s:5:\"en_SI\";s:18:\"English (Slovenia)\";s:5:\"en_SB\";s:25:\"English (Solomon Islands)\";s:5:\"en_ZA\";s:22:\"English (South Africa)\";s:5:\"en_SS\";s:21:\"English (South Sudan)\";s:5:\"en_SH\";s:20:\"English (St. Helena)\";s:5:\"en_KN\";s:27:\"English (St. Kitts & Nevis)\";s:5:\"en_LC\";s:19:\"English (St. Lucia)\";s:5:\"en_VC\";s:34:\"English (St. Vincent & Grenadines)\";s:5:\"en_SD\";s:15:\"English (Sudan)\";s:5:\"en_SE\";s:16:\"English (Sweden)\";s:5:\"en_CH\";s:21:\"English (Switzerland)\";s:5:\"en_TZ\";s:18:\"English (Tanzania)\";s:5:\"en_TK\";s:17:\"English (Tokelau)\";s:5:\"en_TO\";s:15:\"English (Tonga)\";s:5:\"en_TT\";s:27:\"English (Trinidad & Tobago)\";s:5:\"en_TC\";s:32:\"English (Turks & Caicos Islands)\";s:5:\"en_TV\";s:16:\"English (Tuvalu)\";s:5:\"en_UM\";s:31:\"English (U.S. Outlying Islands)\";s:5:\"en_VI\";s:29:\"English (U.S. Virgin Islands)\";s:5:\"en_UG\";s:16:\"English (Uganda)\";s:5:\"en_AE\";s:30:\"English (United Arab Emirates)\";s:5:\"en_GB\";s:24:\"English (United Kingdom)\";s:11:\"en_US_POSIX\";s:23:\"English (United States)\";s:5:\"en_US\";s:23:\"English (United States)\";s:5:\"en_VU\";s:17:\"English (Vanuatu)\";s:6:\"en_001\";s:15:\"English (World)\";s:5:\"en_ZM\";s:16:\"English (Zambia)\";s:5:\"en_ZW\";s:18:\"English (Zimbabwe)\";s:2:\"eo\";s:9:\"Esperanto\";s:6:\"eo_001\";s:17:\"Esperanto (World)\";s:2:\"et\";s:8:\"Estonian\";s:5:\"et_EE\";s:18:\"Estonian (Estonia)\";s:2:\"ee\";s:3:\"Ewe\";s:5:\"ee_GH\";s:11:\"Ewe (Ghana)\";s:5:\"ee_TG\";s:10:\"Ewe (Togo)\";s:3:\"ewo\";s:6:\"Ewondo\";s:6:\"ewo_CM\";s:17:\"Ewondo (Cameroon)\";s:2:\"fo\";s:7:\"Faroese\";s:5:\"fo_DK\";s:17:\"Faroese (Denmark)\";s:5:\"fo_FO\";s:23:\"Faroese (Faroe Islands)\";s:3:\"fil\";s:8:\"Filipino\";s:6:\"fil_PH\";s:22:\"Filipino (Philippines)\";s:2:\"fi\";s:7:\"Finnish\";s:5:\"fi_FI\";s:17:\"Finnish (Finland)\";s:2:\"fr\";s:6:\"French\";s:5:\"fr_DZ\";s:16:\"French (Algeria)\";s:5:\"fr_BE\";s:16:\"French (Belgium)\";s:5:\"fr_BJ\";s:14:\"French (Benin)\";s:5:\"fr_BF\";s:21:\"French (Burkina Faso)\";s:5:\"fr_BI\";s:16:\"French (Burundi)\";s:5:\"fr_CM\";s:17:\"French (Cameroon)\";s:5:\"fr_CA\";s:15:\"French (Canada)\";s:5:\"fr_CF\";s:33:\"French (Central African Republic)\";s:5:\"fr_TD\";s:13:\"French (Chad)\";s:5:\"fr_KM\";s:16:\"French (Comoros)\";s:5:\"fr_CG\";s:28:\"French (Congo - Brazzaville)\";s:5:\"fr_CD\";s:25:\"French (Congo - Kinshasa)\";s:5:\"fr_CI\";s:25:\"French (Côte d’Ivoire)\";s:5:\"fr_DJ\";s:17:\"French (Djibouti)\";s:5:\"fr_GQ\";s:26:\"French (Equatorial Guinea)\";s:5:\"fr_FR\";s:15:\"French (France)\";s:5:\"fr_GF\";s:22:\"French (French Guiana)\";s:5:\"fr_PF\";s:25:\"French (French Polynesia)\";s:5:\"fr_GA\";s:14:\"French (Gabon)\";s:5:\"fr_GP\";s:19:\"French (Guadeloupe)\";s:5:\"fr_GN\";s:15:\"French (Guinea)\";s:5:\"fr_HT\";s:14:\"French (Haiti)\";s:5:\"fr_LU\";s:19:\"French (Luxembourg)\";s:5:\"fr_MG\";s:19:\"French (Madagascar)\";s:5:\"fr_ML\";s:13:\"French (Mali)\";s:5:\"fr_MQ\";s:19:\"French (Martinique)\";s:5:\"fr_MR\";s:19:\"French (Mauritania)\";s:5:\"fr_MU\";s:18:\"French (Mauritius)\";s:5:\"fr_YT\";s:16:\"French (Mayotte)\";s:5:\"fr_MC\";s:15:\"French (Monaco)\";s:5:\"fr_MA\";s:16:\"French (Morocco)\";s:5:\"fr_NC\";s:22:\"French (New Caledonia)\";s:5:\"fr_NE\";s:14:\"French (Niger)\";s:5:\"fr_RW\";s:15:\"French (Rwanda)\";s:5:\"fr_RE\";s:17:\"French (Réunion)\";s:5:\"fr_SN\";s:16:\"French (Senegal)\";s:5:\"fr_SC\";s:19:\"French (Seychelles)\";s:5:\"fr_BL\";s:24:\"French (St. Barthélemy)\";s:5:\"fr_MF\";s:19:\"French (St. Martin)\";s:5:\"fr_PM\";s:30:\"French (St. Pierre & Miquelon)\";s:5:\"fr_CH\";s:20:\"French (Switzerland)\";s:5:\"fr_SY\";s:14:\"French (Syria)\";s:5:\"fr_TG\";s:13:\"French (Togo)\";s:5:\"fr_TN\";s:16:\"French (Tunisia)\";s:5:\"fr_VU\";s:16:\"French (Vanuatu)\";s:5:\"fr_WF\";s:24:\"French (Wallis & Futuna)\";s:3:\"fur\";s:8:\"Friulian\";s:6:\"fur_IT\";s:16:\"Friulian (Italy)\";s:7:\"ff_Latn\";s:5:\"Fulah\";s:2:\"ff\";s:5:\"Fulah\";s:10:\"ff_Latn_BF\";s:20:\"Fulah (Burkina Faso)\";s:10:\"ff_Latn_CM\";s:16:\"Fulah (Cameroon)\";s:10:\"ff_Latn_GM\";s:14:\"Fulah (Gambia)\";s:10:\"ff_Latn_GH\";s:13:\"Fulah (Ghana)\";s:10:\"ff_Latn_GN\";s:14:\"Fulah (Guinea)\";s:10:\"ff_Latn_GW\";s:21:\"Fulah (Guinea-Bissau)\";s:10:\"ff_Latn_LR\";s:15:\"Fulah (Liberia)\";s:10:\"ff_Latn_MR\";s:18:\"Fulah (Mauritania)\";s:10:\"ff_Latn_NE\";s:13:\"Fulah (Niger)\";s:10:\"ff_Latn_NG\";s:15:\"Fulah (Nigeria)\";s:10:\"ff_Latn_SN\";s:15:\"Fulah (Senegal)\";s:10:\"ff_Latn_SL\";s:20:\"Fulah (Sierra Leone)\";s:2:\"gl\";s:8:\"Galician\";s:5:\"gl_ES\";s:16:\"Galician (Spain)\";s:2:\"lg\";s:5:\"Ganda\";s:5:\"lg_UG\";s:14:\"Ganda (Uganda)\";s:2:\"ka\";s:8:\"Georgian\";s:5:\"ka_GE\";s:18:\"Georgian (Georgia)\";s:2:\"de\";s:6:\"German\";s:5:\"de_AT\";s:16:\"German (Austria)\";s:5:\"de_BE\";s:16:\"German (Belgium)\";s:5:\"de_DE\";s:16:\"German (Germany)\";s:5:\"de_IT\";s:14:\"German (Italy)\";s:5:\"de_LI\";s:22:\"German (Liechtenstein)\";s:5:\"de_LU\";s:19:\"German (Luxembourg)\";s:5:\"de_CH\";s:20:\"German (Switzerland)\";s:2:\"el\";s:5:\"Greek\";s:5:\"el_CY\";s:14:\"Greek (Cyprus)\";s:5:\"el_GR\";s:14:\"Greek (Greece)\";s:2:\"gu\";s:8:\"Gujarati\";s:5:\"gu_IN\";s:16:\"Gujarati (India)\";s:3:\"guz\";s:5:\"Gusii\";s:6:\"guz_KE\";s:13:\"Gusii (Kenya)\";s:2:\"ha\";s:5:\"Hausa\";s:5:\"ha_GH\";s:13:\"Hausa (Ghana)\";s:5:\"ha_NE\";s:13:\"Hausa (Niger)\";s:5:\"ha_NG\";s:15:\"Hausa (Nigeria)\";s:3:\"haw\";s:8:\"Hawaiian\";s:6:\"haw_US\";s:24:\"Hawaiian (United States)\";s:2:\"he\";s:6:\"Hebrew\";s:5:\"he_IL\";s:15:\"Hebrew (Israel)\";s:2:\"hi\";s:5:\"Hindi\";s:5:\"hi_IN\";s:13:\"Hindi (India)\";s:2:\"hu\";s:9:\"Hungarian\";s:5:\"hu_HU\";s:19:\"Hungarian (Hungary)\";s:2:\"is\";s:9:\"Icelandic\";s:5:\"is_IS\";s:19:\"Icelandic (Iceland)\";s:2:\"ig\";s:4:\"Igbo\";s:5:\"ig_NG\";s:14:\"Igbo (Nigeria)\";s:3:\"smn\";s:10:\"Inari Sami\";s:6:\"smn_FI\";s:20:\"Inari Sami (Finland)\";s:2:\"id\";s:10:\"Indonesian\";s:5:\"id_ID\";s:22:\"Indonesian (Indonesia)\";s:2:\"ia\";s:11:\"Interlingua\";s:6:\"ia_001\";s:19:\"Interlingua (World)\";s:2:\"ga\";s:5:\"Irish\";s:5:\"ga_IE\";s:15:\"Irish (Ireland)\";s:5:\"ga_GB\";s:22:\"Irish (United Kingdom)\";s:2:\"it\";s:7:\"Italian\";s:5:\"it_IT\";s:15:\"Italian (Italy)\";s:5:\"it_SM\";s:20:\"Italian (San Marino)\";s:5:\"it_CH\";s:21:\"Italian (Switzerland)\";s:5:\"it_VA\";s:22:\"Italian (Vatican City)\";s:2:\"ja\";s:8:\"Japanese\";s:5:\"ja_JP\";s:16:\"Japanese (Japan)\";s:2:\"jv\";s:8:\"Javanese\";s:5:\"jv_ID\";s:20:\"Javanese (Indonesia)\";s:3:\"dyo\";s:10:\"Jola-Fonyi\";s:6:\"dyo_SN\";s:20:\"Jola-Fonyi (Senegal)\";s:3:\"kea\";s:12:\"Kabuverdianu\";s:6:\"kea_CV\";s:25:\"Kabuverdianu (Cape Verde)\";s:3:\"kab\";s:6:\"Kabyle\";s:6:\"kab_DZ\";s:16:\"Kabyle (Algeria)\";s:3:\"kkj\";s:4:\"Kako\";s:6:\"kkj_CM\";s:15:\"Kako (Cameroon)\";s:2:\"kl\";s:11:\"Kalaallisut\";s:5:\"kl_GL\";s:23:\"Kalaallisut (Greenland)\";s:3:\"kln\";s:8:\"Kalenjin\";s:6:\"kln_KE\";s:16:\"Kalenjin (Kenya)\";s:3:\"kam\";s:5:\"Kamba\";s:6:\"kam_KE\";s:13:\"Kamba (Kenya)\";s:2:\"kn\";s:7:\"Kannada\";s:5:\"kn_IN\";s:15:\"Kannada (India)\";s:2:\"ks\";s:8:\"Kashmiri\";s:5:\"ks_IN\";s:16:\"Kashmiri (India)\";s:2:\"kk\";s:6:\"Kazakh\";s:5:\"kk_KZ\";s:19:\"Kazakh (Kazakhstan)\";s:2:\"km\";s:5:\"Khmer\";s:5:\"km_KH\";s:16:\"Khmer (Cambodia)\";s:2:\"ki\";s:6:\"Kikuyu\";s:5:\"ki_KE\";s:14:\"Kikuyu (Kenya)\";s:2:\"rw\";s:11:\"Kinyarwanda\";s:5:\"rw_RW\";s:20:\"Kinyarwanda (Rwanda)\";s:3:\"kok\";s:7:\"Konkani\";s:6:\"kok_IN\";s:15:\"Konkani (India)\";s:2:\"ko\";s:6:\"Korean\";s:5:\"ko_KP\";s:20:\"Korean (North Korea)\";s:5:\"ko_KR\";s:20:\"Korean (South Korea)\";s:3:\"khq\";s:12:\"Koyra Chiini\";s:6:\"khq_ML\";s:19:\"Koyra Chiini (Mali)\";s:3:\"ses\";s:15:\"Koyraboro Senni\";s:6:\"ses_ML\";s:22:\"Koyraboro Senni (Mali)\";s:2:\"ku\";s:7:\"Kurdish\";s:5:\"ku_TR\";s:16:\"Kurdish (Turkey)\";s:3:\"nmg\";s:6:\"Kwasio\";s:6:\"nmg_CM\";s:17:\"Kwasio (Cameroon)\";s:2:\"ky\";s:6:\"Kyrgyz\";s:5:\"ky_KG\";s:19:\"Kyrgyz (Kyrgyzstan)\";s:3:\"lkt\";s:6:\"Lakota\";s:6:\"lkt_US\";s:22:\"Lakota (United States)\";s:3:\"lag\";s:5:\"Langi\";s:6:\"lag_TZ\";s:16:\"Langi (Tanzania)\";s:2:\"lo\";s:3:\"Lao\";s:5:\"lo_LA\";s:10:\"Lao (Laos)\";s:2:\"lv\";s:7:\"Latvian\";s:5:\"lv_LV\";s:16:\"Latvian (Latvia)\";s:2:\"ln\";s:7:\"Lingala\";s:5:\"ln_AO\";s:16:\"Lingala (Angola)\";s:5:\"ln_CF\";s:34:\"Lingala (Central African Republic)\";s:5:\"ln_CG\";s:29:\"Lingala (Congo - Brazzaville)\";s:5:\"ln_CD\";s:26:\"Lingala (Congo - Kinshasa)\";s:2:\"lt\";s:10:\"Lithuanian\";s:5:\"lt_LT\";s:22:\"Lithuanian (Lithuania)\";s:3:\"nds\";s:10:\"Low German\";s:6:\"nds_DE\";s:20:\"Low German (Germany)\";s:6:\"nds_NL\";s:24:\"Low German (Netherlands)\";s:3:\"dsb\";s:13:\"Lower Sorbian\";s:6:\"dsb_DE\";s:23:\"Lower Sorbian (Germany)\";s:2:\"lu\";s:12:\"Luba-Katanga\";s:5:\"lu_CD\";s:31:\"Luba-Katanga (Congo - Kinshasa)\";s:3:\"luo\";s:3:\"Luo\";s:6:\"luo_KE\";s:11:\"Luo (Kenya)\";s:2:\"lb\";s:13:\"Luxembourgish\";s:5:\"lb_LU\";s:26:\"Luxembourgish (Luxembourg)\";s:3:\"luy\";s:5:\"Luyia\";s:6:\"luy_KE\";s:13:\"Luyia (Kenya)\";s:2:\"mk\";s:10:\"Macedonian\";s:5:\"mk_MK\";s:28:\"Macedonian (North Macedonia)\";s:3:\"jmc\";s:7:\"Machame\";s:6:\"jmc_TZ\";s:18:\"Machame (Tanzania)\";s:3:\"mgh\";s:14:\"Makhuwa-Meetto\";s:6:\"mgh_MZ\";s:27:\"Makhuwa-Meetto (Mozambique)\";s:3:\"kde\";s:7:\"Makonde\";s:6:\"kde_TZ\";s:18:\"Makonde (Tanzania)\";s:2:\"mg\";s:8:\"Malagasy\";s:5:\"mg_MG\";s:21:\"Malagasy (Madagascar)\";s:2:\"ms\";s:5:\"Malay\";s:5:\"ms_BN\";s:14:\"Malay (Brunei)\";s:5:\"ms_MY\";s:16:\"Malay (Malaysia)\";s:5:\"ms_SG\";s:17:\"Malay (Singapore)\";s:2:\"ml\";s:9:\"Malayalam\";s:5:\"ml_IN\";s:17:\"Malayalam (India)\";s:2:\"mt\";s:7:\"Maltese\";s:5:\"mt_MT\";s:15:\"Maltese (Malta)\";s:2:\"gv\";s:4:\"Manx\";s:5:\"gv_IM\";s:18:\"Manx (Isle of Man)\";s:2:\"mi\";s:5:\"Maori\";s:5:\"mi_NZ\";s:19:\"Maori (New Zealand)\";s:2:\"mr\";s:7:\"Marathi\";s:5:\"mr_IN\";s:15:\"Marathi (India)\";s:3:\"mas\";s:5:\"Masai\";s:6:\"mas_KE\";s:13:\"Masai (Kenya)\";s:6:\"mas_TZ\";s:16:\"Masai (Tanzania)\";s:3:\"mzn\";s:11:\"Mazanderani\";s:6:\"mzn_IR\";s:18:\"Mazanderani (Iran)\";s:3:\"mer\";s:4:\"Meru\";s:6:\"mer_KE\";s:12:\"Meru (Kenya)\";s:3:\"mgo\";s:6:\"Metaʼ\";s:6:\"mgo_CM\";s:17:\"Metaʼ (Cameroon)\";s:2:\"mn\";s:9:\"Mongolian\";s:5:\"mn_MN\";s:20:\"Mongolian (Mongolia)\";s:3:\"mfe\";s:8:\"Morisyen\";s:6:\"mfe_MU\";s:20:\"Morisyen (Mauritius)\";s:3:\"mua\";s:7:\"Mundang\";s:6:\"mua_CM\";s:18:\"Mundang (Cameroon)\";s:3:\"naq\";s:4:\"Nama\";s:6:\"naq_NA\";s:14:\"Nama (Namibia)\";s:2:\"ne\";s:6:\"Nepali\";s:5:\"ne_IN\";s:14:\"Nepali (India)\";s:5:\"ne_NP\";s:14:\"Nepali (Nepal)\";s:3:\"nnh\";s:9:\"Ngiemboon\";s:6:\"nnh_CM\";s:20:\"Ngiemboon (Cameroon)\";s:3:\"jgo\";s:6:\"Ngomba\";s:6:\"jgo_CM\";s:17:\"Ngomba (Cameroon)\";s:2:\"nd\";s:13:\"North Ndebele\";s:5:\"nd_ZW\";s:24:\"North Ndebele (Zimbabwe)\";s:3:\"lrc\";s:13:\"Northern Luri\";s:6:\"lrc_IR\";s:20:\"Northern Luri (Iran)\";s:6:\"lrc_IQ\";s:20:\"Northern Luri (Iraq)\";s:2:\"se\";s:13:\"Northern Sami\";s:5:\"se_FI\";s:23:\"Northern Sami (Finland)\";s:5:\"se_NO\";s:22:\"Northern Sami (Norway)\";s:5:\"se_SE\";s:22:\"Northern Sami (Sweden)\";s:2:\"nb\";s:17:\"Norwegian Bokmål\";s:5:\"nb_NO\";s:26:\"Norwegian Bokmål (Norway)\";s:5:\"nb_SJ\";s:40:\"Norwegian Bokmål (Svalbard & Jan Mayen)\";s:2:\"nn\";s:17:\"Norwegian Nynorsk\";s:5:\"nn_NO\";s:26:\"Norwegian Nynorsk (Norway)\";s:3:\"nus\";s:4:\"Nuer\";s:6:\"nus_SS\";s:18:\"Nuer (South Sudan)\";s:3:\"nyn\";s:8:\"Nyankole\";s:6:\"nyn_UG\";s:17:\"Nyankole (Uganda)\";s:2:\"or\";s:4:\"Odia\";s:5:\"or_IN\";s:12:\"Odia (India)\";s:2:\"om\";s:5:\"Oromo\";s:5:\"om_ET\";s:16:\"Oromo (Ethiopia)\";s:5:\"om_KE\";s:13:\"Oromo (Kenya)\";s:2:\"os\";s:7:\"Ossetic\";s:5:\"os_GE\";s:17:\"Ossetic (Georgia)\";s:5:\"os_RU\";s:16:\"Ossetic (Russia)\";s:2:\"ps\";s:6:\"Pashto\";s:5:\"ps_AF\";s:20:\"Pashto (Afghanistan)\";s:5:\"ps_PK\";s:17:\"Pashto (Pakistan)\";s:2:\"fa\";s:7:\"Persian\";s:5:\"fa_AF\";s:21:\"Persian (Afghanistan)\";s:5:\"fa_IR\";s:14:\"Persian (Iran)\";s:2:\"pl\";s:6:\"Polish\";s:5:\"pl_PL\";s:15:\"Polish (Poland)\";s:2:\"pt\";s:10:\"Portuguese\";s:5:\"pt_AO\";s:19:\"Portuguese (Angola)\";s:5:\"pt_BR\";s:19:\"Portuguese (Brazil)\";s:5:\"pt_CV\";s:23:\"Portuguese (Cape Verde)\";s:5:\"pt_GQ\";s:30:\"Portuguese (Equatorial Guinea)\";s:5:\"pt_GW\";s:26:\"Portuguese (Guinea-Bissau)\";s:5:\"pt_LU\";s:23:\"Portuguese (Luxembourg)\";s:5:\"pt_MO\";s:28:\"Portuguese (Macao SAR China)\";s:5:\"pt_MZ\";s:23:\"Portuguese (Mozambique)\";s:5:\"pt_PT\";s:21:\"Portuguese (Portugal)\";s:5:\"pt_CH\";s:24:\"Portuguese (Switzerland)\";s:5:\"pt_ST\";s:35:\"Portuguese (São Tomé & Príncipe)\";s:5:\"pt_TL\";s:24:\"Portuguese (Timor-Leste)\";s:7:\"pa_Guru\";s:7:\"Punjabi\";s:7:\"pa_Arab\";s:7:\"Punjabi\";s:2:\"pa\";s:7:\"Punjabi\";s:10:\"pa_Guru_IN\";s:15:\"Punjabi (India)\";s:10:\"pa_Arab_PK\";s:18:\"Punjabi (Pakistan)\";s:2:\"qu\";s:7:\"Quechua\";s:5:\"qu_BO\";s:17:\"Quechua (Bolivia)\";s:5:\"qu_EC\";s:17:\"Quechua (Ecuador)\";s:5:\"qu_PE\";s:14:\"Quechua (Peru)\";s:2:\"ro\";s:8:\"Romanian\";s:5:\"ro_MD\";s:18:\"Romanian (Moldova)\";s:5:\"ro_RO\";s:18:\"Romanian (Romania)\";s:2:\"rm\";s:7:\"Romansh\";s:5:\"rm_CH\";s:21:\"Romansh (Switzerland)\";s:3:\"rof\";s:5:\"Rombo\";s:6:\"rof_TZ\";s:16:\"Rombo (Tanzania)\";s:2:\"rn\";s:5:\"Rundi\";s:5:\"rn_BI\";s:15:\"Rundi (Burundi)\";s:2:\"ru\";s:7:\"Russian\";s:5:\"ru_BY\";s:17:\"Russian (Belarus)\";s:5:\"ru_KZ\";s:20:\"Russian (Kazakhstan)\";s:5:\"ru_KG\";s:20:\"Russian (Kyrgyzstan)\";s:5:\"ru_MD\";s:17:\"Russian (Moldova)\";s:5:\"ru_RU\";s:16:\"Russian (Russia)\";s:5:\"ru_UA\";s:17:\"Russian (Ukraine)\";s:3:\"rwk\";s:3:\"Rwa\";s:6:\"rwk_TZ\";s:14:\"Rwa (Tanzania)\";s:3:\"sah\";s:5:\"Sakha\";s:6:\"sah_RU\";s:14:\"Sakha (Russia)\";s:3:\"saq\";s:7:\"Samburu\";s:6:\"saq_KE\";s:15:\"Samburu (Kenya)\";s:2:\"sg\";s:5:\"Sango\";s:5:\"sg_CF\";s:32:\"Sango (Central African Republic)\";s:3:\"sbp\";s:5:\"Sangu\";s:6:\"sbp_TZ\";s:16:\"Sangu (Tanzania)\";s:2:\"gd\";s:15:\"Scottish Gaelic\";s:5:\"gd_GB\";s:32:\"Scottish Gaelic (United Kingdom)\";s:3:\"seh\";s:4:\"Sena\";s:6:\"seh_MZ\";s:17:\"Sena (Mozambique)\";s:2:\"sr\";s:7:\"Serbian\";s:7:\"sr_Latn\";s:7:\"Serbian\";s:7:\"sr_Cyrl\";s:7:\"Serbian\";s:10:\"sr_Cyrl_BA\";s:30:\"Serbian (Bosnia & Herzegovina)\";s:10:\"sr_Latn_BA\";s:30:\"Serbian (Bosnia & Herzegovina)\";s:10:\"sr_Latn_XK\";s:16:\"Serbian (Kosovo)\";s:10:\"sr_Cyrl_XK\";s:16:\"Serbian (Kosovo)\";s:10:\"sr_Latn_ME\";s:20:\"Serbian (Montenegro)\";s:10:\"sr_Cyrl_ME\";s:20:\"Serbian (Montenegro)\";s:10:\"sr_Cyrl_RS\";s:16:\"Serbian (Serbia)\";s:10:\"sr_Latn_RS\";s:16:\"Serbian (Serbia)\";s:3:\"ksb\";s:8:\"Shambala\";s:6:\"ksb_TZ\";s:19:\"Shambala (Tanzania)\";s:2:\"sn\";s:5:\"Shona\";s:5:\"sn_ZW\";s:16:\"Shona (Zimbabwe)\";s:2:\"ii\";s:10:\"Sichuan Yi\";s:5:\"ii_CN\";s:18:\"Sichuan Yi (China)\";s:2:\"sd\";s:6:\"Sindhi\";s:5:\"sd_PK\";s:17:\"Sindhi (Pakistan)\";s:2:\"si\";s:7:\"Sinhala\";s:5:\"si_LK\";s:19:\"Sinhala (Sri Lanka)\";s:2:\"sk\";s:6:\"Slovak\";s:5:\"sk_SK\";s:17:\"Slovak (Slovakia)\";s:2:\"sl\";s:9:\"Slovenian\";s:5:\"sl_SI\";s:20:\"Slovenian (Slovenia)\";s:3:\"xog\";s:4:\"Soga\";s:6:\"xog_UG\";s:13:\"Soga (Uganda)\";s:2:\"so\";s:6:\"Somali\";s:5:\"so_DJ\";s:17:\"Somali (Djibouti)\";s:5:\"so_ET\";s:17:\"Somali (Ethiopia)\";s:5:\"so_KE\";s:14:\"Somali (Kenya)\";s:5:\"so_SO\";s:16:\"Somali (Somalia)\";s:2:\"es\";s:7:\"Spanish\";s:5:\"es_AR\";s:19:\"Spanish (Argentina)\";s:5:\"es_BZ\";s:16:\"Spanish (Belize)\";s:5:\"es_BO\";s:17:\"Spanish (Bolivia)\";s:5:\"es_BR\";s:16:\"Spanish (Brazil)\";s:5:\"es_IC\";s:24:\"Spanish (Canary Islands)\";s:5:\"es_EA\";s:25:\"Spanish (Ceuta & Melilla)\";s:5:\"es_CL\";s:15:\"Spanish (Chile)\";s:5:\"es_CO\";s:18:\"Spanish (Colombia)\";s:5:\"es_CR\";s:20:\"Spanish (Costa Rica)\";s:5:\"es_CU\";s:14:\"Spanish (Cuba)\";s:5:\"es_DO\";s:28:\"Spanish (Dominican Republic)\";s:5:\"es_EC\";s:17:\"Spanish (Ecuador)\";s:5:\"es_SV\";s:21:\"Spanish (El Salvador)\";s:5:\"es_GQ\";s:27:\"Spanish (Equatorial Guinea)\";s:5:\"es_GT\";s:19:\"Spanish (Guatemala)\";s:5:\"es_HN\";s:18:\"Spanish (Honduras)\";s:6:\"es_419\";s:23:\"Spanish (Latin America)\";s:5:\"es_MX\";s:16:\"Spanish (Mexico)\";s:5:\"es_NI\";s:19:\"Spanish (Nicaragua)\";s:5:\"es_PA\";s:16:\"Spanish (Panama)\";s:5:\"es_PY\";s:18:\"Spanish (Paraguay)\";s:5:\"es_PE\";s:14:\"Spanish (Peru)\";s:5:\"es_PH\";s:21:\"Spanish (Philippines)\";s:5:\"es_PR\";s:21:\"Spanish (Puerto Rico)\";s:5:\"es_ES\";s:15:\"Spanish (Spain)\";s:5:\"es_US\";s:23:\"Spanish (United States)\";s:5:\"es_UY\";s:17:\"Spanish (Uruguay)\";s:5:\"es_VE\";s:19:\"Spanish (Venezuela)\";s:3:\"zgh\";s:27:\"Standard Moroccan Tamazight\";s:6:\"zgh_MA\";s:37:\"Standard Moroccan Tamazight (Morocco)\";s:2:\"sw\";s:7:\"Swahili\";s:5:\"sw_CD\";s:26:\"Swahili (Congo - Kinshasa)\";s:5:\"sw_KE\";s:15:\"Swahili (Kenya)\";s:5:\"sw_TZ\";s:18:\"Swahili (Tanzania)\";s:5:\"sw_UG\";s:16:\"Swahili (Uganda)\";s:2:\"sv\";s:7:\"Swedish\";s:5:\"sv_FI\";s:17:\"Swedish (Finland)\";s:5:\"sv_SE\";s:16:\"Swedish (Sweden)\";s:5:\"sv_AX\";s:24:\"Swedish (Åland Islands)\";s:3:\"gsw\";s:12:\"Swiss German\";s:6:\"gsw_FR\";s:21:\"Swiss German (France)\";s:6:\"gsw_LI\";s:28:\"Swiss German (Liechtenstein)\";s:6:\"gsw_CH\";s:26:\"Swiss German (Switzerland)\";s:8:\"shi_Tfng\";s:9:\"Tachelhit\";s:8:\"shi_Latn\";s:9:\"Tachelhit\";s:3:\"shi\";s:9:\"Tachelhit\";s:11:\"shi_Tfng_MA\";s:19:\"Tachelhit (Morocco)\";s:11:\"shi_Latn_MA\";s:19:\"Tachelhit (Morocco)\";s:3:\"dav\";s:5:\"Taita\";s:6:\"dav_KE\";s:13:\"Taita (Kenya)\";s:2:\"tg\";s:5:\"Tajik\";s:5:\"tg_TJ\";s:18:\"Tajik (Tajikistan)\";s:2:\"ta\";s:5:\"Tamil\";s:5:\"ta_IN\";s:13:\"Tamil (India)\";s:5:\"ta_MY\";s:16:\"Tamil (Malaysia)\";s:5:\"ta_SG\";s:17:\"Tamil (Singapore)\";s:5:\"ta_LK\";s:17:\"Tamil (Sri Lanka)\";s:3:\"twq\";s:7:\"Tasawaq\";s:6:\"twq_NE\";s:15:\"Tasawaq (Niger)\";s:2:\"tt\";s:5:\"Tatar\";s:5:\"tt_RU\";s:14:\"Tatar (Russia)\";s:2:\"te\";s:6:\"Telugu\";s:5:\"te_IN\";s:14:\"Telugu (India)\";s:3:\"teo\";s:4:\"Teso\";s:6:\"teo_KE\";s:12:\"Teso (Kenya)\";s:6:\"teo_UG\";s:13:\"Teso (Uganda)\";s:2:\"th\";s:4:\"Thai\";s:5:\"th_TH\";s:15:\"Thai (Thailand)\";s:2:\"bo\";s:7:\"Tibetan\";s:5:\"bo_CN\";s:15:\"Tibetan (China)\";s:5:\"bo_IN\";s:15:\"Tibetan (India)\";s:2:\"ti\";s:8:\"Tigrinya\";s:5:\"ti_ER\";s:18:\"Tigrinya (Eritrea)\";s:5:\"ti_ET\";s:19:\"Tigrinya (Ethiopia)\";s:2:\"to\";s:6:\"Tongan\";s:5:\"to_TO\";s:14:\"Tongan (Tonga)\";s:2:\"tr\";s:7:\"Turkish\";s:5:\"tr_CY\";s:16:\"Turkish (Cyprus)\";s:5:\"tr_TR\";s:16:\"Turkish (Turkey)\";s:2:\"tk\";s:7:\"Turkmen\";s:5:\"tk_TM\";s:22:\"Turkmen (Turkmenistan)\";s:2:\"uk\";s:9:\"Ukrainian\";s:5:\"uk_UA\";s:19:\"Ukrainian (Ukraine)\";s:3:\"hsb\";s:13:\"Upper Sorbian\";s:6:\"hsb_DE\";s:23:\"Upper Sorbian (Germany)\";s:2:\"ur\";s:4:\"Urdu\";s:5:\"ur_IN\";s:12:\"Urdu (India)\";s:5:\"ur_PK\";s:15:\"Urdu (Pakistan)\";s:2:\"ug\";s:6:\"Uyghur\";s:5:\"ug_CN\";s:14:\"Uyghur (China)\";s:7:\"uz_Latn\";s:5:\"Uzbek\";s:7:\"uz_Arab\";s:5:\"Uzbek\";s:2:\"uz\";s:5:\"Uzbek\";s:7:\"uz_Cyrl\";s:5:\"Uzbek\";s:10:\"uz_Arab_AF\";s:19:\"Uzbek (Afghanistan)\";s:10:\"uz_Latn_UZ\";s:18:\"Uzbek (Uzbekistan)\";s:10:\"uz_Cyrl_UZ\";s:18:\"Uzbek (Uzbekistan)\";s:8:\"vai_Vaii\";s:3:\"Vai\";s:3:\"vai\";s:3:\"Vai\";s:8:\"vai_Latn\";s:3:\"Vai\";s:11:\"vai_Vaii_LR\";s:13:\"Vai (Liberia)\";s:11:\"vai_Latn_LR\";s:13:\"Vai (Liberia)\";s:2:\"vi\";s:10:\"Vietnamese\";s:5:\"vi_VN\";s:20:\"Vietnamese (Vietnam)\";s:3:\"vun\";s:5:\"Vunjo\";s:6:\"vun_TZ\";s:16:\"Vunjo (Tanzania)\";s:3:\"wae\";s:6:\"Walser\";s:6:\"wae_CH\";s:20:\"Walser (Switzerland)\";s:2:\"cy\";s:5:\"Welsh\";s:5:\"cy_GB\";s:22:\"Welsh (United Kingdom)\";s:2:\"fy\";s:15:\"Western Frisian\";s:5:\"fy_NL\";s:29:\"Western Frisian (Netherlands)\";s:2:\"wo\";s:5:\"Wolof\";s:5:\"wo_SN\";s:15:\"Wolof (Senegal)\";s:2:\"xh\";s:5:\"Xhosa\";s:5:\"xh_ZA\";s:20:\"Xhosa (South Africa)\";s:3:\"yav\";s:7:\"Yangben\";s:6:\"yav_CM\";s:18:\"Yangben (Cameroon)\";s:2:\"yi\";s:7:\"Yiddish\";s:6:\"yi_001\";s:15:\"Yiddish (World)\";s:2:\"yo\";s:6:\"Yoruba\";s:5:\"yo_BJ\";s:14:\"Yoruba (Benin)\";s:5:\"yo_NG\";s:16:\"Yoruba (Nigeria)\";s:3:\"dje\";s:5:\"Zarma\";s:6:\"dje_NE\";s:13:\"Zarma (Niger)\";s:2:\"zu\";s:4:\"Zulu\";s:5:\"zu_ZA\";s:19:\"Zulu (South Africa)\";}\";',1613930058,1616349258),('translation_data_admin_en',_binary 's:133112:\"O:46:\"Symfony\\Component\\Translation\\MessageCatalogue\":6:{s:56:\"\0Symfony\\Component\\Translation\\MessageCatalogue\0messages\";a:1:{s:5:\"admin\";a:2908:{s:15:\"__pimcore_dummy\";s:12:\"only_a_dummy\";s:17:\"validation_failed\";s:18:\"Validation Failed!\";s:10:\"deprecated\";s:10:\"Deprecated\";s:13:\"access_denied\";s:14:\"Access Denied!\";s:25:\"access_denied_description\";s:88:\"You don\'t have sufficient permissions to open the element or perform the desired action.\";s:11:\"quicksearch\";s:12:\"Quick Search\";s:34:\"you_can_only_drop_one_element_here\";s:35:\"You can only drop one element here!\";s:12:\"grid_options\";s:12:\"Grid Options\";s:16:\"open_data_object\";s:16:\"Open Data Object\";s:12:\"data_objects\";s:12:\"Data Objects\";s:29:\"asset_type_change_not_allowed\";s:127:\"<strong>Only assets of same type are allowed here.</strong><br/>[ type of uploaded asset: \"%s\" | type of existing asset: \"%s\" ]\";s:19:\"unsupported_feature\";s:54:\"Unsupported feature! Please check system requirements!\";s:18:\"upload_new_version\";s:18:\"Upload new version\";s:20:\"screen_size_to_small\";s:56:\"Your screen is too small to display the desired preview.\";s:32:\"too_many_children_for_recyclebin\";s:105:\"This element contains too many children to be moved to the recycle bin so it will be deleted permanentely\";s:7:\"default\";s:7:\"Default\";s:4:\"data\";s:4:\"Data\";s:8:\"metadata\";s:8:\"Metadata\";s:15:\"custom_metadata\";s:15:\"Custom Metadata\";s:12:\"invalid_name\";s:12:\"Invalid name\";s:30:\"login_token_invalid_user_error\";s:13:\"Invalid user.\";s:41:\"login_token_as_admin_non_admin_user_error\";s:55:\"Only admin users are allowed to login as an admin user.\";s:29:\"login_token_no_password_error\";s:25:\"User has no password set.\";s:13:\"email_address\";s:13:\"Email Address\";s:15:\"email_blacklist\";s:15:\"Email Blacklist\";s:17:\"targeting_toolbar\";s:17:\"Targeting Toolbar\";s:2:\"OK\";s:2:\"OK\";s:32:\"search_replace_assignments_error\";s:59:\"Please select items where to replace and a new target item.\";s:40:\"replace_assignments_in_selected_elements\";s:40:\"Replace assignments in selected elements\";s:35:\"replace_assignments_in_all_elements\";s:35:\"Replace assignments in all elements\";s:26:\"search_replace_assignments\";s:28:\"Search & Replace Assignments\";s:13:\"imageadvanced\";s:14:\"Image Advanced\";s:21:\"filter_active_message\";s:47:\"Do you want to export only the filtered values?\";s:12:\"close_others\";s:12:\"Close Others\";s:9:\"close_all\";s:9:\"Close All\";s:5:\"clone\";s:5:\"Clone\";s:16:\"close_unmodified\";s:16:\"Close Unmodified\";s:7:\"classid\";s:8:\"Class ID\";s:8:\"parentid\";s:9:\"Parent ID\";s:8:\"mimetype\";s:9:\"MIME-Type\";s:12:\"creationdate\";s:13:\"Creation Date\";s:16:\"usermodification\";s:17:\"User Modification\";s:9:\"userowner\";s:10:\"User Owner\";s:9:\"languages\";s:9:\"Languages\";s:24:\"password_was_not_changed\";s:54:\"Password wasn\'t changed because it isn\'t secure enough\";s:9:\"marketing\";s:9:\"Marketing\";s:29:\"clear_content_of_current_view\";s:29:\"Clear content of current view\";s:27:\"highlight_editable_elements\";s:27:\"Highlight editable elements\";s:8:\"continue\";s:8:\"Continue\";s:24:\"you_have_unsaved_changes\";s:25:\"You have unsaved changes.\";s:38:\"clear_content_of_selected_target_group\";s:38:\"Clear content of selected Target Group\";s:86:\"visitors_of_this_page_will_be_automatically_associated_with_the_selected_target_groups\";s:86:\"Visitors of this page will be automatically associated with the selected Target Groups\";s:19:\"assign_target_group\";s:19:\"Assign Target Group\";s:20:\"assign_target_groups\";s:20:\"Assign Target Groups\";s:13:\"target_groups\";s:13:\"Target Groups\";s:29:\"edit_content_for_target_group\";s:29:\"Edit Content for Target Group\";s:22:\"global_targeting_rules\";s:22:\"Global Targeting Rules\";s:15:\"personalization\";s:15:\"Personalization\";s:19:\"shared_translations\";s:19:\"Shared Translations\";s:9:\"textfield\";s:9:\"Textfield\";s:8:\"add_data\";s:8:\"Add data\";s:11:\"add_hotspot\";s:11:\"Add hotspot\";s:10:\"add_marker\";s:10:\"Add marker\";s:22:\"add_marker_or_hotspots\";s:22:\"Add marker or hotspots\";s:30:\"enter_the_name_of_the_new_item\";s:30:\"Enter the name of the new item\";s:14:\"custom_reports\";s:14:\"Custom Reports\";s:10:\"start_date\";s:10:\"Start date\";s:19:\"start_date_relative\";s:30:\"Start date (relative to today)\";s:8:\"end_date\";s:8:\"End date\";s:17:\"end_date_relative\";s:28:\"End date (relative to today)\";s:25:\"relative_date_description\";s:40:\"i.e. -1m +1d (d=days, m=months, y=years)\";s:17:\"source_definition\";s:17:\"Source Definition\";s:16:\"clear_thumbnails\";s:16:\"Clear Thumbnails\";s:10:\"recipients\";s:10:\"Recipients\";s:21:\"newsletter_send_error\";s:62:\"Can\'t send your newsletter, please contact your administrator!\";s:23:\"newsletter_sent_message\";s:154:\"Your newsletter is now sent to all recipients, this process is done in the background (you can close pimcore in the meantime) and can take up to one hour.\";s:59:\"do_you_really_want_to_send_the_newsletter_to_all_recipients\";s:59:\"Do you really want to send the newsletter to all recipients\";s:20:\"send_test_newsletter\";s:20:\"Send Test-Newsletter\";s:15:\"send_newsletter\";s:19:\"Send Newsletter Now\";s:13:\"object_filter\";s:13:\"Object Filter\";s:14:\"add_newsletter\";s:14:\"Add Newsletter\";s:10:\"plain_text\";s:10:\"Plain Text\";s:21:\"plain_text_email_part\";s:21:\"Email Plain Text Part\";s:10:\"newsletter\";s:10:\"Newsletter\";s:3:\"crm\";s:3:\"CRM\";s:12:\"notes_events\";s:18:\"Notes &amp; Events\";s:13:\"delete_folder\";s:13:\"Delete Folder\";s:4:\"home\";s:4:\"Home\";s:9:\"html_tags\";s:9:\"HTML-Tags\";s:7:\"subject\";s:7:\"Subject\";s:12:\"poster_image\";s:12:\"Poster-Image\";s:6:\"tablet\";s:6:\"Tablet\";s:8:\"hardlink\";s:8:\"Hardlink\";s:10:\"convert_to\";s:10:\"Convert to\";s:7:\"replace\";s:7:\"Replace\";s:9:\"targeting\";s:9:\"Targeting\";s:7:\"content\";s:7:\"Content\";s:17:\"paste_inheritance\";s:19:\"Paste (inheritance)\";s:12:\"are_you_sure\";s:13:\"Are you sure?\";s:24:\"all_content_will_be_lost\";s:24:\"All content will be lost\";s:23:\"content_master_document\";s:23:\"Content-Master Document\";s:9:\"overwrite\";s:9:\"Overwrite\";s:24:\"click_right_to_overwrite\";s:24:\"Click right to overwrite\";s:19:\"open_document_by_id\";s:13:\"Open Document\";s:16:\"open_asset_by_id\";s:10:\"Open Asset\";s:17:\"open_object_by_id\";s:11:\"Open Object\";s:8:\"open_url\";s:8:\"Open URL\";s:17:\"element_not_found\";s:17:\"Element not found\";s:15:\"import_from_url\";s:15:\"Import from URL\";s:40:\"do_you_really_want_to_leave_the_editmode\";s:46:\"Do you really want to leave the editmode (NO!)\";s:31:\"or_specify_an_asset_image_below\";s:31:\"or specify an asset image below\";s:18:\"saved_successfully\";s:19:\"Saved successfully!\";s:8:\"qr_codes\";s:8:\"QR-Codes\";s:7:\"element\";s:7:\"Element\";s:26:\"details_for_selected_event\";s:28:\"Details for selected element\";s:6:\"fields\";s:6:\"Fields\";s:24:\"not_possible_with_paging\";s:112:\"Sorry, this is not possible in elements which are paged, try to restructure your data to avoid pages in the tree\";s:9:\"inherited\";s:9:\"Inherited\";s:6:\"length\";s:6:\"Length\";s:12:\"show_in_tree\";s:12:\"Show in Tree\";s:10:\"exactmatch\";s:11:\"exact match\";s:7:\"desktop\";s:7:\"Desktop\";s:7:\"drag_me\";s:7:\"Drag Me\";s:10:\"serverVars\";s:16:\"Server Variables\";s:11:\"http_errors\";s:11:\"HTTP Errors\";s:10:\"attributes\";s:10:\"Attributes\";s:4:\"code\";s:4:\"Code\";s:4:\"tags\";s:4:\"Tags\";s:22:\"tag_snippet_management\";s:24:\"Tag & Snippet Management\";s:21:\"Click here to proceed\";s:21:\"Click here to proceed\";s:98:\"Your browser is not supported. Please install the latest version of one of the following browsers.\";s:98:\"Your browser is not supported. Please install the latest version of one of the following browsers.\";s:18:\"open_in_new_window\";s:18:\"Open in new Window\";s:26:\"open_preview_in_new_window\";s:26:\"Open preview in new window\";s:13:\"limit_reached\";s:13:\"Limit reached\";s:13:\"casesensitive\";s:14:\"case-sensitive\";s:12:\"path_aliases\";s:12:\"Path Aliases\";s:4:\"path\";s:4:\"Path\";s:16:\"create_redirects\";s:55:\"Create redirects to keep URLs working (incl. children)?\";s:11:\"auto_create\";s:11:\"Auto create\";s:10:\"pretty_url\";s:10:\"Pretty URL\";s:16:\"pretty_url_label\";s:47:\"Pretty URL (overrides path from tree-structure)\";s:26:\"search_engine_optimization\";s:26:\"Search Engine Optimization\";s:26:\"password_cannot_be_changed\";s:26:\"Password cannot be changed\";s:12:\"old_password\";s:12:\"Old Password\";s:12:\"new_password\";s:12:\"New Password\";s:15:\"retype_password\";s:15:\"Retype Password\";s:19:\"seo_document_editor\";s:19:\"SEO Document Editor\";s:21:\"clear_temporary_files\";s:21:\"Clear temporary files\";s:7:\"reports\";s:7:\"Reports\";s:5:\"roles\";s:5:\"Roles\";s:4:\"send\";s:4:\"Send\";s:8:\"Password\";s:8:\"Password\";s:20:\"Forgot your password\";s:20:\"Forgot your password\";s:13:\"Back to Login\";s:13:\"Back to Login\";s:76:\"Enter your username and pimcore will send a login link to your email address\";s:76:\"Enter your username and Pimcore will send a login link to your email address\";s:26:\"Please check your mailbox.\";s:26:\"Please check your mailbox.\";s:5:\"Login\";s:5:\"Login\";s:6:\"Submit\";s:6:\"Submit\";s:59:\"A temporary login link has been sent to your email address.\";s:59:\"A temporary login link has been sent to your email address.\";s:38:\"use_current_player_position_as_preview\";s:38:\"Use current player position as preview\";s:20:\"select_image_preview\";s:20:\"Select Image Preview\";s:21:\"preview_not_available\";s:21:\"Preview not available\";s:10:\"360_viewer\";s:12:\"360° Viewer\";s:16:\"standard_preview\";s:16:\"Standard Preview\";s:6:\"status\";s:6:\"Status\";s:25:\"video_preview_in_progress\";s:52:\"The preview for this video is currently in progress.\";s:54:\"php_cli_binary_and_or_ffmpeg_binary_setting_is_missing\";s:130:\"PHP-CLI binary or FFMPEG is not available, please ensure that both are installed/executable and configured in the system settings!\";s:16:\"video_thumbnails\";s:16:\"Video Thumbnails\";s:8:\"optional\";s:8:\"optional\";s:35:\"do_you_really_want_to_close_pimcore\";s:36:\"Do you really want to close Pimcore?\";s:17:\"drop_element_here\";s:17:\"Drop element here\";s:29:\"select_specific_area_of_image\";s:29:\"Select specific area of image\";s:18:\"error_pasting_item\";s:20:\"Unable to paste item\";s:35:\"paste_recursive_updating_references\";s:36:\"Paste recursive, updating references\";s:12:\"add_hardlink\";s:12:\"Add Hardlink\";s:11:\"source_path\";s:11:\"Source path\";s:22:\"properties_from_source\";s:35:\"Use properties from source document\";s:18:\"childs_from_source\";s:33:\"Use children from source document\";s:28:\"click_right_for_more_options\";s:28:\"Click right for more options\";s:11:\"move_to_tab\";s:11:\"Move to Tab\";s:13:\"not_supported\";s:13:\"Not supported\";s:9:\"edit_link\";s:9:\"Edit Link\";s:6:\"resize\";s:6:\"Resize\";s:13:\"scalebyheight\";s:15:\"Scale by Height\";s:12:\"scalebywidth\";s:14:\"Scale by Width\";s:4:\"crop\";s:4:\"Crop\";s:7:\"cleanup\";s:7:\"Cleanup\";s:29:\"this_element_cannot_be_edited\";s:29:\"This element cannot be edited\";s:7:\"details\";s:7:\"Details\";s:63:\"cannot_save_object_please_try_to_edit_the_object_in_detail_view\";s:81:\"<b>Cannot save object!</b><br />Please try to edit the object in the detail view.\";s:4:\"size\";s:4:\"Size\";s:13:\"select_a_file\";s:13:\"Select a file\";s:25:\"upload_compatibility_mode\";s:32:\"Upload File (Compatibility Mode)\";s:45:\"the_system_is_in_maintenance_mode_please_wait\";s:46:\"The system is in maintenance mode, please wait\";s:8:\"activate\";s:8:\"Activate\";s:18:\"image_is_too_small\";s:47:\"Image is too small, please choose a bigger one.\";s:19:\"name_is_not_allowed\";s:19:\"Name is not allowed\";s:18:\"import_from_server\";s:18:\"Import from Server\";s:12:\"upload_files\";s:12:\"Upload Files\";s:10:\"upload_zip\";s:18:\"Upload ZIP Archive\";s:13:\"document_root\";s:13:\"Document Root\";s:21:\"batch_change_selected\";s:19:\"Batch edit selected\";s:15:\"batch_operation\";s:15:\"Batch Operation\";s:16:\"modificationdate\";s:17:\"Modification Date\";s:15:\"download_as_zip\";s:15:\"Download as ZIP\";s:6:\"locked\";s:6:\"Locked\";s:43:\"element_cannot_be_move_because_it_is_locked\";s:45:\"Element cannot be moved because it is locked.\";s:23:\"element_cannot_be_moved\";s:32:\"The element cannot be moved here\";s:22:\"no_collections_allowed\";s:22:\"No Collections allowed\";s:37:\"this_is_a_newer_not_published_version\";s:37:\"This is a newer not published version\";s:16:\"filter_condition\";s:16:\"Filter Condition\";s:9:\"all_types\";s:9:\"All Types\";s:5:\"audio\";s:5:\"Audio\";s:5:\"video\";s:5:\"Video\";s:7:\"archive\";s:7:\"Archive\";s:7:\"unknown\";s:7:\"Unknown\";s:5:\"class\";s:5:\"Class\";s:4:\"page\";s:4:\"Page\";s:7:\"snippet\";s:7:\"Snippet\";s:6:\"folder\";s:6:\"Folder\";s:14:\"your_selection\";s:14:\"Your Selection\";s:37:\"double_click_to_add_item_to_selection\";s:61:\"Double-click an item on the left to add it to this selection.\";s:5:\"label\";s:5:\"Label\";s:17:\"error_auth_failed\";s:36:\"Login failed!<br />Please try again.\";s:21:\"error_session_expired\";s:41:\"Session expired!<br />Please login again.\";s:4:\"site\";s:4:\"Site\";s:10:\"descending\";s:10:\"Descending\";s:9:\"ascending\";s:9:\"Ascending\";s:4:\"sort\";s:4:\"Sort\";s:7:\"results\";s:7:\"Results\";s:9:\"dimension\";s:9:\"Dimension\";s:6:\"metric\";s:6:\"Metric\";s:7:\"segment\";s:7:\"Segment\";s:13:\"data_explorer\";s:13:\"Data Explorer\";s:10:\"navigation\";s:10:\"Navigation\";s:9:\"entrances\";s:9:\"Entrances\";s:5:\"exits\";s:5:\"Exits\";s:7:\"restore\";s:7:\"Restore\";s:6:\"amount\";s:6:\"Amount\";s:16:\"flush_recyclebin\";s:17:\"Flush Recycle Bin\";s:10:\"recyclebin\";s:11:\"Recycle Bin\";s:9:\"deletedby\";s:10:\"Deleted By\";s:18:\"open_select_editor\";s:21:\"Open Selection-Editor\";s:6:\"ignore\";s:6:\"Ignore\";s:5:\"blank\";s:5:\"Blank\";s:16:\"email_log_resend\";s:12:\"Resend email\";s:27:\"email_log_resend_window_msg\";s:71:\"Please confirm that you want to send the email again to all recipients.\";s:11:\"select_site\";s:13:\"Select a site\";s:9:\"main_site\";s:9:\"Main Site\";s:8:\"filename\";s:8:\"Filename\";s:20:\"unsupported_filetype\";s:20:\"Unsupported Filetype\";s:27:\"different_number_of_columns\";s:27:\"Different number of columns\";s:39:\"email_log_resend_window_success_message\";s:55:\"The email has been sent successfully to all recipients.\";s:37:\"email_log_resend_window_error_message\";s:49:\"An error occurred. The email has not been resent.\";s:10:\"error_jobs\";s:25:\"The following jobs failed\";s:12:\"batch_change\";s:14:\"Batch edit all\";s:16:\"batch_edit_field\";s:20:\"Batch edit all field\";s:25:\"batch_edit_field_selected\";s:25:\"Batch edit selected field\";s:9:\"published\";s:9:\"Published\";s:3:\"all\";s:3:\"all\";s:14:\"items_per_page\";s:14:\"Items per page\";s:22:\"reload_pimcore_changes\";s:89:\"You have to reload Pimcore for the changes to take effect, would you like to do this now?\";s:4:\"info\";s:4:\"Info\";s:30:\"area_brick_assign_info_message\";s:61:\"Please use drag & drop to assign a brick to the desired block\";s:16:\"metainfo_copy_id\";s:20:\"Copy ID to clipboard\";s:22:\"metainfo_copy_fullpath\";s:27:\"Copy full path to clipboard\";s:22:\"metainfo_copy_deeplink\";s:26:\"Copy deeplink to clipboard\";s:2:\"or\";s:2:\"or\";s:4:\"move\";s:4:\"Move\";s:22:\"force_picture_html_tag\";s:30:\"Force &lt;picture&gt; HTML tag\";s:14:\"paste_contents\";s:24:\"Paste only contents here\";s:14:\"paste_as_child\";s:14:\"Paste as child\";s:25:\"paste_recursive_as_childs\";s:26:\"Paste as child (recursive)\";s:13:\"view_original\";s:13:\"View Original\";s:4:\"feed\";s:4:\"Feed\";s:14:\"no_items_found\";s:14:\"No items found\";s:10:\"public_url\";s:10:\"Public URL\";s:9:\"pageviews\";s:9:\"Pageviews\";s:6:\"visits\";s:6:\"Visits\";s:6:\"detail\";s:6:\"Detail\";s:15:\"report_settings\";s:15:\"Report Settings\";s:8:\"overview\";s:8:\"Overview\";s:16:\"visitor_overview\";s:16:\"Visitor Overview\";s:5:\"other\";s:5:\"Other\";s:16:\"google_analytics\";s:16:\"Google Analytics\";s:21:\"reports_and_marketing\";s:19:\"Marketing & Reports\";s:25:\"save_only_scheduled_tasks\";s:25:\"Save only scheduled tasks\";s:15:\"modified_assets\";s:15:\"Modified Assets\";s:22:\"modification_statistic\";s:27:\"Changes in the last 31 days\";s:7:\"message\";s:7:\"Message\";s:11:\"add_portlet\";s:11:\"Add Portlet\";s:18:\"modified_documents\";s:18:\"Modified Documents\";s:16:\"modified_objects\";s:16:\"Modified Objects\";s:7:\"welcome\";s:7:\"Welcome\";s:16:\"save_and_publish\";s:14:\"Save & Publish\";s:6:\"delete\";s:6:\"Delete\";s:4:\"save\";s:4:\"Save\";s:10:\"add_assets\";s:12:\"Add Asset(s)\";s:7:\"preview\";s:7:\"Preview\";s:8:\"advanced\";s:8:\"Advanced\";s:5:\"basic\";s:5:\"Basic\";s:4:\"list\";s:4:\"List\";s:4:\"view\";s:4:\"View\";s:7:\"publish\";s:7:\"Publish\";s:6:\"rename\";s:6:\"Rename\";s:8:\"settings\";s:8:\"Settings\";s:10:\"properties\";s:10:\"Properties\";s:8:\"versions\";s:8:\"Versions\";s:3:\"add\";s:3:\"Add\";s:3:\"sum\";s:3:\"Sum\";s:4:\"date\";s:4:\"Date\";s:4:\"user\";s:4:\"User\";s:4:\"note\";s:4:\"Note\";s:4:\"from\";s:4:\"From\";s:14:\"email_reply_to\";s:8:\"Reply To\";s:2:\"to\";s:2:\"To\";s:8:\"email_cc\";s:2:\"Cc\";s:9:\"email_bcc\";s:3:\"Bcc\";s:14:\"email_settings\";s:14:\"Email Settings\";s:35:\"email_settings_receiver_description\";s:240:\"Multiple recipients can be specified by separating the email addresses with a semicolon. <br/>Example: receiver@pimcore.org; receiver2@pimcore.org<br/>For \'From\' you can use additionally the syntax <i>My Name &lt;my-name@example.com&gt;</i>\";s:10:\"email_logs\";s:11:\"Sent Emails\";s:19:\"email_log_sent_Date\";s:9:\"Date sent\";s:4:\"html\";s:4:\"HTML\";s:4:\"text\";s:4:\"Text\";s:24:\"predefined_document_type\";s:24:\"Predefined Document Type\";s:10:\"controller\";s:10:\"Controller\";s:6:\"action\";s:6:\"Action\";s:7:\"actions\";s:7:\"Actions\";s:8:\"template\";s:8:\"Template\";s:3:\"key\";s:3:\"Key\";s:2:\"id\";s:2:\"ID\";s:4:\"name\";s:4:\"Name\";s:5:\"title\";s:5:\"Title\";s:11:\"description\";s:11:\"Description\";s:9:\"unpublish\";s:9:\"Unpublish\";s:6:\"target\";s:6:\"Target\";s:4:\"type\";s:4:\"Type\";s:13:\"create_folder\";s:10:\"Add Folder\";s:25:\"please_enter_the_new_name\";s:25:\"Please enter the new name\";s:8:\"add_page\";s:8:\"Add Page\";s:11:\"add_snippet\";s:11:\"Add Snippet\";s:9:\"add_email\";s:9:\"Add Email\";s:8:\"add_link\";s:8:\"Add Link\";s:4:\"copy\";s:4:\"Copy\";s:5:\"paste\";s:5:\"Paste\";s:14:\"close_all_tabs\";s:14:\"Close all tabs\";s:6:\"search\";s:6:\"Search\";s:6:\"import\";s:6:\"Import\";s:6:\"export\";s:6:\"Export\";s:8:\"glossary\";s:8:\"Glossary\";s:14:\"document_types\";s:14:\"Document Types\";s:21:\"predefined_properties\";s:21:\"Predefined Properties\";s:5:\"users\";s:5:\"Users\";s:7:\"profile\";s:7:\"Profile\";s:10:\"my_profile\";s:10:\"My Profile\";s:13:\"documentation\";s:13:\"Documentation\";s:11:\"report_bugs\";s:11:\"Report Bugs\";s:5:\"about\";s:5:\"About\";s:4:\"file\";s:4:\"File\";s:6:\"extras\";s:6:\"Extras\";s:4:\"help\";s:4:\"Help\";s:13:\"configuration\";s:13:\"Configuration\";s:5:\"value\";s:5:\"Value\";s:21:\"add_a_custom_property\";s:21:\"Add a custom Property\";s:7:\"general\";s:7:\"General\";s:8:\"language\";s:8:\"Language\";s:7:\"quality\";s:7:\"Quality\";s:6:\"format\";s:6:\"Format\";s:9:\"documents\";s:9:\"Documents\";s:6:\"assets\";s:6:\"Assets\";s:6:\"upload\";s:6:\"Upload\";s:5:\"width\";s:5:\"Width\";s:6:\"height\";s:6:\"Height\";s:5:\"empty\";s:5:\"Empty\";s:8:\"workflow\";s:8:\"Workflow\";s:6:\"modify\";s:7:\"Modify \";s:6:\"create\";s:7:\"Create \";s:4:\"edit\";s:4:\"Edit\";s:6:\"logout\";s:6:\"Logout\";s:7:\"refresh\";s:7:\"Refresh\";s:5:\"input\";s:5:\"Input\";s:8:\"checkbox\";s:8:\"Checkbox\";s:8:\"textarea\";s:8:\"Textarea\";s:5:\"image\";s:5:\"Image\";s:6:\"select\";s:6:\"Select\";s:4:\"base\";s:4:\"Base\";s:10:\"add_object\";s:10:\"Add Object\";s:6:\"border\";s:6:\"Border\";s:8:\"document\";s:8:\"Document\";s:5:\"asset\";s:5:\"Asset\";s:6:\"object\";s:6:\"Object\";s:6:\"remove\";s:6:\"Remove\";s:19:\"hidden_dependencies\";s:81:\"There are additional dependencies your user does not have the permissions to see.\";s:4:\"open\";s:4:\"Open\";s:4:\"days\";s:4:\"Days\";s:7:\"seemode\";s:7:\"Seemode\";s:17:\"edit_current_page\";s:14:\"Edit this page\";s:5:\"close\";s:5:\"Close\";s:19:\"name_already_in_use\";s:54:\"Name is already in use, please choose a different one.\";s:28:\"name_and_key_must_be_defined\";s:29:\"Name and Type must be defined\";s:21:\"mandatory_field_empty\";s:32:\"Please fill all mandatory fields\";s:6:\"reload\";s:6:\"Reload\";s:8:\"schedule\";s:8:\"Schedule\";s:4:\"time\";s:4:\"Time\";s:7:\"version\";s:7:\"Version\";s:6:\"active\";s:6:\"Active\";s:7:\"success\";s:7:\"Success\";s:12:\"translations\";s:12:\"Translations\";s:11:\"translation\";s:11:\"Translation\";s:9:\"firstname\";s:9:\"Firstname\";s:8:\"lastname\";s:8:\"Lastname\";s:5:\"email\";s:5:\"Email\";s:24:\"cant_move_node_to_target\";s:24:\"Moving node not possible\";s:19:\"error_moving_object\";s:25:\"Object could not be moved\";s:31:\"translations_are_not_configured\";s:30:\"Translation are not configured\";s:14:\"read_more_here\";s:20:\"Read more about here\";s:15:\"publish_version\";s:15:\"Publish version\";s:21:\"save_only_new_version\";s:21:\"Only save new version\";s:5:\"start\";s:5:\"Start\";s:2:\"su\";s:2:\"Su\";s:2:\"mo\";s:2:\"Mo\";s:2:\"tu\";s:2:\"Tu\";s:2:\"we\";s:2:\"We\";s:2:\"th\";s:2:\"Th\";s:2:\"fr\";s:2:\"Fr\";s:2:\"sa\";s:2:\"Sa\";s:18:\"session_error_text\";s:144:\"It seems there is a problem with your session. We recommend to reload this page in order to be save, but you can try to save your changes first.\";s:13:\"session_error\";s:13:\"Session Error\";s:11:\"please_wait\";s:15:\"Please wait ...\";s:8:\"download\";s:8:\"Download\";s:11:\"inheritable\";s:11:\"Inheritable\";s:9:\"redirects\";s:9:\"Redirects\";s:6:\"source\";s:6:\"Source\";s:4:\"link\";s:4:\"Link\";s:5:\"links\";s:5:\"Links\";s:4:\"abbr\";s:5:\"Abbr.\";s:7:\"acronym\";s:7:\"Acronym\";s:4:\"stop\";s:4:\"Stop\";s:12:\"dependencies\";s:12:\"Dependencies\";s:8:\"requires\";s:8:\"Requires\";s:11:\"required_by\";s:11:\"Required By\";s:11:\"search_edit\";s:23:\"Search, Edit and Export\";s:7:\"subtype\";s:7:\"Subtype\";s:12:\"initializing\";s:16:\"Initializing ...\";s:20:\"please_select_a_type\";s:20:\"Please select a type\";s:6:\"filter\";s:6:\"Filter\";s:8:\"test_url\";s:8:\"Test URL\";s:5:\"field\";s:5:\"Field\";s:8:\"operator\";s:8:\"Operator\";s:5:\"apply\";s:5:\"Apply\";s:4:\"show\";s:4:\"Show\";s:10:\"robots.txt\";s:10:\"robots.txt\";s:6:\"public\";s:6:\"Public\";s:18:\"maximum_2_versions\";s:31:\"You can compare max. 2 versions\";s:5:\"error\";s:5:\"Error\";s:17:\"element_is_locked\";s:58:\"The desired element is currently opened by another person:\";s:21:\"element_lock_question\";s:33:\"Would you like to open it anyway?\";s:5:\"since\";s:5:\"Since\";s:9:\"longitude\";s:9:\"Longitude\";s:8:\"latitude\";s:8:\"Latitude\";s:8:\"geopoint\";s:16:\"Geographic Point\";s:6:\"cancel\";s:6:\"Cancel\";s:18:\"open_search_editor\";s:18:\"Open Search Editor\";s:10:\"parameters\";s:10:\"Parameters\";s:6:\"anchor\";s:6:\"Anchor\";s:9:\"accesskey\";s:9:\"Accesskey\";s:8:\"relation\";s:8:\"Relation\";s:8:\"tabindex\";s:9:\"Tab-Index\";s:7:\"not_set\";s:7:\"not set\";s:10:\"export_csv\";s:10:\"CSV Export\";s:11:\"export_xlsx\";s:11:\"XLSX Export\";s:10:\"import_csv\";s:10:\"CSV Import\";s:19:\"show_welcome_screen\";s:30:\"Show welcome screen on startup\";s:20:\"importFileHasHeadRow\";s:20:\"first row = headline\";s:19:\"error_deleting_item\";s:21:\"Could not delete item\";s:42:\"overwrite_object_with_same_key_description\";s:504:\"When overwrite is checked, instead of creating a new object for each import row, objects with the same key are replaced. Existing objects in your import folder with keys not contained in the import file will remain untouched. Please be aware that all objects which have a matching key in the import file will be replaced in the target folder. This is also true for objects based on a different class or even object folders! Object fields which are set to ignore in the field mapping keep their old value.\";s:34:\"object_import_filename_description\";s:57:\"select the field which is used to generate the object key\";s:17:\"save_pubish_close\";s:23:\"Save, publish and close\";s:10:\"save_close\";s:14:\"Save and close\";s:13:\"error_general\";s:99:\"Server threw exception - could not perform action. Please reload the admin interface and try again.\";s:11:\"owner_class\";s:11:\"Owner class\";s:11:\"owner_field\";s:11:\"Owner field\";s:22:\"nonownerobject_warning\";s:109:\"The current object is not the owner of these relations, making changes here might make saving the object slow\";s:30:\"element_implicit_edit_question\";s:63:\"Would you still like to implicitly  modify it with this action?\";s:20:\"element_open_message\";s:48:\"The desired element is already open for editing.\";s:30:\"nonownerobjects_self_selection\";s:113:\"In non owner objects a  relation to myself is not possible, please use original field instead of non owner field.\";s:7:\"warning\";s:7:\"Warning\";s:7:\"consent\";s:7:\"Consent\";s:25:\"csv_object_export_warning\";s:181:\"Please note that the CSV export does not support all data types. Consequently, re-importing an exported CSV to pimcore might lead to data loss. Press OK to continue with the export.\";s:21:\"object_export_warning\";s:98:\"Please note that the export does not support all data types. Press OK to continue with the export.\";s:19:\"error_renaming_item\";s:43:\"There was an error while renaming the item.\";s:18:\"navigation_exclude\";s:23:\"Exclude from Navigation\";s:8:\"variants\";s:8:\"Variants\";s:7:\"variant\";s:7:\"Variant\";s:11:\"add_variant\";s:11:\"Add variant\";s:27:\"delete_message_dependencies\";s:38:\"There are dependencies, delete anyway?\";s:14:\"delete_message\";s:39:\"Do you really want to delete this item?\";s:20:\"delete_class_message\";s:41:\"Do you really want to delete class \'%s\' ?\";s:20:\"delete_message_batch\";s:44:\"Do you really want to delete these elements?\";s:18:\"delete_error_batch\";s:84:\"Following items cannot be deleted, do you wanna proceed with deleting the remaining?\";s:12:\"delete_error\";s:35:\"The item cannot be deleted. Reason:\";s:31:\"no_further_objectbricks_allowed\";s:31:\"No further objectbricks allowed\";s:21:\"grid_current_language\";s:16:\"Current language\";s:21:\"selected_grid_columns\";s:21:\"Selected grid columns\";s:14:\"object_columns\";s:14:\"Object columns\";s:14:\"system_columns\";s:14:\"System columns\";s:7:\"columns\";s:7:\"Columns\";s:13:\"children_grid\";s:13:\"Children Grid\";s:13:\"only_children\";s:20:\"just direct children\";s:17:\"only_unreferenced\";s:17:\"only unreferenced\";s:3:\"cut\";s:3:\"Cut\";s:17:\"paste_cut_element\";s:21:\"Paste cut-out element\";s:13:\"memorize_tabs\";s:18:\"Memorize open tabs\";s:15:\"element_history\";s:24:\"Recently Opened Elements\";s:10:\"dashboards\";s:10:\"Dashboards\";s:20:\"portlet_customreport\";s:13:\"Custom Report\";s:24:\"clear_marker_or_hotspots\";s:39:\"Clear Marker, Hotspot and Cropping Data\";s:16:\"hotspots_cleared\";s:43:\"Hotspots, Markers and Cropping Data cleared\";s:8:\"deeplink\";s:8:\"Deeplink\";s:13:\"click_to_open\";s:15:\"(click to open)\";s:12:\"add_metadata\";s:12:\"Add Metadata\";s:26:\"pimcore_icon_edit_pdf_text\";s:17:\"Edit text version\";s:7:\"chapter\";s:7:\"Chapter\";s:15:\"search_and_move\";s:13:\"Search & Move\";s:9:\"searching\";s:12:\"Searching...\";s:25:\"predefined_asset_metadata\";s:25:\"Predefined Asset Metadata\";s:35:\"add_predefined_metadata_definitions\";s:26:\"Add predefined definitions\";s:9:\"scheduled\";s:9:\"Scheduled\";s:26:\"naming_requirements_3chars\";s:56:\"Name must be alphanumeric and at least 3 characters long\";s:22:\"there_are_more_columns\";s:47:\"There are more columns than currently displayed\";s:9:\"merge_csv\";s:22:\"Import &amp; Merge CSV\";s:26:\"translation_merger_current\";s:12:\"Current Text\";s:22:\"translation_merger_csv\";s:13:\"Text from CSV\";s:16:\"nothing_to_merge\";s:25:\"There is nothing to merge\";s:21:\"csv_seperated_options\";s:21:\"CSV seperated options\";s:26:\"csv_seperated_options_info\";s:173:\"The list of available options can be specified as comma-seperated list, as single-column values or  mixed. For the single-column way, the key will also be used as the value.\";s:10:\"first_page\";s:10:\"First Page\";s:13:\"previous_page\";s:13:\"Previous Page\";s:9:\"next_page\";s:9:\"Next Page\";s:9:\"last_page\";s:9:\"Last Page\";s:18:\"no_data_to_display\";s:18:\"No data to display\";s:29:\"classificationstore_no_groups\";s:15:\"No groups found\";s:27:\"classificationstore_no_keys\";s:13:\"No keys found\";s:34:\"classificationstore_no_collections\";s:14:\"No collections\";s:12:\"remove_group\";s:12:\"Remove Group\";s:9:\"reference\";s:9:\"Reference\";s:17:\"converter_service\";s:17:\"Converter service\";s:25:\"element_tag_configuration\";s:17:\"Tag Configuration\";s:20:\"element_tag_all_tags\";s:8:\"All Tags\";s:25:\"element_tag_filtered_tags\";s:13:\"Filtered Tags\";s:25:\"enter_new_name_of_the_tag\";s:25:\"Enter new name of the Tag\";s:13:\"assigned_tags\";s:13:\"Assigned Tags\";s:11:\"filter_tags\";s:15:\"Filter for Tags\";s:19:\"consider_child_tags\";s:23:\"Consider child tags too\";s:15:\"tags_assignment\";s:15:\"Tags Assignment\";s:11:\"tags_search\";s:11:\"Tags Search\";s:6:\"revert\";s:6:\"Revert\";s:18:\"identifier_warning\";s:95:\"Be careful with the unique identifier because table names can contain only up to 64 characters.\";s:17:\"unique_identifier\";s:17:\"Unique identifier\";s:18:\"invalid_identifier\";s:18:\"Invalid identifier\";s:25:\"identifier_already_exists\";s:25:\"Identifier already exists\";s:13:\"batch_applied\";s:13:\"Batch applied\";s:10:\"apply_tags\";s:22:\"Apply tags to Children\";s:21:\"remove_and_apply_tags\";s:33:\"Remove and apply tags to children\";s:16:\"batch_assignment\";s:20:\"Tag batch assignment\";s:22:\"batch_assignment_error\";s:26:\"Tag batch assignment error\";s:17:\"no_children_found\";s:18:\"No Children found.\";s:12:\"asset_search\";s:13:\"Search Assets\";s:15:\"document_search\";s:16:\"Search Documents\";s:13:\"object_search\";s:14:\"Search Objects\";s:4:\"more\";s:4:\"More\";s:16:\"open_translation\";s:16:\"Open Translation\";s:22:\"link_existing_document\";s:22:\"Link existing Document\";s:17:\"using_inheritance\";s:17:\"Using Inheritance\";s:12:\"new_document\";s:12:\"New Document\";s:6:\"parent\";s:6:\"Parent\";s:16:\"update_available\";s:16:\"Update Available\";s:23:\"target_document_invalid\";s:51:\"Please select a target document with valid language\";s:30:\"target_document_needs_language\";s:36:\"Target document needs a language set\";s:5:\"tools\";s:5:\"Tools\";s:12:\"perspectives\";s:12:\"Perspectives\";s:13:\"filter_active\";s:14:\"Filter active!\";s:17:\"save_grid_options\";s:17:\"Save Grid Options\";s:12:\"reset_config\";s:13:\"Reset changes\";s:20:\"reset_config_tooltip\";s:88:\"This will reset (and save) the grid column configuration for this element to its default\";s:22:\"error_resetting_config\";s:29:\"Error resetting configuration\";s:18:\"marketing_settings\";s:18:\"Marketing Settings\";s:30:\"cross_tree_moves_not_supported\";s:34:\"Cross tree moves not yet supported\";s:13:\"add_printpage\";s:13:\"Add PrintPage\";s:18:\"add_printcontainer\";s:18:\"Add PrintContainer\";s:21:\"web2print_preview_pdf\";s:22:\"Generate & Preview PDF\";s:29:\"web2print_cancel_pdf_creation\";s:19:\"Cancel PDF Creation\";s:22:\"web2print_generate_pdf\";s:12:\"Generate PDF\";s:22:\"web2print_download_pdf\";s:12:\"Download PDF\";s:24:\"web2print_last-generated\";s:14:\"Last Generated\";s:31:\"web2print_last-generate-message\";s:21:\"Last Generate Message\";s:9:\"web2print\";s:12:\"Web-to-Print\";s:32:\"web2print_prepare_pdf_generation\";s:22:\"Prepare PDF Generation\";s:30:\"web2print_start_html_rendering\";s:20:\"Start HTML Rendering\";s:33:\"web2print_finished_html_rendering\";s:23:\"Finished HTML Rendering\";s:25:\"web2print_saved_html_file\";s:15:\"Saved HTML File\";s:24:\"web2print_pdf_conversion\";s:14:\"PDF Conversion\";s:29:\"web2print_saving_pdf_document\";s:17:\"Save PDF Document\";s:16:\"web2print_author\";s:6:\"Author\";s:22:\"web2print_printermarks\";s:12:\"Printermarks\";s:22:\"web2print_addOverprint\";s:12:\"Overprinting\";s:19:\"web2print_bookmarks\";s:9:\"Bookmarks\";s:9:\"close_tab\";s:9:\"Close Tab\";s:24:\"web2print_only_published\";s:39:\"Only possible with published documents.\";s:27:\"web2print_documents_changed\";s:44:\"Documents changed since last pdf generation.\";s:25:\"web2print_enableDebugMode\";s:17:\"Enable debug mode\";s:32:\"web2print_enableLenientHttpsMode\";s:25:\"Enable lenient HTTPS mode\";s:36:\"web2print_enableLenientHttpsMode_txt\";s:72:\"Enable this option if PDFreactor fails to connect successfully via HTTPS\";s:13:\"about_pimcore\";s:22:\"ABOUT PIMCORE PLATFORM\";s:5:\"phone\";s:5:\"Phone\";s:24:\"workflow_additional_info\";s:22:\"Additional Information\";s:5:\"notes\";s:5:\"Notes\";s:16:\"workflow_actions\";s:7:\"Actions\";s:23:\"workflow_perform_action\";s:14:\"Perform Action\";s:23:\"workflow_notes_required\";s:16:\"Notes (Required)\";s:23:\"workflow_notes_optional\";s:16:\"Notes (Optional)\";s:36:\"workflow_notes_requred_field_message\";s:25:\"\"%s\" is a required field.\";s:40:\"workflow_transition_applied_successfully\";s:27:\"Action applied successfully\";s:42:\"workflow_change_email_notification_subject\";s:39:\"Workflow update for %s in workflow \'%s\'\";s:39:\"workflow_change_email_notification_text\";s:65:\"For %s with ID %s the action \"%s\" was triggered in workflow \'%s\'.\";s:43:\"workflow_change_email_notification_deeplink\";s:24:\"Deeplink to the element.\";s:39:\"workflow_change_email_notification_note\";s:11:\"Note Added:\";s:16:\"workflow_details\";s:16:\"Workflow Details\";s:14:\"workflow_graph\";s:14:\"Workflow Graph\";s:22:\"workflow_current_state\";s:13:\"Current State\";s:22:\"workflow_cmd_not_found\";s:86:\"Please install the \"%s\" console executable on the server to render the workflow graph.\";s:32:\"please_enter_the_id_of_the_asset\";s:64:\"Please enter the ID or Path (e.g. /images/logo.jpg) of the asset\";s:33:\"please_enter_the_id_of_the_object\";s:41:\"Please enter the ID or Path of the object\";s:35:\"please_enter_the_id_of_the_document\";s:73:\"Please enter the ID, Path or URL (also including http://) of the document\";s:27:\"element_has_unsaved_changes\";s:27:\"Element has unsaved changes\";s:31:\"element_unsaved_changes_message\";s:54:\"All unsaved changes will be lost, are you really sure?\";s:35:\"newsletter_enableTrackingParameters\";s:32:\"Add Tracking Parameters to Links\";s:6:\"medium\";s:6:\"Medium\";s:22:\"newsletter_sendingMode\";s:12:\"Sending Mode\";s:29:\"newsletter_sendingmode_single\";s:39:\"Single (Render every Mail individually)\";s:28:\"newsletter_sendingmode_batch\";s:29:\"Batch (Render Mail only once)\";s:23:\"newsletter_sendingPanel\";s:24:\"Newsletter Sending Panel\";s:24:\"newsletter_dirty_warning\";s:47:\"Newsletter is not saved yet. Please save first.\";s:18:\"newsletter_sending\";s:18:\"Sending Newsletter\";s:24:\"newsletter_sourceAdapter\";s:22:\"Address Source Adapter\";s:18:\"newsletter_default\";s:19:\"Default Object List\";s:18:\"newsletter_csvList\";s:8:\"CSV List\";s:19:\"newsletter_testsend\";s:23:\"Newsletter Test Sending\";s:28:\"newsletter_test_sent_message\";s:33:\"Test Newsletter sent successfully\";s:20:\"add_object_mbx_title\";s:25:\"Add new Object of type %s\";s:18:\"merge_translations\";s:18:\"Merge Translations\";s:24:\"newsletter_choose_report\";s:15:\"Choose a report\";s:27:\"newsletter_email_field_name\";s:16:\"Email field name\";s:4:\"mode\";s:4:\"Mode\";s:15:\"custom_download\";s:15:\"Custom Download\";s:13:\"original_file\";s:13:\"Original File\";s:10:\"web_format\";s:10:\"Web Format\";s:12:\"print_format\";s:12:\"Print Format\";s:13:\"office_format\";s:13:\"Office Format\";s:15:\"change_password\";s:15:\"Change Password\";s:32:\"file_is_bigger_that_upload_limit\";s:73:\"The following file is bigger than the actual upload limit of your server:\";s:23:\"send_test_email_success\";s:95:\"Your test-email has been sent. Would you like to keep this window open to send the email again?\";s:32:\"press_crtl_and_select_to_compare\";s:35:\"Compare: Press CTRL + Click Version\";s:13:\"clear_filters\";s:13:\"Clear Filters\";s:18:\"tags_configuration\";s:18:\"Tags Configuration\";s:26:\"export_csv_include_headers\";s:23:\"CSV Export with headers\";s:19:\"analyze_permissions\";s:19:\"Analyze Permissions\";s:6:\"unique\";s:6:\"Unique\";s:9:\"operators\";s:9:\"Operators\";s:4:\"glue\";s:4:\"Glue\";s:6:\"prefix\";s:6:\"Prefix\";s:11:\"date_format\";s:11:\"Date Format\";s:9:\"attribute\";s:9:\"Attribute\";s:17:\"forward_attribute\";s:17:\"Forward Attribute\";s:5:\"upper\";s:5:\"Upper\";s:5:\"lower\";s:5:\"Lower\";s:8:\"disabled\";s:8:\"Disabled\";s:14:\"capitalization\";s:14:\"Capitalization\";s:28:\"piwik_all_websites_dashboard\";s:12:\"All Websites\";s:19:\"piwik_widget_widget\";s:6:\"Widget\";s:19:\"piwik_widget_period\";s:6:\"Period\";s:14:\"piwik_settings\";s:21:\"Matomo/Piwik Settings\";s:13:\"piwik_reports\";s:20:\"Matomo/Piwik Reports\";s:16:\"piwik_period_day\";s:3:\"Day\";s:17:\"piwik_period_week\";s:4:\"Week\";s:18:\"piwik_period_month\";s:5:\"Month\";s:17:\"piwik_period_year\";s:4:\"Year\";s:20:\"piwik_date_yesterday\";s:9:\"Yesterday\";s:16:\"piwik_date_today\";s:5:\"Today\";s:20:\"portlet_piwik_widget\";s:19:\"Matomo/Piwik Widget\";s:26:\"portlet_piwik_unconfigured\";s:49:\"Please use the gear icon to configure the widget.\";s:19:\"portlet_piwik_error\";s:22:\"Failed to load widget.\";s:19:\"restrict_to_locales\";s:19:\"Restrict to locales\";s:10:\"predefined\";s:10:\"Predefined\";s:12:\"save_as_copy\";s:12:\"Save as copy\";s:16:\"set_as_favourite\";s:16:\"Set as favourite\";s:18:\"grid_configuration\";s:18:\"Grid Configuration\";s:12:\"shared_users\";s:12:\"Shared Users\";s:12:\"shared_roles\";s:12:\"Shared Roles\";s:14:\"save_and_share\";s:12:\"Save & Share\";s:19:\"save_copy_and_share\";s:17:\"Save Copy & Share\";s:6:\"locale\";s:6:\"Locale\";s:8:\"ellipses\";s:8:\"Ellipses\";s:11:\"insensitive\";s:11:\"Insensitive\";s:9:\"yes_value\";s:9:\"Yes Value\";s:8:\"no_value\";s:8:\"No Value\";s:11:\"count_empty\";s:11:\"Count Empty\";s:8:\"as_array\";s:8:\"As array\";s:14:\"metadata_field\";s:14:\"Metadata field\";s:10:\"only_count\";s:13:\"Only as count\";s:9:\"parameter\";s:9:\"Parameter\";s:17:\"forward_parameter\";s:17:\"Forward Parameter\";s:8:\"is_array\";s:10:\"Array Type\";s:9:\"php_class\";s:9:\"PHP Class\";s:15:\"additional_data\";s:15:\"Additional Data\";s:7:\"flatten\";s:7:\"Flatten\";s:18:\"return_last_result\";s:18:\"Return last result\";s:9:\"skip_null\";s:9:\"Skip Null\";s:15:\"expand_children\";s:15:\"Expand children\";s:17:\"collapse_children\";s:17:\"Collapse children\";s:8:\"subtract\";s:8:\"Subtract\";s:8:\"multiply\";s:8:\"Multiply\";s:6:\"divide\";s:6:\"Divide\";s:20:\"apply_to_all_objects\";s:12:\"Apply to all\";s:24:\"apply_to_all_objects_msg\";s:123:\"There are other objects which already have their own favourite settings. Do you want to apply this config to those as well?\";s:6:\"encode\";s:6:\"Encode\";s:6:\"decode\";s:6:\"Decode\";s:9:\"serialize\";s:9:\"Serialize\";s:11:\"unserialize\";s:11:\"Unserialize\";s:6:\"offset\";s:6:\"Offset\";s:13:\"col_attribute\";s:20:\"Collection Attribute\";s:15:\"brick_attribute\";s:15:\"Brick Attribute\";s:24:\"csv_column_configuration\";s:20:\"Column Configuration\";s:20:\"import_configuration\";s:30:\"Import Configuration From JSON\";s:7:\"col_idx\";s:7:\"Col Idx\";s:6:\"column\";s:6:\"Column\";s:17:\"resolver_strategy\";s:17:\"Resolver Strategy\";s:17:\"resolver_settings\";s:17:\"Resolver Settings\";s:12:\"csv_settings\";s:12:\"CSV Settings\";s:11:\"skipheadrow\";s:13:\"Skip head row\";s:16:\"csv_file_preview\";s:16:\"CSV File Preview\";s:7:\"save_as\";s:7:\"Save as\";s:4:\"load\";s:4:\"Load\";s:27:\"import_export_configuration\";s:27:\"Import Export Configuration\";s:10:\"brick_type\";s:10:\"Brick Type\";s:8:\"renderer\";s:8:\"Renderer\";s:6:\"getter\";s:6:\"Getter\";s:6:\"string\";s:6:\"String\";s:4:\"bool\";s:4:\"Bool\";s:3:\"row\";s:3:\"Row\";s:13:\"import_report\";s:13:\"Import Report\";s:13:\"import_errors\";s:46:\"Some errors occurred. Check the import report!\";s:14:\"import_is_done\";s:14:\"Import is done\";s:18:\"import_file_prefix\";s:20:\"Prefix for new files\";s:14:\"skip_if_exists\";s:18:\"Skip row if exists\";s:20:\"php_class_or_service\";s:21:\"Class or service name\";s:14:\"create_parents\";s:14:\"Create parents\";s:8:\"fullpath\";s:9:\"Full Path\";s:16:\"create_on_demand\";s:16:\"Create on demand\";s:15:\"get_by_resolver\";s:16:\"Get By Attribute\";s:6:\"direct\";s:6:\"Direct\";s:17:\"skip_empty_values\";s:17:\"Skip empty values\";s:16:\"do_not_overwrite\";s:16:\"Do not overwrite\";s:5:\"never\";s:5:\"Never\";s:12:\"if_not_empty\";s:12:\"If not empty\";s:6:\"always\";s:6:\"Always\";s:9:\"delimiter\";s:9:\"Delimiter\";s:10:\"escapechar\";s:16:\"Escape Character\";s:14:\"lineterminator\";s:21:\"Line Terminator (hex)\";s:9:\"quotechar\";s:15:\"Quote Character\";s:14:\"share_globally\";s:14:\"Share globally\";s:19:\"gdpr_data_extractor\";s:19:\"GDPR Data Extractor\";s:16:\"no_configuration\";s:16:\"No Configuration\";s:24:\"no_configuration_message\";s:63:\"No column configuration is set. Do you really want to continue?\";s:20:\"share_configurations\";s:20:\"Share configurations\";s:18:\"enable_inheritance\";s:18:\"Enable Inheritance\";s:15:\"object_settings\";s:15:\"Object Settings\";s:12:\"drop_me_here\";s:43:\"Drag an item from the tree and drop it here\";s:18:\"clear_hotspots_msg\";s:96:\"This image contains additional data like markers or hotspots. Do you want to clear them as well?\";s:14:\"restore_failed\";s:14:\"Restore failed\";s:16:\"batch_append_all\";s:19:\"Batch append to all\";s:21:\"batch_append_selected\";s:24:\"Batch append to selected\";s:15:\"batch_append_to\";s:18:\"Append data to all\";s:24:\"batch_append_selected_to\";s:23:\"Append data to selected\";s:16:\"batch_remove_all\";s:21:\"Batch remove from all\";s:21:\"batch_remove_selected\";s:26:\"Batch remove from selected\";s:17:\"batch_remove_from\";s:20:\"Remove data from all\";s:26:\"batch_remove_selected_from\";s:25:\"Remove data from selected\";s:16:\"sort_children_by\";s:16:\"Sort Children By\";s:6:\"by_key\";s:12:\"Key (A to Z)\";s:14:\"by_key_reverse\";s:12:\"Key (Z to A)\";s:8:\"by_index\";s:14:\"Index (Manual)\";s:47:\"successful_object_change_children_sort_to_index\";s:40:\"Changed object children sorting to Index\";s:45:\"successful_object_change_children_sort_to_key\";s:38:\"Changed object children sorting to Key\";s:42:\"error_object_change_children_sort_to_index\";s:49:\"Unable to change object children sorting to Index\";s:40:\"error_object_change_children_sort_to_key\";s:47:\"Unable to change object children sorting to Key\";s:21:\"clear_version_message\";s:72:\"Do you really want to delete all non-published versions of this element?\";s:9:\"clear_all\";s:9:\"Clear All\";s:23:\"error_empty_file_upload\";s:14:\"File is empty!\";s:12:\"edit_as_html\";s:12:\"Edit as HTML\";s:18:\"edit_as_plain_text\";s:18:\"Edit as plain text\";s:11:\"type_column\";s:11:\"Type column\";s:4:\"keep\";s:4:\"keep\";s:24:\"download_selected_as_zip\";s:30:\"Download selected items as ZIP\";s:31:\"please_select_items_to_download\";s:43:\"Please select items to download in the list\";s:24:\"unlink_existing_document\";s:24:\"Unlink existing Document\";s:34:\"scheduled_block_delete_all_in_past\";s:23:\"Delete all past entries\";s:34:\"scheduled_block_really_delete_past\";s:48:\"Really delete all entries scheduled in the past?\";s:26:\"scheduled_block_delete_all\";s:18:\"Delete all entries\";s:33:\"scheduled_block_really_delete_all\";s:62:\"Really delete all scheduled entries, including future entries?\";s:12:\"key_bindings\";s:12:\"Key Bindings\";s:26:\"keybinding_openClassEditor\";s:17:\"Open Class Editor\";s:23:\"keybinding_showMetaInfo\";s:14:\"Show Meta Info\";s:25:\"keybinding_clearAllCaches\";s:16:\"Clear all Caches\";s:25:\"keybinding_clearDataCache\";s:16:\"Clear Data Cache\";s:11:\"2fa_disable\";s:11:\"Disable 2FA\";s:16:\"renew_2fa_secret\";s:23:\"Renew Two Factor Secret\";s:25:\"two_factor_authentication\";s:25:\"Two Factor Authentication\";s:14:\"2fa_alert_text\";s:289:\"Please scan the QR-Code and add it to your Google Authenticator. <br>If you don\'t have the Google Authenticator app installed on your mobile phone, please download it from the App Store/Play Store.<br><br> You will need to reload Pimcore and enter the code shown within the App afterwards!\";s:16:\"2fa_alert_submit\";s:27:\"Reload Pimcore & Enter Code\";s:16:\"setup_two_factor\";s:31:\"Setup Two Factor Authentication\";s:17:\"2fa_setup_message\";s:152:\"Two Factor Authentication is required for your account! You have to set it up in your profile settings, otherwise you will not be able to sign in again.\";s:15:\"set_focal_point\";s:15:\"Set Focal Point\";s:32:\"toggle_image_features_visibility\";s:31:\"Toggle Image Feature Visibility\";s:13:\"saving_failed\";s:14:\"Saving failed!\";s:25:\"failed_to_create_new_item\";s:44:\"Failed to create new item, please try again.\";s:6:\"bundle\";s:6:\"Bundle\";s:7:\"bundles\";s:7:\"Bundles\";s:7:\"product\";s:7:\"Product\";s:27:\"index_field_selection_field\";s:21:\"Index Field Selection\";s:24:\"indexFieldSelectionField\";s:21:\"Index Field Selection\";s:33:\"indexFieldSelectionField_settings\";s:44:\"Settings (Multi Index Field Selection Field)\";s:29:\"indexFieldSelectionFieldMulti\";s:30:\"Multiple Index Field Selection\";s:27:\"index_field_selection_combo\";s:20:\"Index Field Combobox\";s:24:\"indexFieldSelectionCombo\";s:20:\"Index Field Combobox\";s:33:\"indexFieldSelectionCombo_settings\";s:31:\"Settings (Index Field Combobox)\";s:18:\"specificPriceField\";s:20:\"Specific Price Field\";s:13:\"showAllFields\";s:15:\"Show all Fields\";s:15:\"considerTenants\";s:16:\"Consider Tenants\";s:25:\"bundle_ecommerce_mainmenu\";s:11:\"Online Shop\";s:30:\"bundle_ecommerce_pricing_rules\";s:13:\"Pricing Rules\";s:40:\"bundle_ecommerce_pricing_config_behavior\";s:8:\"Behavior\";s:39:\"bundle_ecommerce_pricing_config_additiv\";s:7:\"Additiv\";s:43:\"bundle_ecommerce_pricing_config_stopExecute\";s:9:\"Last rule\";s:51:\"bundle_ecommerce_pricing_config_condition_daterange\";s:10:\"Date range\";s:53:\"bundle_ecommerce_pricing_config_condition_cart_amount\";s:11:\"Cart amount\";s:50:\"bundle_ecommerce_pricing_config_condition_products\";s:8:\"Products\";s:8:\"category\";s:8:\"Category\";s:47:\"bundle_ecommerce_pricing_config_condition_token\";s:5:\"Token\";s:47:\"bundle_ecommerce_pricing_config_condition_sales\";s:5:\"Sales\";s:46:\"bundle_ecommerce_pricing_config_condition_sold\";s:4:\"Sold\";s:52:\"bundle_ecommerce_pricing_config_condition_sold_count\";s:5:\"Count\";s:57:\"bundle_ecommerce_pricing_config_condition_sold_count_cart\";s:10:\"Count Cart\";s:54:\"bundle_ecommerce_pricing_config_condition_voucherToken\";s:7:\"Voucher\";s:13:\"error_message\";s:13:\"Error Message\";s:48:\"bundle_ecommerce_pricing_config_condition_tenant\";s:6:\"Tenant\";s:53:\"bundle_ecommerce_pricing_config_condition_targetgroup\";s:12:\"Target Group\";s:63:\"bundle_ecommerce_pricing_config_condition_targetgroup_threshold\";s:9:\"Threshold\";s:43:\"bundle_ecommerce_pricing_config_action_gift\";s:4:\"Gift\";s:52:\"bundle_ecommerce_pricing_config_action_cart_discount\";s:13:\"Cart discount\";s:60:\"bundle_ecommerce_pricing_config_action_cart_discount_percent\";s:13:\"Discount in %\";s:59:\"bundle_ecommerce_pricing_config_action_cart_discount_amount\";s:17:\"Absolute Discount\";s:55:\"bundle_ecommerce_pricing_config_action_product_discount\";s:16:\"Product discount\";s:63:\"bundle_ecommerce_pricing_config_action_product_discount_percent\";s:13:\"Discount in %\";s:62:\"bundle_ecommerce_pricing_config_action_product_discount_amount\";s:17:\"Absolute Discount\";s:52:\"bundle_ecommerce_pricing_config_action_free_shipping\";s:13:\"Free shipping\";s:9:\"ecommerce\";s:10:\"E-Commerce\";s:13:\"preSelectMode\";s:15:\"Pre Select Mode\";s:13:\"remote_single\";s:25:\"Single Select from Remote\";s:12:\"remote_multi\";s:24:\"Multi Select from Remote\";s:12:\"local_single\";s:34:\"Single Select from predefined List\";s:11:\"local_multi\";s:33:\"Multi Select from predefined List\";s:19:\"indexFieldSelection\";s:21:\"Index Field Selection\";s:28:\"indexFieldSelection_settings\";s:30:\"Index Field Selection Settings\";s:12:\"filtergroups\";s:13:\"Filter Groups\";s:9:\"preSelect\";s:10:\"Pre Select\";s:29:\"predefined_pre_select_options\";s:29:\"Predefined pre select options\";s:35:\"bundle_ecommerce_clear_config_cache\";s:25:\"Clear configuration cache\";s:34:\"bundle_ecommerce_back-office_order\";s:22:\"Back Office - Ordering\";s:35:\"bundle_ecommerce_vouchertoolkit_tab\";s:15:\"Voucher Details\";s:26:\"bundle_ecommerce_order_tab\";s:13:\"Order Details\";s:9:\"thumbnail\";s:9:\"Thumbnail\";s:18:\"download_thumbnail\";s:18:\"Download Thumbnail\";s:21:\"no_thumbnail_selected\";s:21:\"No thumbnail selected\";s:55:\"list_thumbnail_in_download_section_on_image_detail_view\";s:55:\"List as option in download section on image detail view\";s:20:\"there_are_more_items\";s:35:\"There are more items than displayed\";s:10:\"unit_width\";s:10:\"Width Unit\";s:18:\"permission_missing\";s:51:\"You need the \'%s\' permission to perform this action\";s:25:\"paste_as_language_variant\";s:29:\"Paste as new language variant\";s:32:\"select_language_for_new_document\";s:32:\"Select language for New Document\";s:32:\"source_document_language_missing\";s:43:\"Set Language(Properties) in Source Document\";s:26:\"document_language_overview\";s:26:\"Document Language Overview\";s:15:\"language_master\";s:6:\"Master\";s:30:\"create_translation_inheritance\";s:32:\"Create Translation (Inheritance)\";s:18:\"create_translation\";s:18:\"Create Translation\";s:37:\"document_translation_parent_not_found\";s:78:\"Parent document has no translation. Create a translation for the parent first.\";s:25:\"enable_batch_edit_columns\";s:29:\"Enable Batch Edit for Columns\";s:10:\"delete_all\";s:10:\"Delete All\";s:19:\"open_linked_element\";s:19:\"Open linked Element\";s:12:\"mark_as_read\";s:12:\"Mark as read\";s:6:\"sender\";s:6:\"Sender\";s:13:\"notifications\";s:13:\"Notifications\";s:18:\"notifications_send\";s:18:\"Send Notifications\";s:5:\"group\";s:5:\"Group\";s:10:\"attachment\";s:10:\"Attachment\";s:26:\"notification_has_been_sent\";s:26:\"Notification has been sent\";s:9:\"recipient\";s:9:\"Recipient\";s:22:\"this_field_is_required\";s:22:\"This field is required\";s:35:\"paste_recursive_as_language_variant\";s:41:\"Paste as new language variant (recursive)\";s:27:\"paste_no_new_language_error\";s:54:\"All system languages already linked to source element.\";s:27:\"reload_column_configuration\";s:27:\"Reload column configuration\";s:34:\"reload_column_configuration_notice\";s:69:\"Note: Reloading column configuration will reset selected grid columns\";s:18:\"embedded_meta_data\";s:18:\"Embedded Meta Info\";s:8:\"duration\";s:8:\"Duration\";s:16:\"group_icon_class\";s:16:\"Group Icon Class\";s:25:\"custom_report_permissions\";s:10:\"Permission\";s:16:\"visible_to_users\";s:16:\"Visible To Users\";s:16:\"visible_to_roles\";s:16:\"Visible To Roles\";s:55:\"paste_recursive_as_language_variant_updating_references\";s:47:\"Paste language (recursive), updating references\";s:25:\"redirects_expired_cleanup\";s:25:\"Cleanup Expired Redirects\";s:25:\"redirects_cleanup_warning\";s:48:\"Do you really want to cleanup expired redirects?\";s:23:\"redirects_cleanup_error\";s:52:\"An error occurred while cleanup of expired redirects\";s:12:\"auto_convert\";s:20:\"Automatic conversion\";s:19:\"split_view_settings\";s:19:\"Split View Settings\";s:17:\"enable_split_view\";s:17:\"Enable Split View\";s:18:\"disable_split_view\";s:18:\"Disable Split View\";s:29:\"split_view_object_dirty_title\";s:14:\"Please confirm\";s:27:\"split_view_object_dirty_msg\";s:73:\"There are unsaved modifications. You will lose all changes. Are you sure?\";s:16:\"all_translations\";s:16:\"All Translations\";s:11:\"set_to_null\";s:19:\"Empty (set to null)\";s:12:\"unit_tooltip\";s:25:\"Alternative units tooltip\";s:23:\"share_via_notifications\";s:23:\"Share via Notifications\";s:14:\"asset_metadata\";s:14:\"Asset Metadata\";s:19:\"predefined_metadata\";s:19:\"Predefined Metadata\";s:16:\"default_metadata\";s:16:\"Default Metadata\";s:20:\"asset_export_warning\";s:115:\"Please note that the export does not support some fields(e.g. preview, size). Press OK to continue with the export.\";s:15:\"paste_clipboard\";s:15:\"Paste Clipboard\";s:10:\"paste_here\";s:30:\"Paste your clipboard data here\";s:61:\"cannot_save_metadata_please_try_to_edit_the_metadata_in_asset\";s:75:\"<b>Cannot save Metadata!</b><br />Please try to edit the metadata in Asset.\";s:17:\"email_log_forward\";s:13:\"Forward email\";s:24:\"complete_required_fields\";s:66:\"Please complete following required fields to publish the document:\";s:21:\"detect_image_features\";s:21:\"Detect Image Features\";s:21:\"remove_image_features\";s:21:\"Remove Image Features\";s:15:\"available_sites\";s:15:\"Available Sites\";s:8:\"fallback\";s:8:\"Fallback\";s:8:\"add_site\";s:8:\"Add Site\";s:18:\"domain_label_width\";s:18:\"Domain label width\";s:19:\"enable_grid_locking\";s:19:\"Enable grid locking\";s:28:\"redirect_performance_warning\";s:117:\"Using this feature has very bad effects on the performance of the entire application, do you really want to continue?\";s:13:\"Uncategorized\";s:13:\"Uncategorized\";s:7:\"methods\";s:7:\"Methods\";s:23:\"default_value_generator\";s:39:\"Default value generator service / class\";s:20:\"export_configuration\";s:28:\"Export Configuration As JSON\";s:13:\"property_name\";s:13:\"Property name\";s:11:\"force_value\";s:11:\"Force value\";s:17:\"composite_indices\";s:17:\"Composite indices\";s:11:\"fieldlookup\";s:12:\"Field Lookup\";s:16:\"show_fieldlookup\";s:17:\"Show Field Lookup\";s:12:\"no_value_set\";s:12:\"no value set\";s:21:\"batch_change_language\";s:21:\"Batch update language\";s:26:\"generate_type_declarations\";s:26:\"Generate Type Declarations\";s:19:\"brick_limit_reached\";s:51:\"Limit ({bricklimit}) reached for brick: {brickname}\";s:12:\"preview_item\";s:12:\"Preview Item\";s:29:\"invert_colors_on_login_screen\";s:29:\"Invert Colors on Login Screen\";s:12:\"encrypt_data\";s:12:\"Encrypt Data\";s:24:\"encrypt_data_description\";s:78:\"Data-at-Rest/Tablespace Encryption needs to be enabled on your Database Server\";s:20:\"many_to_one_relation\";s:20:\"Many-To-One Relation\";s:21:\"many_to_many_relation\";s:21:\"Many-To-Many Relation\";s:28:\"many_to_many_object_relation\";s:28:\"Many-To-Many Object Relation\";s:30:\"advanced_many_to_many_relation\";s:30:\"Advanced Many-To-Many Relation\";s:37:\"advanced_many_to_many_object_relation\";s:37:\"Advanced Many-To-Many Object Relation\";s:36:\"reverse_many_to_many_object_relation\";s:36:\"Reverse Many-To-Many Object Relation\";s:8:\"url_slug\";s:8:\"URL Slug\";s:22:\"url_slug_datatype_info\";s:107:\"Enter the controller & action in the following format:<br>AppBundle\\Controller\\ProductController:slugAction\";s:17:\"controller_action\";s:19:\"Controller & Action\";s:15:\"admin_interface\";s:15:\"Admin Interface\";s:12:\"icon_library\";s:12:\"Icon Library\";s:36:\"system_performance_stability_warning\";s:281:\"Please do not perform this action unless you are sure what you are doing.<br /><b style=\'color:red\'>This action can have a major impact onto the stability and performance of the entire system, and may causes an overload or complete crash of the server!</b><br /><br />Are you sure?\";s:12:\"login_screen\";s:12:\"Login Screen\";s:17:\"color_description\";s:36:\"Use the HTML hex format, eg. #ffffff\";s:6:\"colors\";s:6:\"Colors\";s:5:\"media\";s:5:\"Media\";s:11:\"custom_logo\";s:11:\"Custom Logo\";s:29:\"custom_login_background_image\";s:29:\"Custom Login Background Image\";s:25:\"branding_logo_description\";s:96:\"Used on the login and start screen. We recommend to use a SVG (JPG & PNG are supported as well).\";s:23:\"appearance_and_branding\";s:21:\"Appearance & Branding\";s:20:\"dev_mode_description\";s:209:\"The DEV-mode sets the highest verbosity level and removes certain performance optimizations such as combining Javascript of the admin backend. It is typically used for developing/debugging the core or plugins.\";s:24:\"do_not_use_in_production\";s:25:\"Do not use in production!\";s:10:\"brightness\";s:10:\"Brightness\";s:10:\"saturation\";s:10:\"Saturation\";s:3:\"hue\";s:3:\"Hue\";s:14:\"addoverlay_fit\";s:15:\"Add Overlay Fit\";s:12:\"environments\";s:12:\"Environments\";s:4:\"test\";s:4:\"Test\";s:10:\"colorspace\";s:10:\"Colorspace\";s:18:\"show_cookie_notice\";s:30:\"Show Cookie Notice (EU Policy)\";s:5:\"ratio\";s:5:\"Ratio\";s:12:\"decimal_size\";s:12:\"Decimal size\";s:17:\"decimal_precision\";s:17:\"Decimal precision\";s:23:\"decimal_mysql_type_info\";s:202:\"If decimal size or precision are specified, <code>DECIMAL(decimalSize, decimalPrecision)</code> MySQL type is used. Default values if missing are <code>64</code> as size and <code>0</code> as precision.\";s:33:\"decimal_mysql_type_naming_warning\";s:162:\"Please note that in MySQL terms, the <code>decimalSize</code> is called <code>precision</code> and the <code>decimalPrecision</code> is called <code>scale</code>.\";s:13:\"only_unsigned\";s:13:\"only unsigned\";s:7:\"integer\";s:7:\"Integer\";s:17:\"object_regex_info\";s:57:\"RegExp without delimiters, has to work in both JS and PHP\";s:16:\"regex_validation\";s:29:\"Regular Expression Validation\";s:11:\"test_string\";s:11:\"Test string\";s:5:\"regex\";s:5:\"RegEx\";s:16:\"code_before_init\";s:16:\"Code before init\";s:19:\"code_after_pageview\";s:19:\"Code after pageview\";s:20:\"code_before_pageview\";s:20:\"Code before pageview\";s:17:\"select_presetting\";s:19:\"Select a presetting\";s:4:\"good\";s:4:\"Good\";s:4:\"best\";s:4:\"Best\";s:21:\"1x1_pixel_placeholder\";s:21:\"1x1 Pixel Placeholder\";s:33:\"1x1_pixel_placeholder_description\";s:111:\"Just returns a 1x1 pixel GIF base64 encoded, in case you don\'t want to display an image for a certain condition\";s:7:\"average\";s:7:\"Average\";s:17:\"enter_media_query\";s:36:\"Please enter a valid CSS media query\";s:15:\"add_media_query\";s:15:\"Add Media Query\";s:17:\"specific_settings\";s:17:\"Specific Settings\";s:30:\"login_as_this_user_description\";s:100:\"The following link is a temporary link that allows you to login as this user in a different browser:\";s:18:\"login_as_this_user\";s:41:\"Login as this user in a different browser\";s:23:\"allowed_types_to_create\";s:23:\"Allowed types to create\";s:15:\"defaults_to_all\";s:15:\"Defaults to all\";s:33:\"analytics_universal_configuration\";s:74:\"Universal/GTag Analytics Configuration eg. {\'cookieDomain\': \'example.com\'}\";s:37:\"use_different_email_delivery_settings\";s:53:\"Use different email delivery settings for newsletters\";s:12:\"action_scope\";s:12:\"Action Scope\";s:3:\"hit\";s:3:\"Hit\";s:7:\"session\";s:7:\"Session\";s:22:\"session_with_variables\";s:24:\"Session (with variables)\";s:17:\"targeting_visitor\";s:7:\"Visitor\";s:58:\"targeting_condition_visited_page_before_piwik_data_warning\";s:92:\"This condition fetches data synchronously from Piwik which can be quite slow. Use with care!\";s:68:\"targeting_condition_visited_page_before_piwik_not_configured_warning\";s:93:\"This condition cannot be matched as Piwik is not configured and will always resolve to false.\";s:31:\"targeting_condition_url_pattern\";s:12:\"URL (RegExp)\";s:30:\"targeting_toolbar_browser_note\";s:253:\"<b>NOTE:</b> Enabling the targeting toolbar affects only the browser you are currently using. If you want to use the toolbar on another browser you need to enable it again. See <a target=\'_blank\' href=\'{targetingLink}\'>the documentation</a> for details.\";s:28:\"microsoft_word_export_notice\";s:361:\"<ul><li>It is not possible to re-import this export</li><li>The export file-format is HTML, which can be perfectly opened with Word</li><li>This export doesn\'t include the full layout information (just basic text-formatting)</li><li>The language selection is used to set the language for object\'s localized fields (only localized fields are exported!)</li></ul>\";s:18:\"fallback_languages\";s:37:\"Fallback Languages (CSV eg. de_CH,de)\";s:12:\"add_language\";s:12:\"Add Language\";s:16:\"default_language\";s:16:\"Default language\";s:23:\"wildcards_are_supported\";s:23:\"Wildcards are supported\";s:37:\"localization_and_internationalization\";s:39:\"Localization &amp; Internationalization\";s:13:\"code_settings\";s:13:\"Code Settings\";s:20:\"advanced_integration\";s:20:\"Advanced Integration\";s:26:\"assign_target_group_weight\";s:6:\"Weight\";s:12:\"target_group\";s:12:\"Target Group\";s:24:\"target_group_multiselect\";s:24:\"Target Group Multiselect\";s:21:\"select_a_target_group\";s:21:\"Select a Target Group\";s:28:\"usage_statistics_explanation\";s:103:\"Please do not deactivate this unless you really need to. You can see the data in /var/logs/usagelog.log\";s:25:\"turn_off_usage_statistics\";s:25:\"Turn off usage statistics\";s:8:\"children\";s:8:\"Children\";s:18:\"elements_to_export\";s:18:\"Elements to Export\";s:22:\"xliff_export_documents\";s:408:\"If you want to translate eg. the whole /en tree to a different language, first create a copy of the /en tree. Afterwards use the copied tree in the export and select the source language \'en\' and the target language \'de\'. When importing the translated XLIFF file, the contents of the exported documents (in this case the copied tree documents) will be overwritten by the German translations in the XLIFF file.\";s:20:\"xliff_export_objects\";s:301:\"Only fields inside a Localized Fields container are recognized. When importing the translated XLIFF the source language will be untouched, only the target language fields will be overwritten. Use Relations checkbox to include Objects & Documents from Dependencies e.g. Relation fields, Properties etc.\";s:19:\"xliff_export_notice\";s:90:\"Here you can select the documents and objects you want to export for external translation.\";s:16:\"important_notice\";s:16:\"Important Notice\";s:19:\"xliff_import_notice\";s:268:\"Select a translated XLIFF file which was previously exported by pimcore and then translated by a localization service provider (LSP) or by a CAT application. Please aware that the import will overwrite the elements which were selected by the import (read also export).\";s:9:\"composite\";s:9:\"Composite\";s:6:\"origin\";s:6:\"Origin\";s:15:\"high_resolution\";s:15:\"High Resolution\";s:19:\"pass_through_params\";s:19:\"Pass Through Params\";s:25:\"redirects_type_entire_uri\";s:10:\"Entire URI\";s:25:\"redirects_type_path_query\";s:14:\"Path and Query\";s:20:\"redirects_csv_import\";s:20:\"Redirects CSV Import\";s:22:\"redirects_import_total\";s:5:\"Total\";s:24:\"redirects_import_created\";s:7:\"Created\";s:24:\"redirects_import_updated\";s:7:\"Updated\";s:24:\"redirects_import_errored\";s:7:\"Errored\";s:23:\"redirects_import_errors\";s:6:\"Errors\";s:27:\"redirects_import_error_line\";s:4:\"Line\";s:19:\"analytics_gtag_code\";s:31:\"Use the gtag code for analytics\";s:26:\"analytics_retargeting_code\";s:46:\"Use the retargeting-code for analytics (dc.js)\";s:27:\"analytics_asynchronous_code\";s:47:\"Use the asynchronous code for analytics (ga.js)\";s:17:\"newsletter_active\";s:17:\"Newsletter Active\";s:20:\"newsletter_confirmed\";s:20:\"Newsletter Confirmed\";s:6:\"gender\";s:6:\"Gender\";s:17:\"use_original_tiff\";s:30:\"Use original TIFF (only PRINT)\";s:29:\"use_original_tiff_description\";s:73:\"Use original TIFF when source format is a TIFF image -> do not modify it.\";s:4:\"port\";s:4:\"Port\";s:17:\"delivery_settings\";s:17:\"Delivery Settings\";s:17:\"generate_previews\";s:17:\"Generate previews\";s:18:\"invalid_class_name\";s:18:\"Invalid Class Name\";s:39:\"redirect_unknown_domains_to_main_domain\";s:96:\"Redirect unknown domains (not used for a site and for redirects, ...) to the main domain (above)\";s:5:\"hours\";s:5:\"Hours\";s:7:\"minutes\";s:7:\"Minutes\";s:7:\"seconds\";s:7:\"Seconds\";s:16:\"operating_system\";s:16:\"Operating System\";s:17:\"hardware_platform\";s:17:\"Hardware Platform\";s:12:\"time_on_site\";s:12:\"Time on site\";s:27:\"visited_pages_before_number\";s:22:\"Visited n-pages before\";s:6:\"number\";s:6:\"Number\";s:19:\"visited_page_before\";s:19:\"Visited page before\";s:12:\"searchengine\";s:13:\"Search Engine\";s:8:\"referrer\";s:8:\"Referrer\";s:14:\"referring_site\";s:14:\"Referring Site\";s:3:\"AND\";s:3:\"AND\";s:2:\"OR\";s:2:\"OR\";s:7:\"AND_NOT\";s:7:\"AND NOT\";s:12:\"radius_in_km\";s:11:\"Radius (km)\";s:8:\"redirect\";s:8:\"Redirect\";s:12:\"code_snippet\";s:12:\"Code-Snippet\";s:7:\"browser\";s:7:\"Browser\";s:10:\"conditions\";s:10:\"Conditions\";s:10:\"save_order\";s:10:\"Save Order\";s:24:\"debug_admin_translations\";s:39:\"Debug Admin-Translations (wrapped in +)\";s:9:\"short_url\";s:9:\"Short URL\";s:39:\"width_and_height_must_be_an_even_number\";s:39:\"width and height must be an even number\";s:14:\"server_api_key\";s:14:\"Server API-Key\";s:15:\"browser_api_key\";s:15:\"Browser API-Key\";s:11:\"source_site\";s:11:\"Source-Site\";s:11:\"target_site\";s:11:\"Target-Site\";s:17:\"source_entire_url\";s:20:\"Entire URL as Source\";s:20:\"analytics_internalid\";s:14:\"GA Internal ID\";s:30:\"analytics_settings_description\";s:116:\"To use the complete Google Analytics integration, please configure the Google API Service Account in System Settings\";s:22:\"google_api_key_missing\";s:106:\"Google API private key is missing (JSON file from API Console), please put it into the following location:\";s:32:\"google_api_private_key_installed\";s:50:\"Your Google API private key is installed correctly\";s:29:\"google_api_access_description\";s:110:\"This is required for the Google API integrations. Only use a `Service Account´ from the Google Cloud Console.\";s:32:\"absolute_path_to_icc_rgb_profile\";s:32:\"Absolute path to ICC RGB profile\";s:33:\"absolute_path_to_icc_cmyk_profile\";s:33:\"Absolute path to ICC CMYK profile\";s:11:\"upload_path\";s:11:\"Upload Path\";s:17:\"selection_options\";s:17:\"Selection Options\";s:6:\"expiry\";s:6:\"Expiry\";s:6:\"mobile\";s:6:\"Mobile\";s:13:\"group_by_path\";s:13:\"Group by path\";s:5:\"flush\";s:5:\"Flush\";s:27:\"errors_from_the_last_7_days\";s:27:\"Errors from the last 7 days\";s:18:\"show_close_warning\";s:18:\"Show close warning\";s:13:\"matching_text\";s:13:\"Matching Text\";s:3:\"any\";s:3:\"Any\";s:11:\"http_method\";s:11:\"HTTP Method\";s:11:\"url_pattern\";s:40:\"URL Pattern<br />(RegExp eg. @success@i)\";s:9:\"beginning\";s:9:\"Beginning\";s:20:\"element_css_selector\";s:22:\"Element (CSS Selector)\";s:15:\"insert_position\";s:15:\"Insert Position\";s:31:\"robots_txt_exists_on_filesystem\";s:68:\"The robots.txt exists already in the document-root on the filesystem\";s:67:\"only_required_for_reporting_in_pimcore_but_not_for_code_integration\";s:143:\"The following is only required if you want to use the reporting functionalities in pimcore, but this is not required for the code integration. \";s:10:\"save_error\";s:16:\"Cannot save data\";s:9:\"all_roles\";s:9:\"All Roles\";s:8:\"add_role\";s:8:\"Add Role\";s:19:\"role_creation_error\";s:21:\"Could not create role\";s:10:\"workspaces\";s:10:\"Workspaces\";s:8:\"Username\";s:8:\"Username\";s:13:\"video_bitrate\";s:20:\"Video Bitrate (kB/s)\";s:13:\"audio_bitrate\";s:20:\"Audio Bitrate (kB/s)\";s:13:\"rasterize_svg\";s:14:\"Rasterize SVGs\";s:23:\"rasterize_svg_info_text\";s:107:\"SVGs get automatically rasterized when a transformation other than resize or scale by width/height is used.\";s:36:\"valid_languages_frontend_description\";s:323:\"These settings are used in documents to specify the content language (in properties tab), for objects in localized-fields, for shared translations, ... simply everywhere the editor can choose or use a language for the content.<br />Fallback languages are currently used in object\'s localized fields and shared translations.\";s:20:\"delete_language_note\";s:152:\"Note: Removing language from the list will not delete its respective data. Please use console command \'pimcore:locale:delete-unused-tables\' for cleanup.\";s:13:\"maximum_items\";s:10:\"max. items\";s:9:\"collapsed\";s:9:\"Collapsed\";s:35:\"url_to_custom_image_on_login_screen\";s:40:\"URL to custom image for the login screen\";s:5:\"sepia\";s:5:\"Sepia\";s:7:\"sharpen\";s:7:\"Sharpen\";s:12:\"gaussianBlur\";s:13:\"Gaussian Blur\";s:6:\"radius\";s:6:\"Radius\";s:5:\"sigma\";s:5:\"Sigma\";s:9:\"threshold\";s:9:\"Threshold\";s:9:\"tolerance\";s:9:\"Tolerance\";s:9:\"grayscale\";s:9:\"Grayscale\";s:20:\"nothing_to_configure\";s:20:\"Nothing to configure\";s:11:\"preview_url\";s:11:\"Preview URL\";s:7:\"opacity\";s:7:\"Opacity\";s:9:\"applymask\";s:10:\"Apply Mask\";s:10:\"addoverlay\";s:11:\"Add Overlay\";s:15:\"transformations\";s:15:\"Transformations\";s:50:\"you_can_drag_the_tabs_to_reorder_the_media_queries\";s:66:\"You can drag the tabs to reorder the priority of the media queries\";s:5:\"frame\";s:5:\"Frame\";s:18:\"setbackgroundcolor\";s:19:\"Set Backgroundcolor\";s:18:\"setbackgroundimage\";s:20:\"Set Background Image\";s:12:\"roundcorners\";s:13:\"Round Corners\";s:6:\"rotate\";s:6:\"Rotate\";s:5:\"color\";s:5:\"Color\";s:5:\"angle\";s:5:\"Angle\";s:11:\"label_width\";s:11:\"Label Width\";s:16:\"label_first_cell\";s:16:\"Label First Cell\";s:21:\"cache_disable_cookies\";s:33:\"Disable Cookies (comma separated)\";s:11:\"only_for_ip\";s:22:\"Only for IP (optional)\";s:56:\"please_dont_forget_to_reload_pimcore_after_modifications\";s:82:\"Please don\'t forget to clear the cache and reload pimcore after your modifications\";s:22:\"clear_cache_and_reload\";s:22:\"Clear cache and reload\";s:42:\"extension_manager_state_change_not_allowed\";s:49:\"State changes are not allowed for this extension.\";s:6:\"enable\";s:6:\"Enable\";s:7:\"disable\";s:7:\"Disable\";s:9:\"configure\";s:9:\"Configure\";s:17:\"manage_extensions\";s:17:\"Manage Extensions\";s:14:\"beginning_with\";s:14:\"Beginning with\";s:14:\"matching_exact\";s:16:\"Matching exactly\";s:15:\"add_expert_mode\";s:17:\"Add (Expert Mode)\";s:17:\"add_beginner_mode\";s:14:\"Add (Beginner)\";s:6:\"lowest\";s:6:\"lowest\";s:7:\"highest\";s:7:\"highest\";s:12:\"override_all\";s:12:\"override all\";s:10:\"deactivate\";s:10:\"Deactivate\";s:18:\"countrymultiselect\";s:23:\"Countries (Multiselect)\";s:19:\"languagemultiselect\";s:23:\"Languages (Multiselect)\";s:3:\"yes\";s:3:\"Yes\";s:2:\"no\";s:2:\"No\";s:34:\"allow_trailing_slash_for_documents\";s:27:\"Allow trailing Slash in URL\";s:15:\"localizedfields\";s:16:\"Localized Fields\";s:10:\"new_folder\";s:10:\"New Folder\";s:8:\"new_file\";s:8:\"New File\";s:10:\"proxy_host\";s:10:\"Proxy Host\";s:10:\"proxy_port\";s:10:\"Proxy Port\";s:10:\"proxy_user\";s:10:\"Proxy User\";s:10:\"proxy_pass\";s:10:\"Proxy Pass\";s:14:\"proxy_settings\";s:14:\"Proxy Settings\";s:24:\"select_connectivity_type\";s:24:\"Select Connectivity Type\";s:5:\"proxy\";s:5:\"Proxy\";s:13:\"direct_socket\";s:15:\"Direct (Socket)\";s:30:\"http_connectivity_direct_proxy\";s:38:\"HTTP Connectivity (direct, proxy, ...)\";s:8:\"gridview\";s:9:\"Grid View\";s:31:\"visibility_of_system_properties\";s:31:\"Visibility of system properties\";s:9:\"translate\";s:9:\"translate\";s:23:\"translations_admin_hint\";s:52:\"HINT: Please Reload UI to apply translation changes!\";s:13:\"allowed_types\";s:13:\"Allowed Types\";s:12:\"columnlength\";s:12:\"Columnlength\";s:23:\"visible_in_searchresult\";s:24:\"Visible in Search Result\";s:19:\"visible_in_gridview\";s:20:\"Visible in Grid View\";s:16:\"fieldcollections\";s:17:\"Field-Collections\";s:5:\"block\";s:5:\"Block\";s:7:\"tooltip\";s:7:\"Tooltip\";s:16:\"decimalPrecision\";s:17:\"Decimal-Precision\";s:9:\"css_style\";s:9:\"CSS Style\";s:11:\"add_setting\";s:11:\"Add Setting\";s:7:\"reverse\";s:7:\"Reverse\";s:10:\"geopolygon\";s:18:\"Geographic Polygon\";s:11:\"geopolyline\";s:19:\"Geographic Polyline\";s:9:\"geobounds\";s:17:\"Geographic Bounds\";s:31:\"sure_to_install_unstable_update\";s:70:\"Are you sure that you want to install a potential not working version?\";s:19:\"analytics_accountid\";s:24:\"Account-ID (eg. 1234567)\";s:26:\"verification_filename_text\";s:67:\"Verification Filename<br /><small>required for verification</small>\";s:16:\"analytics_notice\";s:147:\"Please read the documentation about the Google Analytics integration first, for the advanced mode you have to modify the Google Analytics settings.\";s:32:\"outputcache_lifetime_description\";s:180:\"Optional output-cache lifetime (in seconds) after the cache expires, if not defined the cache will be cleaned on every action inside the CMS, otherwise not (for high traffic sites)\";s:28:\"exclude_patterns_description\";s:45:\"Regular Expressions like: /^\\/dir\\/toexclude/\";s:22:\"analytics_trackid_code\";s:75:\"Track-ID (eg. UA-XXXXX-X)<br /><small>required for code integration</small>\";s:11:\"multiselect\";s:14:\"Multiselection\";s:7:\"handler\";s:7:\"Handler\";s:9:\"invisible\";s:9:\"Invisible\";s:25:\"only_configured_languages\";s:49:\"Show only in system settings configured languages\";s:11:\"permissions\";s:11:\"Permissions\";s:41:\"you_are_not_allowed_to_manage_admin_users\";s:41:\"You are not allowed to manage admin users\";s:12:\"content_type\";s:12:\"Content-Type\";s:12:\"new_property\";s:12:\"New Property\";s:9:\"all_users\";s:9:\"All Users\";s:5:\"admin\";s:5:\"Admin\";s:17:\"new_document_type\";s:17:\"New Document Type\";s:8:\"timezone\";s:8:\"Timezone\";s:4:\"host\";s:4:\"Host\";s:9:\"client_id\";s:9:\"Client ID\";s:29:\"store_version_history_in_days\";s:32:\"Store version history for x Days\";s:30:\"store_version_history_in_steps\";s:33:\"Store version history for x Steps\";s:6:\"layout\";s:6:\"Layout\";s:20:\"add_layout_component\";s:20:\"Add Layout Component\";s:18:\"add_data_component\";s:18:\"Add Data Component\";s:9:\"accordion\";s:9:\"Accordion\";s:6:\"iframe\";s:16:\"Preview / Iframe\";s:8:\"fieldset\";s:8:\"Fieldset\";s:5:\"panel\";s:5:\"Panel\";s:8:\"tabpanel\";s:8:\"Tabpanel\";s:12:\"tab_position\";s:12:\"Tab Position\";s:7:\"pattern\";s:7:\"Pattern\";s:9:\"variables\";s:9:\"Variables\";s:8:\"defaults\";s:8:\"Defaults\";s:7:\"wysiwyg\";s:7:\"WYSIWYG\";s:7:\"objects\";s:7:\"Objects\";s:13:\"allow_inherit\";s:17:\"Allow inheritance\";s:16:\"parent_php_class\";s:16:\"Parent PHP Class\";s:21:\"implements_interfaces\";s:23:\"Implements interface(s)\";s:10:\"use_traits\";s:12:\"Use (traits)\";s:16:\"general_settings\";s:16:\"General Settings\";s:15:\"layout_settings\";s:31:\"Layout Settings (Pimcore Admin)\";s:6:\"region\";s:6:\"Region\";s:11:\"collapsible\";s:11:\"Collapsible\";s:15:\"allowed_classes\";s:15:\"Allowed classes\";s:12:\"display_name\";s:12:\"Display name\";s:12:\"not_editable\";s:12:\"Not editable\";s:5:\"index\";s:7:\"Indexed\";s:14:\"mandatoryfield\";s:15:\"Mandatory field\";s:7:\"install\";s:7:\"Install\";s:9:\"uninstall\";s:9:\"Uninstall\";s:27:\"some_fields_cannot_be_saved\";s:28:\"Some fields cannot be saved.\";s:17:\"debug_description\";s:302:\"With debug-mode on errors and warnings are displayed directly in the browser, otherwise they are deactivated and the error-controller is active (Error Page). Multiple IP addresses can be specified by separating them with a comma. You can also specify IP ranges by specifying a mask, e.g. 192.168.1.0/24\";s:22:\"debug_override_warning\";s:102:\"<strong>WARNING:</strong> If the debug mode is explicitely set via code, this setting will be ignored.\";s:4:\"icon\";s:4:\"Icon\";s:6:\"slider\";s:6:\"Slider\";s:6:\"domain\";s:24:\"Domain (eg. example.org)\";s:8:\"datetime\";s:11:\"Date & Time\";s:31:\"google_credentials_and_api_keys\";s:29:\"Google Credentials & API Keys\";s:13:\"default_value\";s:13:\"Default value\";s:6:\"button\";s:6:\"Button\";s:8:\"priority\";s:8:\"Priority\";s:3:\"end\";s:3:\"End\";s:13:\"select_update\";s:13:\"Select update\";s:14:\"stable_updates\";s:24:\"Available stable updates\";s:18:\"non_stable_updates\";s:28:\"Available non-stable updates\";s:40:\"latest_pimcore_version_already_installed\";s:49:\"You have installed the latest version of pimcore.\";s:5:\"table\";s:5:\"Table\";s:4:\"rows\";s:4:\"Rows\";s:14:\"language_admin\";s:35:\"Default-Language in Admin-Interface\";s:16:\"exclude_patterns\";s:16:\"Exclude Patterns\";s:5:\"cover\";s:5:\"Cover\";s:7:\"contain\";s:7:\"Contain\";s:9:\"min_value\";s:10:\"min. Value\";s:9:\"max_value\";s:10:\"max. Value\";s:9:\"increment\";s:14:\"Increment Step\";s:8:\"vertical\";s:8:\"Vertical\";s:8:\"lifetime\";s:8:\"Lifetime\";s:7:\"country\";s:7:\"Country\";s:10:\"zoom_level\";s:10:\"Zoom level\";s:8:\"map_type\";s:8:\"Map type\";s:7:\"roadmap\";s:7:\"Roadmap\";s:9:\"satellite\";s:9:\"Satellite\";s:6:\"hybrid\";s:6:\"Hybrid\";s:21:\"google_api_key_simple\";s:53:\"Google API Key (Simple API Access for Maps, CSE, ...)\";s:22:\"google_api_key_service\";s:69:\"Google API Credentials (Service Account Client ID for Analytics, ...)\";s:21:\"document_restrictions\";s:21:\"Document Restrictions\";s:18:\"asset_restrictions\";s:18:\"Asset Restrictions\";s:19:\"object_restrictions\";s:19:\"Object Restrictions\";s:15:\"allow_documents\";s:15:\"allow Documents\";s:12:\"allow_assets\";s:12:\"allow Assets\";s:13:\"allow_objects\";s:13:\"allow Objects\";s:18:\"allowed_types_hint\";s:19:\"(empty = allow all)\";s:22:\"allowed_document_types\";s:22:\"Allowed Document Types\";s:19:\"allowed_asset_types\";s:19:\"Allowed Asset Types\";s:7:\"website\";s:7:\"Website\";s:19:\"user_creation_error\";s:21:\"Could not create user\";s:17:\"email_senderemail\";s:12:\"Sender Email\";s:16:\"email_sendername\";s:11:\"Sender Name\";s:17:\"email_returnemail\";s:12:\"Return Email\";s:16:\"email_returnname\";s:11:\"Return Name\";s:12:\"email_method\";s:12:\"Email Method\";s:15:\"email_smtp_host\";s:9:\"SMTP Host\";s:15:\"email_smtp_port\";s:9:\"SMTP Port\";s:15:\"email_smtp_name\";s:9:\"SMTP Name\";s:22:\"email_smtp_auth_method\";s:26:\"SMTP Authentication Method\";s:17:\"no_authentication\";s:17:\"No Authentication\";s:24:\"email_smtp_auth_username\";s:13:\"SMTP Username\";s:24:\"email_smtp_auth_password\";s:13:\"SMTP Password\";s:14:\"email_smtp_ssl\";s:23:\"SMTP Transport Security\";s:21:\"email_debug_addresses\";s:21:\"Debug Email Addresses\";s:6:\"no_ssl\";s:1:\"-\";s:36:\"user_object_dependencies_description\";s:49:\"This user is referenced in the following objects:\";s:10:\"webservice\";s:15:\"Web Service API\";s:18:\"webservice_enabled\";s:23:\"Web Service API enabled\";s:22:\"webservice_description\";s:158:\"Enabling the web service allows all admin users to access the pimcore REST API. Please check the pimcore wiki to find out how the token needs to be generated.\";s:22:\"user_admin_description\";s:176:\"Admin users do not only automatically gain all permissions listed below, they are also allowed to perform all actions on documents, assets and objects without any restrictions.\";s:23:\"user_apikey_description\";s:52:\"API key required for web service access by this user\";s:6:\"apikey\";s:7:\"API Key\";s:12:\"lazy_loading\";s:12:\"lazy loading\";s:21:\"non_owner_description\";s:309:\"Non owner objects represent relations to an other object just in the same way as objects do. The difference is, that a non-owner object field is not the owner of the relation data, it is merely a view on data stored in other objects. Please choose the owner and field name where the data is originally stored.\";s:14:\"allow_variants\";s:14:\"Allow variants\";s:13:\"show_variants\";s:21:\"Show variants in tree\";s:19:\"allowed_class_field\";s:19:\"Allowed class/field\";s:15:\"structuredTable\";s:16:\"Structured Table\";s:8:\"position\";s:8:\"Position\";s:29:\"objectsMetadata_allowed_class\";s:13:\"Allowed Class\";s:30:\"objectsMetadata_visible_fields\";s:14:\"Visible Fields\";s:31:\"objectsMetadata_type_columnbool\";s:11:\"Column Bool\";s:32:\"objectsMetadata_type_multiselect\";s:11:\"Multiselect\";s:30:\"file_explorer_saved_file_error\";s:16:\"Cannot save file\";s:26:\"reserved_field_names_error\";s:54:\"Please do not use the following reserved field names: \";s:16:\"use_current_date\";s:16:\"Use current date\";s:31:\"inherited_default_value_warning\";s:94:\"The default value is used if either inheritance is deactivated or if the parent value is empty\";s:19:\"instance_identifier\";s:19:\"Instance identifier\";s:24:\"instance_identifier_info\";s:245:\"The instance identifier has to be unique throughout multiple Pimcore instances. UUID generation will be automatically enabled if a Instance identifier is provided (do not change the instance identifier afterwards - this will cause invalid UUIDs)\";s:21:\"restrict_selection_to\";s:21:\"Restrict Selection To\";s:12:\"maximum_tabs\";s:22:\"Maximum number of tabs\";s:9:\"algorithm\";s:9:\"Algorithm\";s:4:\"salt\";s:4:\"Salt\";s:12:\"saltlocation\";s:13:\"Salt location\";s:13:\"custom_layout\";s:13:\"Custom Layout\";s:24:\"custom_layout_definition\";s:24:\"Custom Layout Definition\";s:24:\"configure_custom_layouts\";s:24:\"Configure Custom Layouts\";s:10:\"add_layout\";s:10:\"Add Layout\";s:13:\"delete_layout\";s:13:\"Delete Layout\";s:16:\"special_settings\";s:16:\"Special Settings\";s:14:\"custom_layouts\";s:14:\"Custom Layouts\";s:14:\"new_definition\";s:14:\"New Definition\";s:14:\"target_subtype\";s:11:\"Target Type\";s:9:\"mandatory\";s:9:\"Mandatory\";s:18:\"disallow_addremove\";s:19:\"Disallow Add/Remove\";s:16:\"disallow_reorder\";s:20:\"Dissallow Reordering\";s:17:\"reload_definition\";s:17:\"Reload Definition\";s:6:\"saving\";s:6:\"Saving\";s:10:\"definition\";s:10:\"Definition\";s:11:\"objectbrick\";s:12:\"Object Brick\";s:10:\"select_all\";s:10:\"Select All\";s:12:\"deselect_all\";s:12:\"Deselect All\";s:17:\"definitions_saved\";s:17:\"Definitions saved\";s:31:\"predefined_metadata_definitions\";s:31:\"Predefined Metadata Definitions\";s:14:\"default_layout\";s:21:\"Use as default layout\";s:19:\"hide_edit_image_tab\";s:19:\"Hide Edit Image Tab\";s:22:\"are_you_sure_recursive\";s:62:\"There child nodes which will be deleted as well! Are you sure?\";s:17:\"log_relatedobject\";s:14:\"Related object\";s:13:\"log_component\";s:9:\"Component\";s:15:\"log_search_form\";s:16:\"Search parameter\";s:15:\"log_search_type\";s:12:\"Logging type\";s:24:\"log_search_relatedobject\";s:19:\"Related object (id)\";s:13:\"log_timestamp\";s:9:\"Timestamp\";s:14:\"log_fileobject\";s:11:\"File object\";s:21:\"log_detailinformation\";s:18:\"Detail information\";s:32:\"log_config_send_summary_per_mail\";s:26:\"Send log summary via email\";s:26:\"log_config_filter_priority\";s:34:\"Mail log summary - filter priority\";s:24:\"log_config_mail_receiver\";s:26:\"Mail log summary receivers\";s:36:\"log_config_mail_receiver_description\";s:50:\"Separate multiple email receivers separated by \';\'\";s:27:\"log_config_archive_treshold\";s:26:\"Archive treshold (in days)\";s:39:\"log_config_archive_alternative_database\";s:32:\"Archive database name (optional)\";s:30:\"log_config_archive_description\";s:87:\"Use of an alternative database recommended when huge amounts of logs will be generated.\";s:36:\"classificationstore_group_definition\";s:6:\"Groups\";s:36:\"classificationstore_group_limitation\";s:16:\"Max. group items\";s:40:\"classificationstore_mbx_entergroup_title\";s:9:\"New Group\";s:41:\"classificationstore_mbx_entergroup_prompt\";s:10:\"Enter name\";s:38:\"classificationstore_error_addgroup_msg\";s:18:\"Error adding group\";s:31:\"classificationstore_invalidname\";s:12:\"Invalid name\";s:42:\"classificationstore_error_group_exists_msg\";s:35:\"Group with this name already exists\";s:30:\"classificationstore_properties\";s:15:\"Key Definitions\";s:38:\"classificationstore_mbx_enterkey_title\";s:7:\"New Key\";s:42:\"classificationstore_detailed_configuration\";s:22:\"Detailed Configuration\";s:35:\"classificationstore_detailed_config\";s:15:\"Detailed Config\";s:9:\"relations\";s:9:\"Relations\";s:9:\"localized\";s:9:\"Localized\";s:17:\"allowed_group_ids\";s:23:\"Allowed Group Ids (csv)\";s:6:\"key_id\";s:6:\"Key ID\";s:6:\"sorter\";s:6:\"Sorter\";s:34:\"classificationstore_tooltip_sorter\";s:43:\"Items with lower value will be listed first\";s:41:\"classificationstore_collection_definition\";s:17:\"Group Collections\";s:8:\"group_id\";s:8:\"Group ID\";s:10:\"collection\";s:10:\"Collection\";s:45:\"classificationstore_mbx_entercollection_title\";s:14:\"New Collection\";s:22:\"class_field_name_error\";s:33:\"Following field name has an error\";s:24:\"inputQuantityValue_field\";s:20:\"Input Quantity Value\";s:12:\"abbreviation\";s:12:\"Abbreviation\";s:8:\"longname\";s:8:\"Longname\";s:8:\"baseunit\";s:9:\"Base Unit\";s:19:\"quantityValue_units\";s:29:\"QuantityValue Unit Definition\";s:25:\"valid_quantityValue_units\";s:11:\"Valid units\";s:31:\"calculatedValue_calculatorclass\";s:16:\"Calculator class\";s:27:\"calculatedValue_explanation\";s:87:\"See the official documentation to learn more about which methods need to be implemented\";s:21:\"calculatedValue_field\";s:16:\"Calculated Value\";s:16:\"conversionFactor\";s:17:\"Conversion Factor\";s:16:\"conversionOffset\";s:17:\"Conversion Offset\";s:12:\"default_unit\";s:12:\"Default Unit\";s:13:\"min_max_times\";s:15:\"Min / Max Times\";s:5:\"reset\";s:5:\"Reset\";s:13:\"password_hint\";s:135:\"Password must contain at least 10 characters, one lowercase letter, one uppercase letter, one numeric digit, and one special character!\";s:15:\"editor_settings\";s:15:\"Editor Settings\";s:14:\"language_order\";s:14:\"Language Order\";s:13:\"preview_width\";s:13:\"Preview Width\";s:14:\"preview_height\";s:14:\"Preview Height\";s:9:\"url_width\";s:9:\"URL Width\";s:13:\"externalImage\";s:14:\"External Image\";s:7:\"log_pid\";s:3:\"PID\";s:35:\"search_console_settings_description\";s:112:\"To use the Google Search Console integration, please configure the Google API Service Account in System Settings\";s:14:\"fieldcontainer\";s:15:\"Field Container\";s:5:\"store\";s:5:\"Store\";s:18:\"edit_configuration\";s:24:\"Edit Store Configuration\";s:40:\"classificationstore_mbx_enterstore_title\";s:9:\"New Store\";s:41:\"classificationstore_mbx_enterstore_prompt\";s:16:\"Enter store name\";s:38:\"classificationstore_error_addstore_msg\";s:20:\"Error creating store\";s:14:\"search_for_key\";s:10:\"Search Key\";s:32:\"web2print_enable_in_default_view\";s:52:\"Enable Web2Print documents in default documents view\";s:36:\"web2print_enable_in_default_view_txt\";s:172:\"Enables Web2Print documents in default documents view in default perspective. Either activate this or create custom views and perspectives for managing Web2Print documents.\";s:14:\"web2print_tool\";s:4:\"Tool\";s:19:\"web2print_save_mode\";s:18:\"Document Save Mode\";s:23:\"web2print_save_mode_txt\";s:152:\"Document Save Mode = cleanup deletes all not used document elements for current document. This might be necessary for useage reports in print documents.\";s:29:\"web2print_pdfreactor_settings\";s:19:\"PDFreactor Settings\";s:16:\"web2print_server\";s:6:\"Server\";s:17:\"web2print_baseURL\";s:7:\"BaseURL\";s:21:\"web2print_baseURL_txt\";s:100:\"BaseURL for PDFreactor. This is prefixed to each relative url in print templates when creating PDFs.\";s:20:\"web2print_apiKey_txt\";s:80:\"If the PDFreactor instance is set up to require API keys, you can enter it here.\";s:17:\"web2print_licence\";s:7:\"Licence\";s:30:\"web2print_wkhtmltopdf_settings\";s:20:\"Wkhtmltopdf Settings\";s:28:\"web2print_wkhtmltopdf_binary\";s:18:\"wkhtmltopdf Binary\";s:29:\"web2print_wkhtmltopdf_options\";s:7:\"Options\";s:33:\"web2print_wkhtmltopdf_options_txt\";s:78:\"One per line with \'--\' and whitespace between key and value (e.g. --key value)\";s:18:\"web2print_hostname\";s:8:\"Hostname\";s:20:\"disable_tree_preview\";s:20:\"Disable Tree Preview\";s:14:\"PHP Class Name\";s:14:\"PHP Class Name\";s:20:\"editor_configuration\";s:20:\"Editor Configuration\";s:17:\"allow_dirty_close\";s:31:\"Disable unsaved content warning\";s:25:\"high_resolution_info_text\";s:173:\"eg. for Web-to-Print or everywhere where srcset is not possible/sufficient, not necessary for normal web-thumbnails, they automatically get a srcset attribute with 1x and 2x\";s:17:\"advanced_settings\";s:17:\"Advanced settings\";s:18:\"preserve_meta_data\";s:32:\"Preserve meta data (don\'t strip)\";s:14:\"preserve_color\";s:31:\"Preserve color (profile, space)\";s:28:\"thumbnail_preserve_info_text\";s:168:\"\'Preserve meta data\' and \'preserve color\' only works for transitions without compositions (frame, background color, ...) and color modifications (greyscale, sepia, ...)\";s:22:\"path_formatter_service\";s:25:\"Formatter Service / Class\";s:9:\"separated\";s:9:\"separated\";s:24:\"additional_path_variable\";s:25:\"Additional $PATH variable\";s:17:\"log_refresh_label\";s:13:\"Refresh every\";s:28:\"website_translation_settings\";s:27:\"Shared Translation Settings\";s:20:\"language_permissions\";s:51:\"Language Permissions (no view permission means all)\";s:15:\"rendering_class\";s:21:\"Custom Renderer class\";s:14:\"rendering_data\";s:23:\"Data passed to renderer\";s:18:\"web2print_protocol\";s:8:\"Protocol\";s:10:\"rows_fixed\";s:10:\"Rows fixed\";s:10:\"cols_fixed\";s:10:\"Cols fixed\";s:12:\"force_resize\";s:12:\"Force resize\";s:8:\"site_ids\";s:8:\"Site IDs\";s:16:\"site_ids_tooltip\";s:42:\"Provide a comma-seperated list of site IDs\";s:33:\"predefined_hotspot_data_templates\";s:25:\"Predefined data templates\";s:36:\"hide_locale_labels_when_tabs_reached\";s:39:\"Hide locale labels after number of tabs\";s:36:\"classificationstore_error_addkey_msg\";s:16:\"Error adding Key\";s:42:\"classificationstore_dialog_keygroup_search\";s:16:\"Key/Group Search\";s:22:\"options_provider_class\";s:38:\"Options Provider Class or Service Name\";s:21:\"options_provider_data\";s:21:\"Options Provider Data\";s:18:\"show_applogger_tab\";s:19:\"Show App Logger Tab\";s:7:\"analyze\";s:7:\"Analyze\";s:24:\"link_generator_reference\";s:35:\"Link Provider Class or Service Name\";s:11:\"unique_qtip\";s:62:\"Unique constraint will added. No need to check \'index\' as well\";s:20:\"temporarily_disabled\";s:20:\"Temporarily disabled\";s:19:\"enabled_in_editmode\";s:19:\"Enabled in Editmode\";s:14:\"boolean_select\";s:14:\"Boolean Select\";s:9:\"yes_label\";s:16:\"Yes Display Name\";s:8:\"no_label\";s:15:\"No Display Name\";s:11:\"empty_label\";s:18:\"Empty Display Name\";s:19:\"piwik_config_notice\";s:159:\"Please read the documentation about the Matomo/Piwik integration first as you may need to configure your Matomo/Piwik installation to make use of all features.\";s:9:\"piwik_url\";s:37:\"Matomo/Piwik URL (including protocol)\";s:18:\"piwik_api_settings\";s:15:\"API Integration\";s:24:\"piwik_api_client_options\";s:18:\"API Client Options\";s:36:\"piwik_api_client_options_description\";s:216:\"You can define custom Guzzle client options as JSON string which will be used when issuing API requests. Please see the <a target=\'_blank\' href=\'{guzzleLink}\'>Guzzle Documentation</a> for a list of available options.\";s:12:\"piwik_tokens\";s:21:\"Authentication Tokens\";s:15:\"piwik_api_token\";s:9:\"API Token\";s:20:\"piwik_api_token_info\";s:168:\"Authentication token used send API requests (e.g. when updating site settings). If this token is not set, Matomo/Piwik updates from within Pimcore will not be possible.\";s:21:\"piwik_api_create_site\";s:14:\"Create via API\";s:29:\"piwik_api_create_site_tooltip\";s:33:\"Create a new site in Matomo/Piwik\";s:29:\"piwik_api_create_site_success\";s:47:\"Successfully created site via Matomo/Piwik API.\";s:29:\"piwik_api_create_site_failure\";s:43:\"Failed to create site via Matomo/Piwik API.\";s:21:\"piwik_api_update_site\";s:14:\"Update via API\";s:29:\"piwik_api_update_site_tooltip\";s:57:\"Update site config (list of domains) via Matomo/Piwik API\";s:29:\"piwik_api_update_site_success\";s:54:\"Successfully updated site config via Matomo/Piwik API.\";s:29:\"piwik_api_update_site_failure\";s:50:\"Failed to update site config via Matomo/Piwik API.\";s:18:\"piwik_report_token\";s:12:\"Report Token\";s:23:\"piwik_report_token_info\";s:207:\"Authentication token used to integrate report widgets and dashboards. If this token is not set, reporting from within Pimcore will not be possible. It\'s recommended to use a token with read only rights here.\";s:24:\"piwik_iframe_integration\";s:18:\"Iframe Integration\";s:29:\"piwik_iframe_integration_info\";s:450:\"You can embed the whole Matomo/Piwik application as iframe by letting Pimcore generate a \'logme\' URL which automatically logs the selected user into Matomo/Piwik. To authenticate a user, Matomo/Piwik expects a username and the user\'s password as MD5 hash. Please make sure to read the Matomo/Piwik integration documentation as you need to update your Matomo/Piwik settings for this feature (see <a target=\"_blank\" href=\"{matomoLink}\">Matomo FAQ</a>).\";s:21:\"piwik_iframe_username\";s:21:\"Matomo/Piwik Username\";s:21:\"piwik_iframe_password\";s:27:\"Matomo/Piwik Password (MD5)\";s:26:\"piwik_iframe_password_info\";s:73:\"The password needs to be an MD5 hash of the actual Matomo/Piwik password.\";s:35:\"gdpr_dataSource_sentMail_only_email\";s:27:\"Search only based on E-Mail\";s:12:\"imageGallery\";s:13:\"Image Gallery\";s:11:\"column_type\";s:11:\"Column Type\";s:14:\"encryptedField\";s:15:\"Encrypted Field\";s:8:\"datatype\";s:8:\"Datatype\";s:13:\"used_by_class\";s:14:\"Used by class:\";s:17:\"uses_these_bricks\";s:18:\"Uses these bricks:\";s:10:\"last_login\";s:10:\"Last Login\";s:23:\"multiselect_render_type\";s:11:\"Render Type\";s:36:\"please_dont_forget_to_reload_pimcore\";s:69:\"<b>Please don\'t forget to reload pimcore after your modification!</b>\";s:12:\"2fa_required\";s:34:\"Two Factor Authentication required\";s:16:\"2fa_reset_secret\";s:16:\"Reset 2FA Secret\";s:14:\"2fa_reset_done\";s:91:\"The 2FA secret was reset, the user can generate a new one after login (My Profile section).\";s:19:\"focal_point_support\";s:19:\"Focal Point Support\";s:19:\"default_positioning\";s:19:\"Default Positioning\";s:28:\"thumbnail_focal_point_notice\";s:161:\"The image is cropped automatically based on the focal point set on the source image. If no focal point is present, the default positioning setting below is used.\";s:10:\"iframe_url\";s:10:\"IFrame URL\";s:22:\"deactivate_maintenance\";s:22:\"Deactivate Maintenance\";s:16:\"maintenance_mode\";s:16:\"Maintenance Mode\";s:22:\"maintenance_not_active\";s:51:\"It seems that the maintenance isn\'t set up properly\";s:24:\"mail_settings_incomplete\";s:46:\"It seems that the mail settings are incomplete\";s:11:\"bulk_export\";s:11:\"Bulk Export\";s:11:\"bulk_import\";s:11:\"Bulk Import\";s:19:\"warning_bulk_import\";s:123:\"The Bulk Import will overwrite your class/fieldcollection/objectbrick definitions without warning! Do you want to continue?\";s:11:\"environment\";s:11:\"Environment\";s:5:\"local\";s:5:\"Local\";s:7:\"example\";s:7:\"Example\";s:17:\"send_as_html_mime\";s:17:\"Send as HTML/Mime\";s:18:\"send_as_plain_text\";s:18:\"Send as plain text\";s:15:\"send_test_email\";s:15:\"Send Test-Email\";s:11:\"main_domain\";s:11:\"Main Domain\";s:10:\"error_page\";s:10:\"Error Page\";s:18:\"additional_domains\";s:40:\"Additional Domains (one domain per line)\";s:23:\"redirect_to_main_domain\";s:42:\"Redirect additional domains to main domain\";s:13:\"debug_mode_on\";s:10:\"DEBUG MODE\";s:5:\"scope\";s:5:\"Scope\";s:10:\"icon_class\";s:10:\"Icon Class\";s:9:\"nice_name\";s:9:\"Nice Name\";s:20:\"create_menu_shortcut\";s:23:\"Create Shortcut in Menu\";s:7:\"display\";s:7:\"Display\";s:5:\"order\";s:5:\"Order\";s:11:\"filter_type\";s:11:\"Filter Type\";s:22:\"generate_page_previews\";s:22:\"Generate Page Previews\";s:28:\"custom_report_chart_settings\";s:14:\"Chart Settings\";s:23:\"custom_report_charttype\";s:10:\"Chart Type\";s:28:\"custom_report_charttype_none\";s:4:\"None\";s:27:\"custom_report_charttype_pie\";s:9:\"Pie Chart\";s:28:\"custom_report_charttype_line\";s:10:\"Line Chart\";s:27:\"custom_report_charttype_bar\";s:9:\"Bar Chart\";s:27:\"custom_report_chart_options\";s:27:\"Type specific Chart Options\";s:20:\"custom_report_x_axis\";s:6:\"X-Axis\";s:20:\"custom_report_y_axis\";s:6:\"Y-Axis\";s:24:\"custom_report_datacolumn\";s:11:\"Data Column\";s:25:\"custom_report_labelcolumn\";s:12:\"Label Column\";s:25:\"custom_report_only_filter\";s:11:\"Only Filter\";s:29:\"custom_report_filter_and_show\";s:15:\"Filter and Show\";s:30:\"custom_report_filter_drilldown\";s:16:\"Filter Drilldown\";s:26:\"no_further_sources_allowed\";s:31:\"No further data sources allowed\";s:20:\"column_configuration\";s:35:\"Manage & Share Column Configuration\";s:23:\"show_in_google_anaytics\";s:24:\"Show in Google Analytics\";s:5:\"style\";s:5:\"Style\";s:16:\"foreground_color\";s:16:\"Foreground Color\";s:16:\"background_color\";s:16:\"Background Color\";s:22:\"system_infos_and_tools\";s:19:\"System Info & Tools\";s:8:\"php_info\";s:8:\"PHP Info\";s:18:\"php_opcache_status\";s:18:\"PHP OPcache Status\";s:25:\"system_requirements_check\";s:25:\"System-Requirements Check\";s:11:\"server_info\";s:11:\"Server Info\";s:23:\"database_administration\";s:23:\"Database Administration\";s:94:\"important_use_imagick_pecl_extensions_for_best_results_gd_is_just_a_fallback_with_less_quality\";s:125:\"IMPORTANT: Use imagick PECL extension for best results, GDlib is just a fallback with limited functionality and less quality!\";s:4:\"trim\";s:4:\"Trim\";s:19:\"server_fileexplorer\";s:20:\"Server File Explorer\";s:8:\"add_user\";s:8:\"Add User\";s:16:\"direct_sql_query\";s:16:\"Direct SQL query\";s:11:\"use_as_site\";s:11:\"Use as site\";s:11:\"remove_site\";s:11:\"Remove Site\";s:9:\"edit_site\";s:9:\"Edit Site\";s:7:\"site_id\";s:7:\"Site ID\";s:16:\"website_settings\";s:16:\"Website Settings\";s:11:\"clear_cache\";s:11:\"Clear Cache\";s:10:\"extensions\";s:10:\"Extensions\";s:6:\"update\";s:6:\"Update\";s:15:\"system_settings\";s:15:\"System Settings\";s:16:\"image_thumbnails\";s:16:\"Image Thumbnails\";s:10:\"thumbnails\";s:10:\"Thumbnails\";s:5:\"cache\";s:5:\"Cache\";s:7:\"classes\";s:7:\"Classes\";s:13:\"static_routes\";s:13:\"Static Routes\";s:10:\"structured\";s:10:\"Structured\";s:3:\"geo\";s:10:\"Geographic\";s:7:\"loading\";s:7:\"Loading\";s:5:\"steps\";s:5:\"Steps\";s:8:\"database\";s:8:\"Database\";s:8:\"location\";s:8:\"Location\";s:5:\"every\";s:5:\"Every\";s:10:\"categories\";s:10:\"Categories\";s:8:\"revision\";s:5:\"Build\";s:12:\"objectbricks\";s:12:\"Objectbricks\";s:17:\"class_definitions\";s:17:\"Class Definitions\";s:21:\"custom_layout_changed\";s:74:\"Layout was changed in the meantime. Please reload the layout and try again\";s:14:\"rule_violation\";s:14:\"Rule Violation\";s:6:\"emails\";s:6:\"Emails\";s:18:\"log_applicationlog\";s:18:\"Application Logger\";s:20:\"classification_store\";s:20:\"Classification Store\";s:19:\"quantityValue_field\";s:14:\"Quantity Value\";s:8:\"expanded\";s:8:\"Expanded\";s:12:\"display_type\";s:12:\"Display Type\";s:19:\"custom_report_class\";s:12:\"Report class\";s:4:\"hide\";s:4:\"Hide\";s:15:\"full_page_cache\";s:15:\"Full Page Cache\";s:21:\"clear_full_page_cache\";s:21:\"Clear Full Page Cache\";s:10:\"all_caches\";s:10:\"All Caches\";s:18:\"web2print_settings\";s:21:\"Web-to-Print Settings\";s:18:\"admin_translations\";s:18:\"Admin Translations\";s:4:\"lock\";s:4:\"Lock\";s:6:\"unlock\";s:6:\"Unlock\";s:28:\"lock_and_propagate_to_childs\";s:30:\"Lock and propagate to children\";s:32:\"unlock_and_propagate_to_children\";s:32:\"Unlock and propagate to children\";s:10:\"data_cache\";s:10:\"Data Cache\";s:18:\"listing_use_traits\";s:20:\"Listing Use (traits)\";s:24:\"listing_parent_php_class\";s:24:\"Listing Parent PHP Class\";s:15:\"expand_cs_group\";s:63:\"There are empty features not displayed here. Click to show them\";s:15:\"hide_empty_data\";s:15:\"Hide empty data\";s:16:\"class_attributes\";s:16:\"Class Attributes\";s:20:\"operator_group_other\";s:6:\"Others\";s:26:\"operator_group_transformer\";s:12:\"Transformers\";s:24:\"operator_group_extractor\";s:10:\"Extractors\";s:24:\"operator_group_formatter\";s:10:\"Formatters\";s:23:\"operator_group_renderer\";s:8:\"Renderer\";s:26:\"operator_renderer_settings\";s:17:\"Renderer Settings\";s:15:\"refresh_preview\";s:15:\"Refresh Preview\";s:14:\"show_charcount\";s:20:\"Show Character Count\";s:10:\"max_length\";s:10:\"Max Length\";s:14:\"reports_config\";s:14:\"Reports Config\";s:25:\"exclude_from_search_index\";s:37:\"Exclude from Backend Full-Text Search\";s:4:\"left\";s:4:\"left\";s:5:\"right\";s:5:\"right\";s:18:\"provide_split_view\";s:18:\"Provide Split View\";s:26:\"allow_multiple_assignments\";s:26:\"Allow Multiple Assignments\";s:23:\"enable_admin_async_load\";s:26:\"Enable Async Load in Admin\";s:27:\"async_loading_warning_block\";s:73:\"WARNING: Async Loading is NOT possible within Localized Fields and Blocks\";s:29:\"activate_column_configuration\";s:29:\"Activate Column Configuration\";s:26:\"table_column_configuration\";s:20:\"Column Configuration\";s:20:\"send_invitation_link\";s:20:\"Send Invitation Link\";s:15:\"invitation_sent\";s:21:\"Login Invitation sent\";s:20:\"invitation_link_sent\";s:60:\"A temporary login link has been sent to email address: \"%s\" \";s:32:\"classificationstore_group_by_key\";s:12:\"Group by key\";s:26:\"allow_to_create_new_object\";s:46:\"Allow to create a new object in relation field\";s:1:\":\";s:0:\"\";s:11:\"Afghanistan\";s:0:\"\";s:9:\"Afrikaans\";s:0:\"\";s:19:\"Afrikaans (Namibia)\";s:0:\"\";s:24:\"Afrikaans (South Africa)\";s:0:\"\";s:5:\"Aghem\";s:0:\"\";s:16:\"Aghem (Cameroon)\";s:0:\"\";s:4:\"Akan\";s:0:\"\";s:12:\"Akan (Ghana)\";s:0:\"\";s:7:\"Albania\";s:0:\"\";s:8:\"Albanian\";s:0:\"\";s:18:\"Albanian (Albania)\";s:0:\"\";s:17:\"Albanian (Kosovo)\";s:0:\"\";s:26:\"Albanian (North Macedonia)\";s:0:\"\";s:7:\"Algeria\";s:0:\"\";s:3:\"Alt\";s:0:\"\";s:14:\"American Samoa\";s:0:\"\";s:7:\"Amharic\";s:0:\"\";s:18:\"Amharic (Ethiopia)\";s:0:\"\";s:7:\"Andorra\";s:0:\"\";s:6:\"Angola\";s:0:\"\";s:8:\"Anguilla\";s:0:\"\";s:6:\"Answer\";s:0:\"\";s:10:\"Antarctica\";s:0:\"\";s:17:\"Antigua & Barbuda\";s:0:\"\";s:6:\"Arabic\";s:0:\"\";s:16:\"Arabic (Algeria)\";s:0:\"\";s:16:\"Arabic (Bahrain)\";s:0:\"\";s:13:\"Arabic (Chad)\";s:0:\"\";s:16:\"Arabic (Comoros)\";s:0:\"\";s:17:\"Arabic (Djibouti)\";s:0:\"\";s:14:\"Arabic (Egypt)\";s:0:\"\";s:16:\"Arabic (Eritrea)\";s:0:\"\";s:13:\"Arabic (Iraq)\";s:0:\"\";s:15:\"Arabic (Israel)\";s:0:\"\";s:15:\"Arabic (Jordan)\";s:0:\"\";s:15:\"Arabic (Kuwait)\";s:0:\"\";s:16:\"Arabic (Lebanon)\";s:0:\"\";s:14:\"Arabic (Libya)\";s:0:\"\";s:19:\"Arabic (Mauritania)\";s:0:\"\";s:16:\"Arabic (Morocco)\";s:0:\"\";s:13:\"Arabic (Oman)\";s:0:\"\";s:32:\"Arabic (Palestinian Territories)\";s:0:\"\";s:14:\"Arabic (Qatar)\";s:0:\"\";s:21:\"Arabic (Saudi Arabia)\";s:0:\"\";s:16:\"Arabic (Somalia)\";s:0:\"\";s:20:\"Arabic (South Sudan)\";s:0:\"\";s:14:\"Arabic (Sudan)\";s:0:\"\";s:14:\"Arabic (Syria)\";s:0:\"\";s:16:\"Arabic (Tunisia)\";s:0:\"\";s:29:\"Arabic (United Arab Emirates)\";s:0:\"\";s:23:\"Arabic (Western Sahara)\";s:0:\"\";s:14:\"Arabic (World)\";s:0:\"\";s:14:\"Arabic (Yemen)\";s:0:\"\";s:9:\"Argentina\";s:0:\"\";s:7:\"Armenia\";s:0:\"\";s:8:\"Armenian\";s:0:\"\";s:18:\"Armenian (Armenia)\";s:0:\"\";s:5:\"Aruba\";s:0:\"\";s:8:\"Assamese\";s:0:\"\";s:16:\"Assamese (India)\";s:0:\"\";s:8:\"Asturian\";s:0:\"\";s:16:\"Asturian (Spain)\";s:0:\"\";s:3:\"Asu\";s:0:\"\";s:14:\"Asu (Tanzania)\";s:0:\"\";s:9:\"Australia\";s:0:\"\";s:7:\"Austria\";s:0:\"\";s:10:\"Azerbaijan\";s:0:\"\";s:11:\"Azerbaijani\";s:0:\"\";s:24:\"Azerbaijani (Azerbaijan)\";s:0:\"\";s:5:\"Bafia\";s:0:\"\";s:16:\"Bafia (Cameroon)\";s:0:\"\";s:7:\"Bahamas\";s:0:\"\";s:7:\"Bahrain\";s:0:\"\";s:7:\"Bambara\";s:0:\"\";s:14:\"Bambara (Mali)\";s:0:\"\";s:6:\"Bangla\";s:0:\"\";s:19:\"Bangla (Bangladesh)\";s:0:\"\";s:14:\"Bangla (India)\";s:0:\"\";s:10:\"Bangladesh\";s:0:\"\";s:8:\"Barbados\";s:0:\"\";s:5:\"Basaa\";s:0:\"\";s:16:\"Basaa (Cameroon)\";s:0:\"\";s:6:\"Basque\";s:0:\"\";s:14:\"Basque (Spain)\";s:0:\"\";s:7:\"Belarus\";s:0:\"\";s:10:\"Belarusian\";s:0:\"\";s:20:\"Belarusian (Belarus)\";s:0:\"\";s:7:\"Belgium\";s:0:\"\";s:6:\"Belize\";s:0:\"\";s:5:\"Bemba\";s:0:\"\";s:14:\"Bemba (Zambia)\";s:0:\"\";s:4:\"Bena\";s:0:\"\";s:15:\"Bena (Tanzania)\";s:0:\"\";s:5:\"Benin\";s:0:\"\";s:7:\"Bermuda\";s:0:\"\";s:6:\"Bhutan\";s:0:\"\";s:4:\"Bodo\";s:0:\"\";s:12:\"Bodo (India)\";s:0:\"\";s:7:\"Bolivia\";s:0:\"\";s:20:\"Bosnia & Herzegovina\";s:0:\"\";s:7:\"Bosnian\";s:0:\"\";s:30:\"Bosnian (Bosnia & Herzegovina)\";s:0:\"\";s:8:\"Botswana\";s:0:\"\";s:13:\"Bouvet Island\";s:0:\"\";s:5:\"Brand\";s:0:\"\";s:6:\"Brazil\";s:0:\"\";s:6:\"Breton\";s:0:\"\";s:15:\"Breton (France)\";s:0:\"\";s:30:\"British Indian Ocean Territory\";s:0:\"\";s:22:\"British Virgin Islands\";s:0:\"\";s:6:\"Brunei\";s:0:\"\";s:8:\"Bulgaria\";s:0:\"\";s:9:\"Bulgarian\";s:0:\"\";s:20:\"Bulgarian (Bulgaria)\";s:0:\"\";s:12:\"Burkina Faso\";s:0:\"\";s:7:\"Burmese\";s:0:\"\";s:25:\"Burmese (Myanmar (Burma))\";s:0:\"\";s:7:\"Burundi\";s:0:\"\";s:10:\"CSV Export\";s:0:\"\";s:8:\"Cambodia\";s:0:\"\";s:8:\"Cameroon\";s:0:\"\";s:6:\"Canada\";s:0:\"\";s:9:\"Cantonese\";s:0:\"\";s:17:\"Cantonese (China)\";s:0:\"\";s:31:\"Cantonese (Hong Kong SAR China)\";s:0:\"\";s:10:\"Cape Verde\";s:0:\"\";s:21:\"Caribbean Netherlands\";s:0:\"\";s:7:\"Catalan\";s:0:\"\";s:17:\"Catalan (Andorra)\";s:0:\"\";s:16:\"Catalan (France)\";s:0:\"\";s:15:\"Catalan (Italy)\";s:0:\"\";s:15:\"Catalan (Spain)\";s:0:\"\";s:14:\"Cayman Islands\";s:0:\"\";s:7:\"Cebuano\";s:0:\"\";s:21:\"Cebuano (Philippines)\";s:0:\"\";s:24:\"Central African Republic\";s:0:\"\";s:23:\"Central Atlas Tamazight\";s:0:\"\";s:33:\"Central Atlas Tamazight (Morocco)\";s:0:\"\";s:15:\"Central Kurdish\";s:0:\"\";s:22:\"Central Kurdish (Iran)\";s:0:\"\";s:22:\"Central Kurdish (Iraq)\";s:0:\"\";s:4:\"Chad\";s:0:\"\";s:6:\"Chakma\";s:0:\"\";s:19:\"Chakma (Bangladesh)\";s:0:\"\";s:14:\"Chakma (India)\";s:0:\"\";s:7:\"Chechen\";s:0:\"\";s:16:\"Chechen (Russia)\";s:0:\"\";s:8:\"Cherokee\";s:0:\"\";s:24:\"Cherokee (United States)\";s:0:\"\";s:5:\"Chiga\";s:0:\"\";s:14:\"Chiga (Uganda)\";s:0:\"\";s:5:\"Chile\";s:0:\"\";s:5:\"China\";s:0:\"\";s:7:\"Chinese\";s:0:\"\";s:15:\"Chinese (China)\";s:0:\"\";s:29:\"Chinese (Hong Kong SAR China)\";s:0:\"\";s:25:\"Chinese (Macao SAR China)\";s:0:\"\";s:19:\"Chinese (Singapore)\";s:0:\"\";s:16:\"Chinese (Taiwan)\";s:0:\"\";s:16:\"Christmas Island\";s:0:\"\";s:23:\"Cocos (Keeling) Islands\";s:0:\"\";s:9:\"Colognian\";s:0:\"\";s:19:\"Colognian (Germany)\";s:0:\"\";s:8:\"Colombia\";s:0:\"\";s:5:\"Color\";s:0:\"\";s:7:\"Comoros\";s:0:\"\";s:19:\"Congo - Brazzaville\";s:0:\"\";s:16:\"Congo - Kinshasa\";s:0:\"\";s:12:\"Cook Islands\";s:0:\"\";s:7:\"Cornish\";s:0:\"\";s:24:\"Cornish (United Kingdom)\";s:0:\"\";s:10:\"Costa Rica\";s:0:\"\";s:7:\"Cotton \";s:0:\"\";s:7:\"Croatia\";s:0:\"\";s:8:\"Croatian\";s:0:\"\";s:31:\"Croatian (Bosnia & Herzegovina)\";s:0:\"\";s:18:\"Croatian (Croatia)\";s:0:\"\";s:4:\"Ctrl\";s:0:\"\";s:4:\"Cuba\";s:0:\"\";s:8:\"Curaçao\";s:0:\"\";s:6:\"Cyprus\";s:0:\"\";s:5:\"Czech\";s:0:\"\";s:15:\"Czech (Czechia)\";s:0:\"\";s:7:\"Czechia\";s:0:\"\";s:16:\"Côte d’Ivoire\";s:0:\"\";s:6:\"Danish\";s:0:\"\";s:16:\"Danish (Denmark)\";s:0:\"\";s:18:\"Danish (Greenland)\";s:0:\"\";s:8:\"DateTime\";s:0:\"\";s:9:\"Deep Neck\";s:0:\"\";s:5:\"Denim\";s:0:\"\";s:7:\"Denmark\";s:0:\"\";s:11:\"Description\";s:0:\"\";s:8:\"Discount\";s:0:\"\";s:8:\"Djibouti\";s:0:\"\";s:8:\"Dominica\";s:0:\"\";s:18:\"Dominican Republic\";s:0:\"\";s:5:\"Duala\";s:0:\"\";s:16:\"Duala (Cameroon)\";s:0:\"\";s:5:\"Dutch\";s:0:\"\";s:13:\"Dutch (Aruba)\";s:0:\"\";s:15:\"Dutch (Belgium)\";s:0:\"\";s:29:\"Dutch (Caribbean Netherlands)\";s:0:\"\";s:16:\"Dutch (Curaçao)\";s:0:\"\";s:19:\"Dutch (Netherlands)\";s:0:\"\";s:20:\"Dutch (Sint Maarten)\";s:0:\"\";s:16:\"Dutch (Suriname)\";s:0:\"\";s:8:\"Dzongkha\";s:0:\"\";s:17:\"Dzongkha (Bhutan)\";s:0:\"\";s:7:\"Ecuador\";s:0:\"\";s:5:\"Egypt\";s:0:\"\";s:11:\"El Salvador\";s:0:\"\";s:4:\"Embu\";s:0:\"\";s:12:\"Embu (Kenya)\";s:0:\"\";s:7:\"English\";s:0:\"\";s:24:\"English (American Samoa)\";s:0:\"\";s:18:\"English (Anguilla)\";s:0:\"\";s:27:\"English (Antigua & Barbuda)\";s:0:\"\";s:19:\"English (Australia)\";s:0:\"\";s:17:\"English (Austria)\";s:0:\"\";s:17:\"English (Bahamas)\";s:0:\"\";s:18:\"English (Barbados)\";s:0:\"\";s:17:\"English (Belgium)\";s:0:\"\";s:16:\"English (Belize)\";s:0:\"\";s:17:\"English (Bermuda)\";s:0:\"\";s:18:\"English (Botswana)\";s:0:\"\";s:40:\"English (British Indian Ocean Territory)\";s:0:\"\";s:32:\"English (British Virgin Islands)\";s:0:\"\";s:17:\"English (Burundi)\";s:0:\"\";s:18:\"English (Cameroon)\";s:0:\"\";s:16:\"English (Canada)\";s:0:\"\";s:24:\"English (Cayman Islands)\";s:0:\"\";s:26:\"English (Christmas Island)\";s:0:\"\";s:33:\"English (Cocos (Keeling) Islands)\";s:0:\"\";s:22:\"English (Cook Islands)\";s:0:\"\";s:16:\"English (Cyprus)\";s:0:\"\";s:17:\"English (Denmark)\";s:0:\"\";s:22:\"English (Diego Garcia)\";s:0:\"\";s:18:\"English (Dominica)\";s:0:\"\";s:17:\"English (Eritrea)\";s:0:\"\";s:18:\"English (Eswatini)\";s:0:\"\";s:16:\"English (Europe)\";s:0:\"\";s:26:\"English (Falkland Islands)\";s:0:\"\";s:14:\"English (Fiji)\";s:0:\"\";s:17:\"English (Finland)\";s:0:\"\";s:16:\"English (Gambia)\";s:0:\"\";s:17:\"English (Germany)\";s:0:\"\";s:15:\"English (Ghana)\";s:0:\"\";s:19:\"English (Gibraltar)\";s:0:\"\";s:17:\"English (Grenada)\";s:0:\"\";s:14:\"English (Guam)\";s:0:\"\";s:18:\"English (Guernsey)\";s:0:\"\";s:16:\"English (Guyana)\";s:0:\"\";s:29:\"English (Hong Kong SAR China)\";s:0:\"\";s:15:\"English (India)\";s:0:\"\";s:17:\"English (Ireland)\";s:0:\"\";s:21:\"English (Isle of Man)\";s:0:\"\";s:16:\"English (Israel)\";s:0:\"\";s:17:\"English (Jamaica)\";s:0:\"\";s:16:\"English (Jersey)\";s:0:\"\";s:15:\"English (Kenya)\";s:0:\"\";s:18:\"English (Kiribati)\";s:0:\"\";s:17:\"English (Lesotho)\";s:0:\"\";s:17:\"English (Liberia)\";s:0:\"\";s:25:\"English (Macao SAR China)\";s:0:\"\";s:20:\"English (Madagascar)\";s:0:\"\";s:16:\"English (Malawi)\";s:0:\"\";s:18:\"English (Malaysia)\";s:0:\"\";s:15:\"English (Malta)\";s:0:\"\";s:26:\"English (Marshall Islands)\";s:0:\"\";s:19:\"English (Mauritius)\";s:0:\"\";s:20:\"English (Micronesia)\";s:0:\"\";s:20:\"English (Montserrat)\";s:0:\"\";s:17:\"English (Namibia)\";s:0:\"\";s:15:\"English (Nauru)\";s:0:\"\";s:21:\"English (Netherlands)\";s:0:\"\";s:21:\"English (New Zealand)\";s:0:\"\";s:17:\"English (Nigeria)\";s:0:\"\";s:14:\"English (Niue)\";s:0:\"\";s:24:\"English (Norfolk Island)\";s:0:\"\";s:34:\"English (Northern Mariana Islands)\";s:0:\"\";s:18:\"English (Pakistan)\";s:0:\"\";s:15:\"English (Palau)\";s:0:\"\";s:26:\"English (Papua New Guinea)\";s:0:\"\";s:21:\"English (Philippines)\";s:0:\"\";s:26:\"English (Pitcairn Islands)\";s:0:\"\";s:21:\"English (Puerto Rico)\";s:0:\"\";s:16:\"English (Rwanda)\";s:0:\"\";s:15:\"English (Samoa)\";s:0:\"\";s:20:\"English (Seychelles)\";s:0:\"\";s:22:\"English (Sierra Leone)\";s:0:\"\";s:19:\"English (Singapore)\";s:0:\"\";s:22:\"English (Sint Maarten)\";s:0:\"\";s:18:\"English (Slovenia)\";s:0:\"\";s:25:\"English (Solomon Islands)\";s:0:\"\";s:22:\"English (South Africa)\";s:0:\"\";s:21:\"English (South Sudan)\";s:0:\"\";s:20:\"English (St. Helena)\";s:0:\"\";s:27:\"English (St. Kitts & Nevis)\";s:0:\"\";s:19:\"English (St. Lucia)\";s:0:\"\";s:34:\"English (St. Vincent & Grenadines)\";s:0:\"\";s:15:\"English (Sudan)\";s:0:\"\";s:16:\"English (Sweden)\";s:0:\"\";s:21:\"English (Switzerland)\";s:0:\"\";s:18:\"English (Tanzania)\";s:0:\"\";s:17:\"English (Tokelau)\";s:0:\"\";s:15:\"English (Tonga)\";s:0:\"\";s:27:\"English (Trinidad & Tobago)\";s:0:\"\";s:32:\"English (Turks & Caicos Islands)\";s:0:\"\";s:16:\"English (Tuvalu)\";s:0:\"\";s:31:\"English (U.S. Outlying Islands)\";s:0:\"\";s:29:\"English (U.S. Virgin Islands)\";s:0:\"\";s:16:\"English (Uganda)\";s:0:\"\";s:30:\"English (United Arab Emirates)\";s:0:\"\";s:24:\"English (United Kingdom)\";s:0:\"\";s:23:\"English (United States)\";s:0:\"\";s:17:\"English (Vanuatu)\";s:0:\"\";s:15:\"English (World)\";s:0:\"\";s:16:\"English (Zambia)\";s:0:\"\";s:18:\"English (Zimbabwe)\";s:0:\"\";s:17:\"Equatorial Guinea\";s:0:\"\";s:7:\"Eritrea\";s:0:\"\";s:9:\"Esperanto\";s:0:\"\";s:17:\"Esperanto (World)\";s:0:\"\";s:7:\"Estonia\";s:0:\"\";s:8:\"Estonian\";s:0:\"\";s:18:\"Estonian (Estonia)\";s:0:\"\";s:8:\"Eswatini\";s:0:\"\";s:8:\"Ethiopia\";s:0:\"\";s:3:\"Ewe\";s:0:\"\";s:11:\"Ewe (Ghana)\";s:0:\"\";s:10:\"Ewe (Togo)\";s:0:\"\";s:6:\"Ewondo\";s:0:\"\";s:17:\"Ewondo (Cameroon)\";s:0:\"\";s:3:\"FAQ\";s:0:\"\";s:6:\"Fabric\";s:0:\"\";s:16:\"Falkland Islands\";s:0:\"\";s:13:\"Faroe Islands\";s:0:\"\";s:7:\"Faroese\";s:0:\"\";s:17:\"Faroese (Denmark)\";s:0:\"\";s:23:\"Faroese (Faroe Islands)\";s:0:\"\";s:6:\"Female\";s:0:\"\";s:4:\"Fiji\";s:0:\"\";s:8:\"Filipino\";s:0:\"\";s:22:\"Filipino (Philippines)\";s:0:\"\";s:7:\"Finland\";s:0:\"\";s:7:\"Finnish\";s:0:\"\";s:17:\"Finnish (Finland)\";s:0:\"\";s:10:\"First Name\";s:0:\"\";s:6:\"France\";s:0:\"\";s:6:\"French\";s:0:\"\";s:16:\"French (Algeria)\";s:0:\"\";s:16:\"French (Belgium)\";s:0:\"\";s:14:\"French (Benin)\";s:0:\"\";s:21:\"French (Burkina Faso)\";s:0:\"\";s:16:\"French (Burundi)\";s:0:\"\";s:17:\"French (Cameroon)\";s:0:\"\";s:15:\"French (Canada)\";s:0:\"\";s:33:\"French (Central African Republic)\";s:0:\"\";s:13:\"French (Chad)\";s:0:\"\";s:16:\"French (Comoros)\";s:0:\"\";s:28:\"French (Congo - Brazzaville)\";s:0:\"\";s:25:\"French (Congo - Kinshasa)\";s:0:\"\";s:25:\"French (Côte d’Ivoire)\";s:0:\"\";s:17:\"French (Djibouti)\";s:0:\"\";s:26:\"French (Equatorial Guinea)\";s:0:\"\";s:15:\"French (France)\";s:0:\"\";s:22:\"French (French Guiana)\";s:0:\"\";s:25:\"French (French Polynesia)\";s:0:\"\";s:14:\"French (Gabon)\";s:0:\"\";s:19:\"French (Guadeloupe)\";s:0:\"\";s:15:\"French (Guinea)\";s:0:\"\";s:14:\"French (Haiti)\";s:0:\"\";s:19:\"French (Luxembourg)\";s:0:\"\";s:19:\"French (Madagascar)\";s:0:\"\";s:13:\"French (Mali)\";s:0:\"\";s:19:\"French (Martinique)\";s:0:\"\";s:19:\"French (Mauritania)\";s:0:\"\";s:18:\"French (Mauritius)\";s:0:\"\";s:16:\"French (Mayotte)\";s:0:\"\";s:15:\"French (Monaco)\";s:0:\"\";s:16:\"French (Morocco)\";s:0:\"\";s:22:\"French (New Caledonia)\";s:0:\"\";s:14:\"French (Niger)\";s:0:\"\";s:15:\"French (Rwanda)\";s:0:\"\";s:17:\"French (Réunion)\";s:0:\"\";s:16:\"French (Senegal)\";s:0:\"\";s:19:\"French (Seychelles)\";s:0:\"\";s:24:\"French (St. Barthélemy)\";s:0:\"\";s:19:\"French (St. Martin)\";s:0:\"\";s:30:\"French (St. Pierre & Miquelon)\";s:0:\"\";s:20:\"French (Switzerland)\";s:0:\"\";s:14:\"French (Syria)\";s:0:\"\";s:13:\"French (Togo)\";s:0:\"\";s:16:\"French (Tunisia)\";s:0:\"\";s:16:\"French (Vanuatu)\";s:0:\"\";s:24:\"French (Wallis & Futuna)\";s:0:\"\";s:13:\"French Guiana\";s:0:\"\";s:16:\"French Polynesia\";s:0:\"\";s:27:\"French Southern Territories\";s:0:\"\";s:8:\"Friulian\";s:0:\"\";s:16:\"Friulian (Italy)\";s:0:\"\";s:5:\"Fulah\";s:0:\"\";s:20:\"Fulah (Burkina Faso)\";s:0:\"\";s:16:\"Fulah (Cameroon)\";s:0:\"\";s:14:\"Fulah (Gambia)\";s:0:\"\";s:13:\"Fulah (Ghana)\";s:0:\"\";s:14:\"Fulah (Guinea)\";s:0:\"\";s:21:\"Fulah (Guinea-Bissau)\";s:0:\"\";s:15:\"Fulah (Liberia)\";s:0:\"\";s:18:\"Fulah (Mauritania)\";s:0:\"\";s:13:\"Fulah (Niger)\";s:0:\"\";s:15:\"Fulah (Nigeria)\";s:0:\"\";s:15:\"Fulah (Senegal)\";s:0:\"\";s:20:\"Fulah (Sierra Leone)\";s:0:\"\";s:11:\"Full Sleeve\";s:0:\"\";s:5:\"Gabon\";s:0:\"\";s:8:\"Galician\";s:0:\"\";s:16:\"Galician (Spain)\";s:0:\"\";s:6:\"Gambia\";s:0:\"\";s:5:\"Ganda\";s:0:\"\";s:14:\"Ganda (Uganda)\";s:0:\"\";s:6:\"Gender\";s:0:\"\";s:8:\"Generate\";s:0:\"\";s:7:\"Georgia\";s:0:\"\";s:8:\"Georgian\";s:0:\"\";s:18:\"Georgian (Georgia)\";s:0:\"\";s:6:\"German\";s:0:\"\";s:16:\"German (Austria)\";s:0:\"\";s:16:\"German (Belgium)\";s:0:\"\";s:16:\"German (Germany)\";s:0:\"\";s:14:\"German (Italy)\";s:0:\"\";s:22:\"German (Liechtenstein)\";s:0:\"\";s:19:\"German (Luxembourg)\";s:0:\"\";s:20:\"German (Switzerland)\";s:0:\"\";s:7:\"Germany\";s:0:\"\";s:5:\"Ghana\";s:0:\"\";s:9:\"Gibraltar\";s:0:\"\";s:6:\"Greece\";s:0:\"\";s:5:\"Greek\";s:0:\"\";s:14:\"Greek (Cyprus)\";s:0:\"\";s:14:\"Greek (Greece)\";s:0:\"\";s:9:\"Greenland\";s:0:\"\";s:7:\"Grenada\";s:0:\"\";s:10:\"Guadeloupe\";s:0:\"\";s:4:\"Guam\";s:0:\"\";s:9:\"Guatemala\";s:0:\"\";s:5:\"Gucci\";s:0:\"\";s:8:\"Guernsey\";s:0:\"\";s:6:\"Guinea\";s:0:\"\";s:13:\"Guinea-Bissau\";s:0:\"\";s:8:\"Gujarati\";s:0:\"\";s:16:\"Gujarati (India)\";s:0:\"\";s:5:\"Gusii\";s:0:\"\";s:13:\"Gusii (Kenya)\";s:0:\"\";s:5:\"Gussi\";s:0:\"\";s:6:\"Guyana\";s:0:\"\";s:5:\"Haiti\";s:0:\"\";s:5:\"Hausa\";s:0:\"\";s:13:\"Hausa (Ghana)\";s:0:\"\";s:13:\"Hausa (Niger)\";s:0:\"\";s:15:\"Hausa (Nigeria)\";s:0:\"\";s:8:\"Hawaiian\";s:0:\"\";s:24:\"Hawaiian (United States)\";s:0:\"\";s:24:\"Heard & McDonald Islands\";s:0:\"\";s:6:\"Hebrew\";s:0:\"\";s:15:\"Hebrew (Israel)\";s:0:\"\";s:5:\"Hindi\";s:0:\"\";s:13:\"Hindi (India)\";s:0:\"\";s:8:\"Honduras\";s:0:\"\";s:19:\"Hong Kong SAR China\";s:0:\"\";s:9:\"Hungarian\";s:0:\"\";s:19:\"Hungarian (Hungary)\";s:0:\"\";s:7:\"Hungary\";s:0:\"\";s:7:\"Iceland\";s:0:\"\";s:9:\"Icelandic\";s:0:\"\";s:19:\"Icelandic (Iceland)\";s:0:\"\";s:4:\"Igbo\";s:0:\"\";s:14:\"Igbo (Nigeria)\";s:0:\"\";s:5:\"Image\";s:0:\"\";s:10:\"Inari Sami\";s:0:\"\";s:20:\"Inari Sami (Finland)\";s:0:\"\";s:5:\"India\";s:0:\"\";s:9:\"Indonesia\";s:0:\"\";s:10:\"Indonesian\";s:0:\"\";s:22:\"Indonesian (Indonesia)\";s:0:\"\";s:11:\"Interlingua\";s:0:\"\";s:19:\"Interlingua (World)\";s:0:\"\";s:4:\"Iran\";s:0:\"\";s:4:\"Iraq\";s:0:\"\";s:7:\"Ireland\";s:0:\"\";s:5:\"Irish\";s:0:\"\";s:15:\"Irish (Ireland)\";s:0:\"\";s:22:\"Irish (United Kingdom)\";s:0:\"\";s:11:\"Isle of Man\";s:0:\"\";s:6:\"Israel\";s:0:\"\";s:7:\"Italian\";s:0:\"\";s:15:\"Italian (Italy)\";s:0:\"\";s:20:\"Italian (San Marino)\";s:0:\"\";s:21:\"Italian (Switzerland)\";s:0:\"\";s:22:\"Italian (Vatican City)\";s:0:\"\";s:5:\"Italy\";s:0:\"\";s:7:\"Jamaica\";s:0:\"\";s:5:\"Japan\";s:0:\"\";s:8:\"Japanese\";s:0:\"\";s:16:\"Japanese (Japan)\";s:0:\"\";s:8:\"Javanese\";s:0:\"\";s:20:\"Javanese (Indonesia)\";s:0:\"\";s:6:\"Jersey\";s:0:\"\";s:10:\"Jola-Fonyi\";s:0:\"\";s:20:\"Jola-Fonyi (Senegal)\";s:0:\"\";s:6:\"Jordan\";s:0:\"\";s:12:\"Kabuverdianu\";s:0:\"\";s:25:\"Kabuverdianu (Cape Verde)\";s:0:\"\";s:6:\"Kabyle\";s:0:\"\";s:16:\"Kabyle (Algeria)\";s:0:\"\";s:4:\"Kako\";s:0:\"\";s:15:\"Kako (Cameroon)\";s:0:\"\";s:11:\"Kalaallisut\";s:0:\"\";s:23:\"Kalaallisut (Greenland)\";s:0:\"\";s:8:\"Kalenjin\";s:0:\"\";s:16:\"Kalenjin (Kenya)\";s:0:\"\";s:5:\"Kamba\";s:0:\"\";s:13:\"Kamba (Kenya)\";s:0:\"\";s:7:\"Kannada\";s:0:\"\";s:15:\"Kannada (India)\";s:0:\"\";s:8:\"Kashmiri\";s:0:\"\";s:16:\"Kashmiri (India)\";s:0:\"\";s:6:\"Kazakh\";s:0:\"\";s:19:\"Kazakh (Kazakhstan)\";s:0:\"\";s:10:\"Kazakhstan\";s:0:\"\";s:5:\"Kenya\";s:0:\"\";s:5:\"Khmer\";s:0:\"\";s:16:\"Khmer (Cambodia)\";s:0:\"\";s:6:\"Kikuyu\";s:0:\"\";s:14:\"Kikuyu (Kenya)\";s:0:\"\";s:11:\"Kinyarwanda\";s:0:\"\";s:20:\"Kinyarwanda (Rwanda)\";s:0:\"\";s:8:\"Kiribati\";s:0:\"\";s:7:\"Konkani\";s:0:\"\";s:15:\"Konkani (India)\";s:0:\"\";s:6:\"Korean\";s:0:\"\";s:20:\"Korean (North Korea)\";s:0:\"\";s:20:\"Korean (South Korea)\";s:0:\"\";s:12:\"Koyra Chiini\";s:0:\"\";s:19:\"Koyra Chiini (Mali)\";s:0:\"\";s:15:\"Koyraboro Senni\";s:0:\"\";s:22:\"Koyraboro Senni (Mali)\";s:0:\"\";s:7:\"Kurdish\";s:0:\"\";s:16:\"Kurdish (Turkey)\";s:0:\"\";s:6:\"Kuwait\";s:0:\"\";s:6:\"Kwasio\";s:0:\"\";s:17:\"Kwasio (Cameroon)\";s:0:\"\";s:6:\"Kyrgyz\";s:0:\"\";s:19:\"Kyrgyz (Kyrgyzstan)\";s:0:\"\";s:10:\"Kyrgyzstan\";s:0:\"\";s:6:\"Lakota\";s:0:\"\";s:22:\"Lakota (United States)\";s:0:\"\";s:5:\"Langi\";s:0:\"\";s:16:\"Langi (Tanzania)\";s:0:\"\";s:14:\"Lantern Sleeve\";s:0:\"\";s:3:\"Lao\";s:0:\"\";s:10:\"Lao (Laos)\";s:0:\"\";s:4:\"Laos\";s:0:\"\";s:9:\"Last Name\";s:0:\"\";s:6:\"Latvia\";s:0:\"\";s:7:\"Latvian\";s:0:\"\";s:16:\"Latvian (Latvia)\";s:0:\"\";s:7:\"Lebanon\";s:0:\"\";s:6:\"Length\";s:0:\"\";s:7:\"Lesotho\";s:0:\"\";s:7:\"Liberia\";s:0:\"\";s:5:\"Libya\";s:0:\"\";s:13:\"Liechtenstein\";s:0:\"\";s:7:\"Lingala\";s:0:\"\";s:16:\"Lingala (Angola)\";s:0:\"\";s:34:\"Lingala (Central African Republic)\";s:0:\"\";s:29:\"Lingala (Congo - Brazzaville)\";s:0:\"\";s:26:\"Lingala (Congo - Kinshasa)\";s:0:\"\";s:9:\"Lithuania\";s:0:\"\";s:10:\"Lithuanian\";s:0:\"\";s:22:\"Lithuanian (Lithuania)\";s:0:\"\";s:13:\"Louis Vuitton\";s:0:\"\";s:10:\"Low German\";s:0:\"\";s:20:\"Low German (Germany)\";s:0:\"\";s:24:\"Low German (Netherlands)\";s:0:\"\";s:13:\"Lower Sorbian\";s:0:\"\";s:23:\"Lower Sorbian (Germany)\";s:0:\"\";s:12:\"Luba-Katanga\";s:0:\"\";s:31:\"Luba-Katanga (Congo - Kinshasa)\";s:0:\"\";s:3:\"Luo\";s:0:\"\";s:11:\"Luo (Kenya)\";s:0:\"\";s:10:\"Luxembourg\";s:0:\"\";s:13:\"Luxembourgish\";s:0:\"\";s:26:\"Luxembourgish (Luxembourg)\";s:0:\"\";s:5:\"Luyia\";s:0:\"\";s:13:\"Luyia (Kenya)\";s:0:\"\";s:1:\"M\";s:0:\"\";s:15:\"Macao SAR China\";s:0:\"\";s:10:\"Macedonian\";s:0:\"\";s:28:\"Macedonian (North Macedonia)\";s:0:\"\";s:7:\"Machame\";s:0:\"\";s:18:\"Machame (Tanzania)\";s:0:\"\";s:10:\"Madagascar\";s:0:\"\";s:7:\"Made In\";s:0:\"\";s:14:\"Makhuwa-Meetto\";s:0:\"\";s:27:\"Makhuwa-Meetto (Mozambique)\";s:0:\"\";s:7:\"Makonde\";s:0:\"\";s:18:\"Makonde (Tanzania)\";s:0:\"\";s:8:\"Malagasy\";s:0:\"\";s:21:\"Malagasy (Madagascar)\";s:0:\"\";s:6:\"Malawi\";s:0:\"\";s:5:\"Malay\";s:0:\"\";s:14:\"Malay (Brunei)\";s:0:\"\";s:16:\"Malay (Malaysia)\";s:0:\"\";s:17:\"Malay (Singapore)\";s:0:\"\";s:9:\"Malayalam\";s:0:\"\";s:17:\"Malayalam (India)\";s:0:\"\";s:8:\"Malaysia\";s:0:\"\";s:8:\"Maldives\";s:0:\"\";s:4:\"Male\";s:0:\"\";s:4:\"Mali\";s:0:\"\";s:5:\"Malta\";s:0:\"\";s:7:\"Maltese\";s:0:\"\";s:15:\"Maltese (Malta)\";s:0:\"\";s:4:\"Manx\";s:0:\"\";s:18:\"Manx (Isle of Man)\";s:0:\"\";s:5:\"Maori\";s:0:\"\";s:19:\"Maori (New Zealand)\";s:0:\"\";s:7:\"Marathi\";s:0:\"\";s:15:\"Marathi (India)\";s:0:\"\";s:16:\"Marshall Islands\";s:0:\"\";s:10:\"Martinique\";s:0:\"\";s:5:\"Masai\";s:0:\"\";s:13:\"Masai (Kenya)\";s:0:\"\";s:16:\"Masai (Tanzania)\";s:0:\"\";s:6:\"Master\";s:0:\"\";s:19:\"Master (Admin Mode)\";s:0:\"\";s:10:\"Mauritania\";s:0:\"\";s:9:\"Mauritius\";s:0:\"\";s:7:\"Mayotte\";s:0:\"\";s:11:\"Mazanderani\";s:0:\"\";s:18:\"Mazanderani (Iran)\";s:0:\"\";s:11:\"Mega Sleeve\";s:0:\"\";s:4:\"Meru\";s:0:\"\";s:12:\"Meru (Kenya)\";s:0:\"\";s:6:\"Metaʼ\";s:0:\"\";s:17:\"Metaʼ (Cameroon)\";s:0:\"\";s:6:\"Mexico\";s:0:\"\";s:10:\"Micronesia\";s:0:\"\";s:7:\"Moldova\";s:0:\"\";s:6:\"Monaco\";s:0:\"\";s:8:\"Mongolia\";s:0:\"\";s:9:\"Mongolian\";s:0:\"\";s:20:\"Mongolian (Mongolia)\";s:0:\"\";s:10:\"Montenegro\";s:0:\"\";s:10:\"Montserrat\";s:0:\"\";s:8:\"Morisyen\";s:0:\"\";s:20:\"Morisyen (Mauritius)\";s:0:\"\";s:7:\"Morocco\";s:0:\"\";s:10:\"Mozambique\";s:0:\"\";s:7:\"Mundang\";s:0:\"\";s:18:\"Mundang (Cameroon)\";s:0:\"\";s:15:\"Myanmar (Burma)\";s:0:\"\";s:4:\"Nama\";s:0:\"\";s:14:\"Nama (Namibia)\";s:0:\"\";s:4:\"Name\";s:0:\"\";s:7:\"Namibia\";s:0:\"\";s:5:\"Nauru\";s:0:\"\";s:10:\"Neck Shape\";s:0:\"\";s:5:\"Nepal\";s:0:\"\";s:6:\"Nepali\";s:0:\"\";s:14:\"Nepali (India)\";s:0:\"\";s:14:\"Nepali (Nepal)\";s:0:\"\";s:11:\"Netherlands\";s:0:\"\";s:13:\"New Caledonia\";s:0:\"\";s:11:\"New Zealand\";s:0:\"\";s:17:\"Newsletter Active\";s:0:\"\";s:20:\"Newsletter Confirmed\";s:0:\"\";s:9:\"Ngiemboon\";s:0:\"\";s:20:\"Ngiemboon (Cameroon)\";s:0:\"\";s:6:\"Ngomba\";s:0:\"\";s:17:\"Ngomba (Cameroon)\";s:0:\"\";s:9:\"Nicaragua\";s:0:\"\";s:5:\"Niger\";s:0:\"\";s:7:\"Nigeria\";s:0:\"\";s:4:\"Niue\";s:0:\"\";s:14:\"Norfolk Island\";s:0:\"\";s:11:\"North Korea\";s:0:\"\";s:15:\"North Macedonia\";s:0:\"\";s:13:\"North Ndebele\";s:0:\"\";s:24:\"North Ndebele (Zimbabwe)\";s:0:\"\";s:13:\"Northern Luri\";s:0:\"\";s:20:\"Northern Luri (Iran)\";s:0:\"\";s:20:\"Northern Luri (Iraq)\";s:0:\"\";s:24:\"Northern Mariana Islands\";s:0:\"\";s:13:\"Northern Sami\";s:0:\"\";s:23:\"Northern Sami (Finland)\";s:0:\"\";s:22:\"Northern Sami (Norway)\";s:0:\"\";s:22:\"Northern Sami (Sweden)\";s:0:\"\";s:6:\"Norway\";s:0:\"\";s:17:\"Norwegian Bokmål\";s:0:\"\";s:26:\"Norwegian Bokmål (Norway)\";s:0:\"\";s:40:\"Norwegian Bokmål (Svalbard & Jan Mayen)\";s:0:\"\";s:17:\"Norwegian Nynorsk\";s:0:\"\";s:26:\"Norwegian Nynorsk (Norway)\";s:0:\"\";s:4:\"Nuer\";s:0:\"\";s:18:\"Nuer (South Sudan)\";s:0:\"\";s:8:\"Nyankole\";s:0:\"\";s:17:\"Nyankole (Uganda)\";s:0:\"\";s:4:\"Odia\";s:0:\"\";s:12:\"Odia (India)\";s:0:\"\";s:4:\"Oman\";s:0:\"\";s:5:\"Oromo\";s:0:\"\";s:16:\"Oromo (Ethiopia)\";s:0:\"\";s:13:\"Oromo (Kenya)\";s:0:\"\";s:7:\"Ossetic\";s:0:\"\";s:17:\"Ossetic (Georgia)\";s:0:\"\";s:16:\"Ossetic (Russia)\";s:0:\"\";s:5:\"Other\";s:0:\"\";s:8:\"Pakistan\";s:0:\"\";s:5:\"Palau\";s:0:\"\";s:23:\"Palestinian Territories\";s:0:\"\";s:6:\"Panama\";s:0:\"\";s:16:\"Papua New Guinea\";s:0:\"\";s:8:\"Paraguay\";s:0:\"\";s:6:\"Pashto\";s:0:\"\";s:20:\"Pashto (Afghanistan)\";s:0:\"\";s:17:\"Pashto (Pakistan)\";s:0:\"\";s:7:\"Persian\";s:0:\"\";s:21:\"Persian (Afghanistan)\";s:0:\"\";s:14:\"Persian (Iran)\";s:0:\"\";s:4:\"Peru\";s:0:\"\";s:11:\"Philippines\";s:0:\"\";s:16:\"Pitcairn Islands\";s:0:\"\";s:7:\"Pockets\";s:0:\"\";s:6:\"Poland\";s:0:\"\";s:6:\"Polish\";s:0:\"\";s:15:\"Polish (Poland)\";s:0:\"\";s:8:\"Portugal\";s:0:\"\";s:10:\"Portuguese\";s:0:\"\";s:19:\"Portuguese (Angola)\";s:0:\"\";s:19:\"Portuguese (Brazil)\";s:0:\"\";s:23:\"Portuguese (Cape Verde)\";s:0:\"\";s:30:\"Portuguese (Equatorial Guinea)\";s:0:\"\";s:26:\"Portuguese (Guinea-Bissau)\";s:0:\"\";s:23:\"Portuguese (Luxembourg)\";s:0:\"\";s:28:\"Portuguese (Macao SAR China)\";s:0:\"\";s:23:\"Portuguese (Mozambique)\";s:0:\"\";s:21:\"Portuguese (Portugal)\";s:0:\"\";s:24:\"Portuguese (Switzerland)\";s:0:\"\";s:35:\"Portuguese (São Tomé & Príncipe)\";s:0:\"\";s:24:\"Portuguese (Timor-Leste)\";s:0:\"\";s:5:\"Price\";s:0:\"\";s:14:\"Primary Fields\";s:0:\"\";s:11:\"Puerto Rico\";s:0:\"\";s:7:\"Punjabi\";s:0:\"\";s:15:\"Punjabi (India)\";s:0:\"\";s:18:\"Punjabi (Pakistan)\";s:0:\"\";s:5:\"Qatar\";s:0:\"\";s:7:\"Quechua\";s:0:\"\";s:17:\"Quechua (Bolivia)\";s:0:\"\";s:17:\"Quechua (Ecuador)\";s:0:\"\";s:14:\"Quechua (Peru)\";s:0:\"\";s:8:\"Question\";s:0:\"\";s:7:\"Romania\";s:0:\"\";s:8:\"Romanian\";s:0:\"\";s:18:\"Romanian (Moldova)\";s:0:\"\";s:18:\"Romanian (Romania)\";s:0:\"\";s:7:\"Romansh\";s:0:\"\";s:21:\"Romansh (Switzerland)\";s:0:\"\";s:5:\"Rombo\";s:0:\"\";s:16:\"Rombo (Tanzania)\";s:0:\"\";s:10:\"Round Neck\";s:0:\"\";s:5:\"Rundi\";s:0:\"\";s:15:\"Rundi (Burundi)\";s:0:\"\";s:6:\"Russia\";s:0:\"\";s:7:\"Russian\";s:0:\"\";s:17:\"Russian (Belarus)\";s:0:\"\";s:20:\"Russian (Kazakhstan)\";s:0:\"\";s:20:\"Russian (Kyrgyzstan)\";s:0:\"\";s:17:\"Russian (Moldova)\";s:0:\"\";s:16:\"Russian (Russia)\";s:0:\"\";s:17:\"Russian (Ukraine)\";s:0:\"\";s:3:\"Rwa\";s:0:\"\";s:14:\"Rwa (Tanzania)\";s:0:\"\";s:6:\"Rwanda\";s:0:\"\";s:8:\"Réunion\";s:0:\"\";s:3:\"SEO\";s:0:\"\";s:3:\"SKU\";s:0:\"\";s:5:\"Sakha\";s:0:\"\";s:14:\"Sakha (Russia)\";s:0:\"\";s:7:\"Samburu\";s:0:\"\";s:15:\"Samburu (Kenya)\";s:0:\"\";s:5:\"Samoa\";s:0:\"\";s:10:\"San Marino\";s:0:\"\";s:5:\"Sango\";s:0:\"\";s:32:\"Sango (Central African Republic)\";s:0:\"\";s:5:\"Sangu\";s:0:\"\";s:16:\"Sangu (Tanzania)\";s:0:\"\";s:12:\"Saudi Arabia\";s:0:\"\";s:15:\"Scottish Gaelic\";s:0:\"\";s:32:\"Scottish Gaelic (United Kingdom)\";s:0:\"\";s:12:\"Select Class\";s:0:\"\";s:11:\"Select File\";s:0:\"\";s:4:\"Sena\";s:0:\"\";s:17:\"Sena (Mozambique)\";s:0:\"\";s:7:\"Senegal\";s:0:\"\";s:6:\"Serbia\";s:0:\"\";s:7:\"Serbian\";s:0:\"\";s:30:\"Serbian (Bosnia & Herzegovina)\";s:0:\"\";s:16:\"Serbian (Kosovo)\";s:0:\"\";s:20:\"Serbian (Montenegro)\";s:0:\"\";s:16:\"Serbian (Serbia)\";s:0:\"\";s:10:\"Seychelles\";s:0:\"\";s:8:\"Shambala\";s:0:\"\";s:19:\"Shambala (Tanzania)\";s:0:\"\";s:5:\"Shift\";s:0:\"\";s:5:\"Shona\";s:0:\"\";s:16:\"Shona (Zimbabwe)\";s:0:\"\";s:10:\"Sichuan Yi\";s:0:\"\";s:18:\"Sichuan Yi (China)\";s:0:\"\";s:12:\"Sierra Leone\";s:0:\"\";s:6:\"Sindhi\";s:0:\"\";s:17:\"Sindhi (Pakistan)\";s:0:\"\";s:9:\"Singapore\";s:0:\"\";s:7:\"Sinhala\";s:0:\"\";s:19:\"Sinhala (Sri Lanka)\";s:0:\"\";s:12:\"Sint Maarten\";s:0:\"\";s:4:\"Size\";s:0:\"\";s:7:\"Sleeves\";s:0:\"\";s:4:\"Slik\";s:0:\"\";s:6:\"Slovak\";s:0:\"\";s:17:\"Slovak (Slovakia)\";s:0:\"\";s:8:\"Slovakia\";s:0:\"\";s:8:\"Slovenia\";s:0:\"\";s:9:\"Slovenian\";s:0:\"\";s:20:\"Slovenian (Slovenia)\";s:0:\"\";s:4:\"Soga\";s:0:\"\";s:13:\"Soga (Uganda)\";s:0:\"\";s:15:\"Solomon Islands\";s:0:\"\";s:6:\"Somali\";s:0:\"\";s:17:\"Somali (Djibouti)\";s:0:\"\";s:17:\"Somali (Ethiopia)\";s:0:\"\";s:14:\"Somali (Kenya)\";s:0:\"\";s:16:\"Somali (Somalia)\";s:0:\"\";s:7:\"Somalia\";s:0:\"\";s:12:\"South Africa\";s:0:\"\";s:38:\"South Georgia & South Sandwich Islands\";s:0:\"\";s:11:\"South Korea\";s:0:\"\";s:11:\"South Sudan\";s:0:\"\";s:5:\"Spain\";s:0:\"\";s:7:\"Spanish\";s:0:\"\";s:19:\"Spanish (Argentina)\";s:0:\"\";s:16:\"Spanish (Belize)\";s:0:\"\";s:17:\"Spanish (Bolivia)\";s:0:\"\";s:16:\"Spanish (Brazil)\";s:0:\"\";s:24:\"Spanish (Canary Islands)\";s:0:\"\";s:25:\"Spanish (Ceuta & Melilla)\";s:0:\"\";s:15:\"Spanish (Chile)\";s:0:\"\";s:18:\"Spanish (Colombia)\";s:0:\"\";s:20:\"Spanish (Costa Rica)\";s:0:\"\";s:14:\"Spanish (Cuba)\";s:0:\"\";s:28:\"Spanish (Dominican Republic)\";s:0:\"\";s:17:\"Spanish (Ecuador)\";s:0:\"\";s:21:\"Spanish (El Salvador)\";s:0:\"\";s:27:\"Spanish (Equatorial Guinea)\";s:0:\"\";s:19:\"Spanish (Guatemala)\";s:0:\"\";s:18:\"Spanish (Honduras)\";s:0:\"\";s:23:\"Spanish (Latin America)\";s:0:\"\";s:16:\"Spanish (Mexico)\";s:0:\"\";s:19:\"Spanish (Nicaragua)\";s:0:\"\";s:16:\"Spanish (Panama)\";s:0:\"\";s:18:\"Spanish (Paraguay)\";s:0:\"\";s:14:\"Spanish (Peru)\";s:0:\"\";s:21:\"Spanish (Philippines)\";s:0:\"\";s:21:\"Spanish (Puerto Rico)\";s:0:\"\";s:15:\"Spanish (Spain)\";s:0:\"\";s:23:\"Spanish (United States)\";s:0:\"\";s:17:\"Spanish (Uruguay)\";s:0:\"\";s:19:\"Spanish (Venezuela)\";s:0:\"\";s:9:\"Sri Lanka\";s:0:\"\";s:15:\"St. Barthélemy\";s:0:\"\";s:10:\"St. Helena\";s:0:\"\";s:17:\"St. Kitts & Nevis\";s:0:\"\";s:9:\"St. Lucia\";s:0:\"\";s:10:\"St. Martin\";s:0:\"\";s:21:\"St. Pierre & Miquelon\";s:0:\"\";s:24:\"St. Vincent & Grenadines\";s:0:\"\";s:27:\"Standard Moroccan Tamazight\";s:0:\"\";s:37:\"Standard Moroccan Tamazight (Morocco)\";s:0:\"\";s:10:\"Start time\";s:0:\"\";s:5:\"Sudan\";s:0:\"\";s:8:\"Suriname\";s:0:\"\";s:20:\"Svalbard & Jan Mayen\";s:0:\"\";s:7:\"Swahili\";s:0:\"\";s:26:\"Swahili (Congo - Kinshasa)\";s:0:\"\";s:15:\"Swahili (Kenya)\";s:0:\"\";s:18:\"Swahili (Tanzania)\";s:0:\"\";s:16:\"Swahili (Uganda)\";s:0:\"\";s:6:\"Sweden\";s:0:\"\";s:7:\"Swedish\";s:0:\"\";s:17:\"Swedish (Finland)\";s:0:\"\";s:16:\"Swedish (Sweden)\";s:0:\"\";s:24:\"Swedish (Åland Islands)\";s:0:\"\";s:12:\"Swiss German\";s:0:\"\";s:21:\"Swiss German (France)\";s:0:\"\";s:28:\"Swiss German (Liechtenstein)\";s:0:\"\";s:26:\"Swiss German (Switzerland)\";s:0:\"\";s:11:\"Switzerland\";s:0:\"\";s:5:\"Syria\";s:0:\"\";s:22:\"São Tomé & Príncipe\";s:0:\"\";s:9:\"Tachelhit\";s:0:\"\";s:19:\"Tachelhit (Morocco)\";s:0:\"\";s:5:\"Taita\";s:0:\"\";s:13:\"Taita (Kenya)\";s:0:\"\";s:6:\"Taiwan\";s:0:\"\";s:5:\"Tajik\";s:0:\"\";s:18:\"Tajik (Tajikistan)\";s:0:\"\";s:10:\"Tajikistan\";s:0:\"\";s:5:\"Tamil\";s:0:\"\";s:13:\"Tamil (India)\";s:0:\"\";s:16:\"Tamil (Malaysia)\";s:0:\"\";s:17:\"Tamil (Singapore)\";s:0:\"\";s:17:\"Tamil (Sri Lanka)\";s:0:\"\";s:8:\"Tanzania\";s:0:\"\";s:12:\"Target Group\";s:0:\"\";s:7:\"Tasawaq\";s:0:\"\";s:15:\"Tasawaq (Niger)\";s:0:\"\";s:5:\"Tatar\";s:0:\"\";s:14:\"Tatar (Russia)\";s:0:\"\";s:6:\"Telugu\";s:0:\"\";s:14:\"Telugu (India)\";s:0:\"\";s:4:\"Teso\";s:0:\"\";s:12:\"Teso (Kenya)\";s:0:\"\";s:13:\"Teso (Uganda)\";s:0:\"\";s:4:\"Thai\";s:0:\"\";s:15:\"Thai (Thailand)\";s:0:\"\";s:8:\"Thailand\";s:0:\"\";s:7:\"Tibetan\";s:0:\"\";s:15:\"Tibetan (China)\";s:0:\"\";s:15:\"Tibetan (India)\";s:0:\"\";s:8:\"Tigrinya\";s:0:\"\";s:18:\"Tigrinya (Eritrea)\";s:0:\"\";s:19:\"Tigrinya (Ethiopia)\";s:0:\"\";s:11:\"Timor-Leste\";s:0:\"\";s:4:\"Togo\";s:0:\"\";s:7:\"Tokelau\";s:0:\"\";s:5:\"Tonga\";s:0:\"\";s:6:\"Tongan\";s:0:\"\";s:14:\"Tongan (Tonga)\";s:0:\"\";s:17:\"Trinidad & Tobago\";s:0:\"\";s:7:\"Tunisia\";s:0:\"\";s:6:\"Turkey\";s:0:\"\";s:7:\"Turkish\";s:0:\"\";s:16:\"Turkish (Cyprus)\";s:0:\"\";s:16:\"Turkish (Turkey)\";s:0:\"\";s:7:\"Turkmen\";s:0:\"\";s:22:\"Turkmen (Turkmenistan)\";s:0:\"\";s:12:\"Turkmenistan\";s:0:\"\";s:22:\"Turks & Caicos Islands\";s:0:\"\";s:6:\"Tuvalu\";s:0:\"\";s:21:\"U.S. Outlying Islands\";s:0:\"\";s:19:\"U.S. Virgin Islands\";s:0:\"\";s:6:\"Uganda\";s:0:\"\";s:7:\"Ukraine\";s:0:\"\";s:9:\"Ukrainian\";s:0:\"\";s:19:\"Ukrainian (Ukraine)\";s:0:\"\";s:20:\"United Arab Emirates\";s:0:\"\";s:14:\"United Kingdom\";s:0:\"\";s:13:\"United States\";s:0:\"\";s:13:\"Upper Sorbian\";s:0:\"\";s:23:\"Upper Sorbian (Germany)\";s:0:\"\";s:4:\"Urdu\";s:0:\"\";s:12:\"Urdu (India)\";s:0:\"\";s:15:\"Urdu (Pakistan)\";s:0:\"\";s:7:\"Uruguay\";s:0:\"\";s:6:\"Uyghur\";s:0:\"\";s:14:\"Uyghur (China)\";s:0:\"\";s:5:\"Uzbek\";s:0:\"\";s:19:\"Uzbek (Afghanistan)\";s:0:\"\";s:18:\"Uzbek (Uzbekistan)\";s:0:\"\";s:10:\"Uzbekistan\";s:0:\"\";s:6:\"V Neck\";s:0:\"\";s:3:\"Vai\";s:0:\"\";s:13:\"Vai (Liberia)\";s:0:\"\";s:7:\"Vanuatu\";s:0:\"\";s:12:\"Vatican City\";s:0:\"\";s:9:\"Venezuela\";s:0:\"\";s:7:\"Vietnam\";s:0:\"\";s:10:\"Vietnamese\";s:0:\"\";s:20:\"Vietnamese (Vietnam)\";s:0:\"\";s:5:\"Vunjo\";s:0:\"\";s:16:\"Vunjo (Tanzania)\";s:0:\"\";s:15:\"Wallis & Futuna\";s:0:\"\";s:6:\"Walser\";s:0:\"\";s:20:\"Walser (Switzerland)\";s:0:\"\";s:8:\"Washable\";s:0:\"\";s:5:\"Welsh\";s:0:\"\";s:22:\"Welsh (United Kingdom)\";s:0:\"\";s:15:\"Western Frisian\";s:0:\"\";s:29:\"Western Frisian (Netherlands)\";s:0:\"\";s:14:\"Western Sahara\";s:0:\"\";s:5:\"Wolof\";s:0:\"\";s:15:\"Wolof (Senegal)\";s:0:\"\";s:11:\"XLSX Export\";s:0:\"\";s:5:\"Xhosa\";s:0:\"\";s:20:\"Xhosa (South Africa)\";s:0:\"\";s:7:\"Yangben\";s:0:\"\";s:18:\"Yangben (Cameroon)\";s:0:\"\";s:5:\"Yemen\";s:0:\"\";s:7:\"Yiddish\";s:0:\"\";s:15:\"Yiddish (World)\";s:0:\"\";s:6:\"Yoruba\";s:0:\"\";s:14:\"Yoruba (Benin)\";s:0:\"\";s:16:\"Yoruba (Nigeria)\";s:0:\"\";s:6:\"Zambia\";s:0:\"\";s:5:\"Zarma\";s:0:\"\";s:13:\"Zarma (Niger)\";s:0:\"\";s:8:\"Zimbabwe\";s:0:\"\";s:4:\"Zulu\";s:0:\"\";s:19:\"Zulu (South Africa)\";s:0:\"\";s:1:\"a\";s:0:\"\";s:7:\"advMany\";s:0:\"\";s:13:\"advManyObject\";s:0:\"\";s:1:\"b\";s:0:\"\";s:24:\"bhawana (Bhawana Tanwar)\";s:0:\"\";s:13:\"booleanSelect\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:1:\"c\";s:0:\"\";s:14:\"cCassification\";s:0:\"\";s:6:\"choice\";s:0:\"\";s:7:\"choice1\";s:0:\"\";s:7:\"choice2\";s:0:\"\";s:11:\"classiStore\";s:0:\"\";s:8:\"consents\";s:0:\"\";s:1:\"d\";s:0:\"\";s:8:\"dateTime\";s:0:\"\";s:21:\"default_value_warning\";s:0:\"\";s:4:\"down\";s:0:\"\";s:7:\"encrypt\";s:0:\"\";s:6:\"extImg\";s:0:\"\";s:6:\"fabric\";s:0:\"\";s:5:\"false\";s:0:\"\";s:6:\"female\";s:0:\"\";s:16:\"fieldsCollection\";s:0:\"\";s:5:\"first\";s:0:\"\";s:7:\"gallery\";s:0:\"\";s:10:\"geo Bounds\";s:0:\"\";s:9:\"geoPlygon\";s:0:\"\";s:8:\"geoPoint\";s:0:\"\";s:7:\"gffghfh\";s:0:\"\";s:6:\"imgAdv\";s:0:\"\";s:4:\"key1\";s:0:\"\";s:1:\"l\";s:0:\"\";s:4:\"lang\";s:0:\"\";s:4:\"male\";s:0:\"\";s:5:\"multi\";s:0:\"\";s:12:\"myCollection\";s:0:\"\";s:16:\"newsletterActive\";s:0:\"\";s:19:\"newsletterConfirmed\";s:0:\"\";s:4:\"null\";s:0:\"\";s:35:\"object_add_dialog_custom_text.brand\";s:0:\"\";s:38:\"object_add_dialog_custom_text.category\";s:0:\"\";s:36:\"object_add_dialog_custom_text.fabric\";s:0:\"\";s:36:\"object_add_dialog_custom_text.import\";s:0:\"\";s:37:\"object_add_dialog_custom_text.product\";s:0:\"\";s:34:\"object_add_dialog_custom_text.test\";s:0:\"\";s:36:\"object_add_dialog_custom_title.brand\";s:0:\"\";s:39:\"object_add_dialog_custom_title.category\";s:0:\"\";s:37:\"object_add_dialog_custom_title.fabric\";s:0:\"\";s:37:\"object_add_dialog_custom_title.import\";s:0:\"\";s:38:\"object_add_dialog_custom_title.product\";s:0:\"\";s:35:\"object_add_dialog_custom_title.test\";s:0:\"\";s:27:\"objectsMetadata_invalid_key\";s:0:\"\";s:7:\"revMany\";s:0:\"\";s:6:\"second\";s:0:\"\";s:5:\"shirt\";s:0:\"\";s:9:\"something\";s:0:\"\";s:6:\"tables\";s:0:\"\";s:11:\"targetGroup\";s:0:\"\";s:22:\"targetGroupMultiselect\";s:0:\"\";s:3:\"top\";s:0:\"\";s:4:\"true\";s:0:\"\";s:2:\"up\";s:0:\"\";s:7:\"urlSlug\";s:0:\"\";s:4:\"urll\";s:0:\"\";s:14:\"Åland Islands\";s:0:\"\";s:27:\"gdpr_dataSource_dataObjects\";s:12:\"Data Objects\";s:38:\"keybinding_searchAndReplaceAssignments\";s:28:\"Search & Replace Assignments\";s:9:\"parent_id\";s:9:\"Parent ID\";s:16:\"modificationDate\";s:17:\"Modification Date\";s:12:\"creationDate\";s:13:\"Creation Date\";s:29:\"keybinding_sharedTranslations\";s:19:\"Shared Translations\";s:25:\"classificationstore_group\";s:5:\"Group\";s:33:\"classificationstore_tag_col_group\";s:5:\"Group\";s:40:\"classificationstore_col_groupdescription\";s:5:\"Group\";s:24:\"keybinding_customReports\";s:14:\"Custom Reports\";s:4:\"none\";s:4:\"None\";s:19:\"redirects_type_path\";s:4:\"Path\";s:17:\"keybinding_robots\";s:10:\"robots.txt\";s:14:\"web2print_port\";s:4:\"Port\";s:13:\"email_subject\";s:7:\"Subject\";s:24:\"gdpr_dataSource_sentMail\";s:11:\"Sent Emails\";s:17:\"email_log_subject\";s:7:\"Subject\";s:31:\"gdpr_data_extractor_label_email\";s:13:\"Email Address\";s:20:\"web2print_colorspace\";s:10:\"Colorspace\";s:7:\"numeric\";s:6:\"Number\";s:17:\"newsletter_report\";s:13:\"Custom Report\";s:27:\"structuredtable_type_number\";s:6:\"Number\";s:27:\"objectsMetadata_type_number\";s:6:\"Number\";s:30:\"overwrite_object_with_same_key\";s:9:\"Overwrite\";s:23:\"keybinding_openDocument\";s:13:\"Open Document\";s:20:\"keybinding_openAsset\";s:10:\"Open Asset\";s:21:\"keybinding_openObject\";s:11:\"Open Object\";s:12:\"save_success\";s:19:\"Saved successfully!\";s:32:\"file_explorer_saved_file_success\";s:19:\"Saved successfully!\";s:14:\"workflow_notes\";s:5:\"Notes\";s:21:\"keybinding_openInTree\";s:12:\"Show in Tree\";s:8:\"2fa_code\";s:4:\"Code\";s:14:\"web2print_tags\";s:4:\"Tags\";s:15:\"web2print_links\";s:5:\"Links\";s:28:\"keybinding_seoDocumentEditor\";s:19:\"SEO Document Editor\";s:16:\"clear_temp_files\";s:21:\"Clear temporary files\";s:18:\"keybinding_reports\";s:7:\"Reports\";s:16:\"keybinding_roles\";s:5:\"Roles\";s:8:\"username\";s:8:\"Username\";s:8:\"password\";s:8:\"Password\";s:6:\"submit\";s:6:\"Submit\";s:13:\"cache_enabled\";s:6:\"Enable\";s:16:\"localized_fields\";s:16:\"Localized Fields\";s:17:\"field_collections\";s:17:\"Field-Collections\";s:9:\"col_label\";s:5:\"Label\";s:17:\"piwik_widget_site\";s:4:\"Site\";s:21:\"keybinding_recycleBin\";s:11:\"Recycle Bin\";s:14:\"email_log_data\";s:4:\"Data\";s:13:\"show_metainfo\";s:4:\"Info\";s:15:\"keybinding_save\";s:4:\"Save\";s:18:\"keybinding_publish\";s:7:\"Publish\";s:17:\"keybinding_rename\";s:6:\"Rename\";s:14:\"email_log_from\";s:4:\"From\";s:10:\"email_from\";s:4:\"From\";s:15:\"log_search_from\";s:4:\"From\";s:12:\"email_log_to\";s:2:\"To\";s:8:\"email_to\";s:2:\"To\";s:13:\"log_search_to\";s:2:\"To\";s:14:\"email_log_text\";s:4:\"Text\";s:25:\"structuredtable_type_text\";s:4:\"Text\";s:25:\"objectsMetadata_type_text\";s:4:\"Text\";s:18:\"pimcore_lable_text\";s:4:\"Text\";s:35:\"classificationstore_tag_col_keyName\";s:3:\"Key\";s:28:\"gdpr_data_extractor_label_id\";s:2:\"ID\";s:15:\"web2print_title\";s:5:\"Title\";s:12:\"config_title\";s:5:\"Title\";s:20:\"keybinding_unpublish\";s:9:\"Unpublish\";s:17:\"navigation_target\";s:6:\"Target\";s:8:\"log_type\";s:4:\"Type\";s:22:\"gdpr_dataSource_export\";s:6:\"Export\";s:19:\"keybinding_glossary\";s:8:\"Glossary\";s:16:\"keybinding_users\";s:5:\"Users\";s:33:\"classificationstore_configuration\";s:13:\"Configuration\";s:33:\"classificationstore_tag_col_value\";s:5:\"Value\";s:22:\"gdpr_dataSource_assets\";s:6:\"Assets\";s:25:\"structuredtable_type_bool\";s:8:\"Checkbox\";s:27:\"objectsMetadata_type_select\";s:6:\"Select\";s:7:\"boolean\";s:4:\"Bool\";s:25:\"objectsMetadata_type_bool\";s:4:\"Bool\";s:18:\"keybinding_refresh\";s:6:\"Reload\";s:17:\"web2print_version\";s:7:\"Version\";s:35:\"gdpr_data_extractor_label_firstname\";s:9:\"Firstname\";s:34:\"gdpr_data_extractor_label_lastname\";s:8:\"Lastname\";s:20:\"keybinding_redirects\";s:9:\"Redirects\";s:10:\"log_source\";s:6:\"Source\";s:40:\"classificationstore_error_addgroup_title\";s:5:\"Error\";s:38:\"classificationstore_error_addkey_title\";s:5:\"Error\";s:20:\"element_lock_message\";s:58:\"The desired element is currently opened by another person:\";s:16:\"web2print_apiKey\";s:7:\"API Key\";s:12:\"customlayout\";s:13:\"Custom Layout\";s:24:\"special_settings_tooltip\";s:16:\"Special Settings\";s:19:\"application_logging\";s:18:\"Application Logger\";s:28:\"keybinding_applicationLogger\";s:18:\"Application Logger\";s:20:\"log_search_component\";s:9:\"Component\";s:11:\"log_message\";s:7:\"Message\";s:31:\"classificationstore_menu_config\";s:20:\"Classification Store\";s:19:\"classificationstore\";s:20:\"Classification Store\";s:39:\"classificationstore_mbx_enterkey_prompt\";s:10:\"Enter name\";s:43:\"classificationstore_error_addcollection_msg\";s:18:\"Error adding group\";s:13:\"quantityValue\";s:14:\"Quantity Value\";s:18:\"inputQuantityValue\";s:20:\"Input Quantity Value\";s:15:\"calculatedValue\";s:16:\"Calculated Value\";s:27:\"keybinding_tagConfiguration\";s:17:\"Tag Configuration\";s:14:\"log_search_pid\";s:3:\"PID\";s:20:\"clear_fullpage_cache\";s:15:\"Full Page Cache\";s:13:\"piwik_site_id\";s:7:\"Site ID\";s:27:\"substring_operator_settings\";s:8:\"Settings\";s:27:\"operator_substring_settings\";s:8:\"Settings\";s:28:\"delete_importconfig_dblcheck\";s:39:\"Do you really want to delete this item?\";s:26:\"delete_gridconfig_dblcheck\";s:39:\"Do you really want to delete this item?\";s:17:\"piwik_widget_date\";s:8:\"End date\";s:19:\"log_refresh_seconds\";s:7:\"Seconds\";s:12:\"email_log_cc\";s:2:\"Cc\";s:13:\"email_log_bcc\";s:3:\"Bcc\";s:23:\"keybinding_closeAllTabs\";s:14:\"Close all tabs\";s:10:\"log_search\";s:6:\"Search\";s:4:\"cols\";s:7:\"Columns\";s:16:\"log_reset_search\";s:5:\"Reset\";s:29:\"keybinding_showElementHistory\";s:24:\"Recently Opened Elements\";s:22:\"keybinding_quickSearch\";s:12:\"Quick Search\";s:23:\"keybinding_httpErrorLog\";s:11:\"HTTP Errors\";s:21:\"keybinding_tagManager\";s:24:\"Tag & Snippet Management\";s:22:\"keybinding_notesEvents\";s:18:\"Notes &amp; Events\";s:22:\"keybinding_searchAsset\";s:13:\"Search Assets\";s:25:\"keybinding_searchDocument\";s:16:\"Search Documents\";s:23:\"keybinding_searchObject\";s:14:\"Search Objects\";s:6:\"routes\";s:13:\"Static Routes\";s:7:\"plugins\";s:10:\"Extensions\";s:18:\"log_search_message\";s:7:\"Message\";s:9:\"rgbaColor\";s:5:\"Color\";s:9:\"multihref\";s:21:\"Many-To-Many Relation\";s:17:\"multihrefMetadata\";s:30:\"Advanced Many-To-Many Relation\";s:15:\"objectsMetadata\";s:37:\"Advanced Many-To-Many Object Relation\";s:15:\"nonownerobjects\";s:36:\"Reverse Many-To-Many Object Relation\";s:4:\"href\";s:20:\"Many-To-One Relation\";}}s:56:\"\0Symfony\\Component\\Translation\\MessageCatalogue\0metadata\";a:0:{}s:57:\"\0Symfony\\Component\\Translation\\MessageCatalogue\0resources\";a:0:{}s:54:\"\0Symfony\\Component\\Translation\\MessageCatalogue\0locale\";s:2:\"en\";s:65:\"\0Symfony\\Component\\Translation\\MessageCatalogue\0fallbackCatalogue\";N;s:54:\"\0Symfony\\Component\\Translation\\MessageCatalogue\0parent\";N;}\";',1613930048,1616349248);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_tags`
--

DROP TABLE IF EXISTS `cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_tags` (
  `id` varchar(165) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `tag` varchar(165) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_tags`
--

LOCK TABLES `cache_tags` WRITE;
/*!40000 ALTER TABLE `cache_tags` DISABLE KEYS */;
INSERT INTO `cache_tags` VALUES ('asset_1','asset_1'),('asset_10','asset_10'),('asset_11','asset_11'),('asset_12','asset_12'),('asset_13','asset_13'),('asset_14','asset_14'),('asset_15','asset_15'),('asset_16','asset_16'),('asset_17','asset_17'),('asset_18','asset_18'),('asset_19','asset_19'),('asset_2','asset_2'),('asset_21','asset_21'),('asset_3','asset_3'),('asset_4','asset_4'),('asset_6','asset_6'),('asset_7','asset_7'),('asset_8','asset_8'),('asset_9','asset_9'),('object_11','class_2'),('object_21','class_2'),('object_22','class_2'),('object_26','class_2'),('object_27','class_2'),('object_28','class_2'),('object_44','class_2'),('object_45','class_2'),('object_46','class_2'),('object_47','class_2'),('object_48','class_2'),('object_49','class_2'),('object_50','class_2'),('object_51','class_2'),('object_52','class_2'),('object_53','class_2'),('object_54','class_2'),('object_55','class_2'),('object_56','class_2'),('object_57','class_2'),('document_1','document_1'),('document_properties_1','document_1'),('document_4','document_4'),('document_properties_4','document_4'),('document_properties_1','document_properties'),('document_properties_4','document_properties'),('object_1','object_1'),('object_11','object_11'),('object_14','object_14'),('object_18','object_18'),('object_2','object_2'),('object_21','object_21'),('object_22','object_22'),('object_23','object_23'),('object_26','object_26'),('object_27','object_27'),('object_28','object_28'),('object_3','object_3'),('object_44','object_44'),('object_45','object_45'),('object_46','object_46'),('object_47','object_47'),('object_48','object_48'),('object_49','object_49'),('object_50','object_50'),('object_51','object_51'),('object_52','object_52'),('object_53','object_53'),('object_54','object_54'),('object_55','object_55'),('object_56','object_56'),('object_57','object_57'),('object_58','object_58'),('system_route_redirect','redirect'),('system_resource_columns_edit_lock','resource'),('system_route_redirect','route'),('site_domain_c8371b9b3c918c1a6862c681c3c6d7af','site'),('site_domain_c8371b9b3c918c1a6862c681c3c6d7af','system'),('system_resource_columns_edit_lock','system'),('system_route_redirect','system'),('system_supported_locales_en','system'),('translation_data_admin_en','translate'),('translation_data_admin_en','translator'),('translation_data_admin_en','translator_website');
/*!40000 ALTER TABLE `cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` varchar(50) NOT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('3','brand'),('1','category'),('4','fabric'),('6','import'),('2','product'),('5','test');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_collectionrelations`
--

DROP TABLE IF EXISTS `classificationstore_collectionrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_collectionrelations` (
  `colId` int unsigned NOT NULL,
  `groupId` int unsigned NOT NULL,
  `sorter` int DEFAULT '0',
  PRIMARY KEY (`colId`,`groupId`),
  KEY `FK_classificationstore_collectionrelations_groups` (`groupId`),
  CONSTRAINT `FK_classificationstore_collectionrelations_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_collectionrelations`
--

LOCK TABLES `classificationstore_collectionrelations` WRITE;
/*!40000 ALTER TABLE `classificationstore_collectionrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_collectionrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_collections`
--

DROP TABLE IF EXISTS `classificationstore_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_collections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_collections`
--

LOCK TABLES `classificationstore_collections` WRITE;
/*!40000 ALTER TABLE `classificationstore_collections` DISABLE KEYS */;
INSERT INTO `classificationstore_collections` VALUES (1,1,'first',NULL,1613379218,1613379218);
/*!40000 ALTER TABLE `classificationstore_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_groups`
--

DROP TABLE IF EXISTS `classificationstore_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `parentId` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(190) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `storeId` (`storeId`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_groups`
--

LOCK TABLES `classificationstore_groups` WRITE;
/*!40000 ALTER TABLE `classificationstore_groups` DISABLE KEYS */;
INSERT INTO `classificationstore_groups` VALUES (1,1,0,'first','something',1613379288,1613379310),(2,1,0,'second',NULL,1613379361,1613379361);
/*!40000 ALTER TABLE `classificationstore_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_keys`
--

DROP TABLE IF EXISTS `classificationstore_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `storeId` int DEFAULT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(190) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  `definition` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `enabled` (`enabled`),
  KEY `type` (`type`),
  KEY `storeId` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_keys`
--

LOCK TABLES `classificationstore_keys` WRITE;
/*!40000 ALTER TABLE `classificationstore_keys` DISABLE KEYS */;
INSERT INTO `classificationstore_keys` VALUES (1,1,'key1','key1',NULL,'input',1613379410,1613379410,'{\"fieldtype\":\"input\",\"name\":\"key1\",\"title\":\"key1\",\"datatype\":\"data\"}',1);
/*!40000 ALTER TABLE `classificationstore_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_relations`
--

DROP TABLE IF EXISTS `classificationstore_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_relations` (
  `groupId` int unsigned NOT NULL,
  `keyId` int unsigned NOT NULL,
  `sorter` int DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`groupId`,`keyId`),
  KEY `FK_classificationstore_relations_classificationstore_keys` (`keyId`),
  KEY `mandatory` (`mandatory`),
  CONSTRAINT `FK_classificationstore_relations_classificationstore_groups` FOREIGN KEY (`groupId`) REFERENCES `classificationstore_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_classificationstore_relations_classificationstore_keys` FOREIGN KEY (`keyId`) REFERENCES `classificationstore_keys` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_relations`
--

LOCK TABLES `classificationstore_relations` WRITE;
/*!40000 ALTER TABLE `classificationstore_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `classificationstore_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificationstore_stores`
--

DROP TABLE IF EXISTS `classificationstore_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificationstore_stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificationstore_stores`
--

LOCK TABLES `classificationstore_stores` WRITE;
/*!40000 ALTER TABLE `classificationstore_stores` DISABLE KEYS */;
INSERT INTO `classificationstore_stores` VALUES (1,'my-store',NULL);
/*!40000 ALTER TABLE `classificationstore_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_layouts`
--

DROP TABLE IF EXISTS `custom_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_layouts` (
  `id` varchar(64) NOT NULL,
  `classId` varchar(50) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `description` text,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_layouts`
--

LOCK TABLES `custom_layouts` WRITE;
/*!40000 ALTER TABLE `custom_layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependencies`
--

DROP TABLE IF EXISTS `dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sourcetype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `sourceid` int unsigned NOT NULL DEFAULT '0',
  `targettype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `targetid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `combi` (`sourcetype`,`sourceid`,`targettype`,`targetid`),
  KEY `targettype_targetid` (`targettype`,`targetid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependencies`
--

LOCK TABLES `dependencies` WRITE;
/*!40000 ALTER TABLE `dependencies` DISABLE KEYS */;
INSERT INTO `dependencies` VALUES (2,'object',21,'object',6),(1,'object',21,'object',15),(12,'object',22,'asset',21),(4,'object',22,'object',5),(7,'object',24,'asset',18),(9,'object',24,'object',19),(8,'object',24,'object',20);
/*!40000 ALTER TABLE `dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `type` enum('page','link','snippet','folder','hardlink','email','newsletter','printpage','printcontainer') DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `index` int unsigned DEFAULT '0',
  `published` tinyint unsigned DEFAULT '1',
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  `versionCount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fullpath` (`path`,`key`),
  KEY `parentId` (`parentId`),
  KEY `key` (`key`),
  KEY `published` (`published`),
  KEY `modificationDate` (`modificationDate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,0,'page','','/',999999,1,1612789241,1612789241,1,1,0),(4,1,'page','productpage','/',1,1,1613671508,1613840532,2,2,16);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_elements`
--

DROP TABLE IF EXISTS `documents_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_elements` (
  `documentId` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(750) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`documentId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_elements`
--

LOCK TABLES `documents_elements` WRITE;
/*!40000 ALTER TABLE `documents_elements` DISABLE KEYS */;
INSERT INTO `documents_elements` VALUES (4,'headline','input',''),(4,'product','relation','a:3:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;}');
/*!40000 ALTER TABLE `documents_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_email`
--

DROP TABLE IF EXISTS `documents_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_email` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `replyTo` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_email`
--

LOCK TABLES `documents_email` WRITE;
/*!40000 ALTER TABLE `documents_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_hardlink`
--

DROP TABLE IF EXISTS `documents_hardlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_hardlink` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `sourceId` int DEFAULT NULL,
  `propertiesFromSource` tinyint(1) DEFAULT NULL,
  `childrenFromSource` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sourceId` (`sourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_hardlink`
--

LOCK TABLES `documents_hardlink` WRITE;
/*!40000 ALTER TABLE `documents_hardlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_hardlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_link`
--

DROP TABLE IF EXISTS `documents_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_link` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `internalType` enum('document','asset','object') DEFAULT NULL,
  `internal` int unsigned DEFAULT NULL,
  `direct` varchar(1000) DEFAULT NULL,
  `linktype` enum('direct','internal') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_link`
--

LOCK TABLES `documents_link` WRITE;
/*!40000 ALTER TABLE `documents_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_newsletter`
--

DROP TABLE IF EXISTS `documents_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_newsletter` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `trackingParameterSource` varchar(255) DEFAULT NULL,
  `trackingParameterMedium` varchar(255) DEFAULT NULL,
  `trackingParameterName` varchar(255) DEFAULT NULL,
  `enableTrackingParameters` tinyint unsigned DEFAULT NULL,
  `sendingMode` varchar(20) DEFAULT NULL,
  `plaintext` longtext,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_newsletter`
--

LOCK TABLES `documents_newsletter` WRITE;
/*!40000 ALTER TABLE `documents_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_page`
--

DROP TABLE IF EXISTS `documents_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_page` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(383) DEFAULT NULL,
  `metaData` text,
  `prettyUrl` varchar(190) DEFAULT NULL,
  `contentMasterDocumentId` int DEFAULT NULL,
  `targetGroupIds` varchar(255) DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prettyUrl` (`prettyUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_page`
--

LOCK TABLES `documents_page` WRITE;
/*!40000 ALTER TABLE `documents_page` DISABLE KEYS */;
INSERT INTO `documents_page` VALUES (1,NULL,'default','default','','','',NULL,NULL,NULL,NULL,NULL),(4,'AppBundle','@AppBundle\\Controller\\ContentController','product',NULL,'productpage','','a:0:{}',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `documents_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_printpage`
--

DROP TABLE IF EXISTS `documents_printpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_printpage` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `lastGenerated` int DEFAULT NULL,
  `lastGenerateMessage` text,
  `contentMasterDocumentId` int DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_printpage`
--

LOCK TABLES `documents_printpage` WRITE;
/*!40000 ALTER TABLE `documents_printpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_printpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_snippet`
--

DROP TABLE IF EXISTS `documents_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_snippet` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `contentMasterDocumentId` int DEFAULT NULL,
  `missingRequiredEditable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_snippet`
--

LOCK TABLES `documents_snippet` WRITE;
/*!40000 ALTER TABLE `documents_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_translations`
--

DROP TABLE IF EXISTS `documents_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_translations` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `sourceId` int unsigned NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`sourceId`,`language`),
  KEY `id` (`id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_translations`
--

LOCK TABLES `documents_translations` WRITE;
/*!40000 ALTER TABLE `documents_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_lock`
--

DROP TABLE IF EXISTS `edit_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edit_lock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(255) DEFAULT NULL,
  `date` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ctype` (`ctype`),
  KEY `cidtype` (`cid`,`ctype`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_lock`
--

LOCK TABLES `edit_lock` WRITE;
/*!40000 ALTER TABLE `edit_lock` DISABLE KEYS */;
INSERT INTO `edit_lock` VALUES (2,1,'asset',2,'89b5h93ffgle6oj5vv9ccna07l',1613037160),(3,1,'document',2,'89b5h93ffgle6oj5vv9ccna07l',1613037167),(7,6,'object',2,'eb532qao5j2qujtvtg1bgo7vdo',1613060258),(9,7,'object',2,'eb532qao5j2qujtvtg1bgo7vdo',1613061595),(32,2,'object',2,'08m687se04mpp5b4sl8l3oqhvu',1613118010),(34,13,'object',2,'08m687se04mpp5b4sl8l3oqhvu',1613118072),(43,1,'object',2,'08m687se04mpp5b4sl8l3oqhvu',1613119825),(48,19,'object',2,'08m687se04mpp5b4sl8l3oqhvu',1613120074),(50,18,'object',2,'08m687se04mpp5b4sl8l3oqhvu',1613120323),(51,4,'object',2,'08m687se04mpp5b4sl8l3oqhvu',1613120372),(62,21,'object',2,'bkc4c25alfg4er7679qeo4dbs0',1613306438),(139,24,'object',2,'ok6k17mqtb8kfvoa63r06cfd05',1613416221),(150,28,'object',2,'p24unkskkuh4dlf8nh9djgb26c',1613459508),(152,29,'object',2,'p24unkskkuh4dlf8nh9djgb26c',1613459508),(153,30,'object',2,'p24unkskkuh4dlf8nh9djgb26c',1613459508),(167,33,'object',2,'75701oou3dhuant4klqprog31d',1613471090),(168,31,'object',2,'75701oou3dhuant4klqprog31d',1613471090),(179,15,'object',2,'75701oou3dhuant4klqprog31d',1613482025),(180,34,'object',2,'75701oou3dhuant4klqprog31d',1613482025),(181,35,'object',2,'75701oou3dhuant4klqprog31d',1613482025),(182,36,'object',2,'75701oou3dhuant4klqprog31d',1613482025),(183,41,'object',2,'75701oou3dhuant4klqprog31d',1613482025),(185,42,'object',2,'75701oou3dhuant4klqprog31d',1613482026),(186,43,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613490407),(188,10,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613491088),(189,45,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613493539),(196,48,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613494920),(199,50,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613495760),(200,51,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613495859),(201,52,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613495991),(202,53,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613496128),(203,54,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613496838),(204,55,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613497420),(205,56,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613497678),(206,57,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613497797),(207,12,'object',2,'tlpm9j8ve70fhgimt5kohndfg2',1613499933),(212,59,'object',2,'1k7f9invnpebm6di4h52nu3695',1613650565),(214,3,'object',2,'vbbmnq7uor0tp33cnns0ttl18l',1613673075),(215,11,'object',2,'vbbmnq7uor0tp33cnns0ttl18l',1613673372),(216,22,'object',2,'vbbmnq7uor0tp33cnns0ttl18l',1613673390),(222,4,'document',2,'jpb2ma6g2bb0qrip415jd5u4mk',1613930069);
/*!40000 ALTER TABLE `edit_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element_workflow_state`
--

DROP TABLE IF EXISTS `element_workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `element_workflow_state` (
  `cid` int NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL,
  `place` text,
  `workflow` varchar(100) NOT NULL,
  PRIMARY KEY (`cid`,`ctype`,`workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element_workflow_state`
--

LOCK TABLES `element_workflow_state` WRITE;
/*!40000 ALTER TABLE `element_workflow_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `element_workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_blacklist`
--

DROP TABLE IF EXISTS `email_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_blacklist` (
  `address` varchar(190) NOT NULL DEFAULT '',
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_blacklist`
--

LOCK TABLES `email_blacklist` WRITE;
/*!40000 ALTER TABLE `email_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `documentId` int DEFAULT NULL,
  `requestUri` varchar(500) DEFAULT NULL,
  `params` text,
  `from` varchar(500) DEFAULT NULL,
  `replyTo` varchar(255) DEFAULT NULL,
  `to` longtext,
  `cc` longtext,
  `bcc` longtext,
  `sentDate` int unsigned DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sentDate` (`sentDate`,`id`),
  FULLTEXT KEY `fulltext` (`from`,`to`,`cc`,`bcc`,`subject`,`params`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
INSERT INTO `email_log` VALUES (1,NULL,'/admin/user/invitationlink','[]','no-reply@pim.local',NULL,'bhawanatanwar219@gmail.com',NULL,NULL,1613228957,'Pimcore login invitation for pim.local'),(2,NULL,'/admin/user/invitationlink','[]','no-reply@pim.local',NULL,'bhawanatanwar219@gmail.com',NULL,NULL,1613229062,'Pimcore login invitation for pim.local');
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glossary`
--

DROP TABLE IF EXISTS `glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glossary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) DEFAULT NULL,
  `casesensitive` tinyint(1) DEFAULT NULL,
  `exactmatch` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `site` int unsigned DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `site` (`site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossary`
--

LOCK TABLES `glossary` WRITE;
/*!40000 ALTER TABLE `glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridconfig_favourites`
--

DROP TABLE IF EXISTS `gridconfig_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gridconfig_favourites` (
  `ownerId` int NOT NULL,
  `classId` varchar(50) NOT NULL,
  `objectId` int NOT NULL DEFAULT '0',
  `gridConfigId` int DEFAULT NULL,
  `searchType` varchar(50) NOT NULL DEFAULT '',
  `type` enum('asset','object') NOT NULL DEFAULT 'object',
  PRIMARY KEY (`ownerId`,`classId`,`searchType`,`objectId`),
  KEY `classId` (`classId`),
  KEY `searchType` (`searchType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridconfig_favourites`
--

LOCK TABLES `gridconfig_favourites` WRITE;
/*!40000 ALTER TABLE `gridconfig_favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridconfig_favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridconfig_shares`
--

DROP TABLE IF EXISTS `gridconfig_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gridconfig_shares` (
  `gridConfigId` int NOT NULL,
  `sharedWithUserId` int NOT NULL,
  PRIMARY KEY (`gridConfigId`,`sharedWithUserId`),
  KEY `sharedWithUserId` (`sharedWithUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridconfig_shares`
--

LOCK TABLES `gridconfig_shares` WRITE;
/*!40000 ALTER TABLE `gridconfig_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridconfig_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridconfigs`
--

DROP TABLE IF EXISTS `gridconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gridconfigs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerId` int DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `searchType` varchar(50) DEFAULT NULL,
  `type` enum('asset','object') NOT NULL DEFAULT 'object',
  `config` longtext,
  `description` longtext,
  `creationDate` int DEFAULT NULL,
  `modificationDate` int DEFAULT NULL,
  `shareGlobally` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownerId` (`ownerId`),
  KEY `classId` (`classId`),
  KEY `searchType` (`searchType`),
  KEY `shareGlobally` (`shareGlobally`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridconfigs`
--

LOCK TABLES `gridconfigs` WRITE;
/*!40000 ALTER TABLE `gridconfigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_error_log`
--

DROP TABLE IF EXISTS `http_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `http_error_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `code` int DEFAULT NULL,
  `parametersGet` longtext,
  `parametersPost` longtext,
  `cookies` longtext,
  `serverVars` longtext,
  `date` int unsigned DEFAULT NULL,
  `count` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `code` (`code`),
  KEY `date` (`date`),
  KEY `count` (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_error_log`
--

LOCK TABLES `http_error_log` WRITE;
/*!40000 ALTER TABLE `http_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `http_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importconfig_shares`
--

DROP TABLE IF EXISTS `importconfig_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importconfig_shares` (
  `importConfigId` int NOT NULL,
  `sharedWithUserId` int NOT NULL,
  PRIMARY KEY (`importConfigId`,`sharedWithUserId`),
  KEY `sharedWithUserId` (`sharedWithUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importconfig_shares`
--

LOCK TABLES `importconfig_shares` WRITE;
/*!40000 ALTER TABLE `importconfig_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `importconfig_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importconfigs`
--

DROP TABLE IF EXISTS `importconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importconfigs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerId` int DEFAULT NULL,
  `classId` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `config` longtext,
  `description` longtext,
  `creationDate` int DEFAULT NULL,
  `modificationDate` int DEFAULT NULL,
  `shareGlobally` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownerId` (`ownerId`),
  KEY `classId` (`classId`),
  KEY `shareGlobally` (`shareGlobally`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importconfigs`
--

LOCK TABLES `importconfigs` WRITE;
/*!40000 ALTER TABLE `importconfigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `importconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_keys`
--

DROP TABLE IF EXISTS `lock_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lock_keys` (
  `key_id` varchar(64) NOT NULL,
  `key_token` varchar(44) NOT NULL,
  `key_expiration` int unsigned NOT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_keys`
--

LOCK TABLES `lock_keys` WRITE;
/*!40000 ALTER TABLE `lock_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locks` (
  `id` varchar(150) NOT NULL DEFAULT '',
  `date` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `cid` int DEFAULT NULL,
  `ctype` enum('asset','document','object') DEFAULT NULL,
  `date` int DEFAULT NULL,
  `user` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `cid_ctype` (`cid`,`ctype`),
  KEY `date` (`date`),
  KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'consent-given',24,'object',1613377070,2,'Consent given for field consents','Manually by User via Pimcore Backend.');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_data`
--

DROP TABLE IF EXISTS `notes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes_data` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `type` enum('text','date','document','asset','object','bool') DEFAULT NULL,
  `data` text,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_data`
--

LOCK TABLES `notes_data` WRITE;
/*!40000 ALTER TABLE `notes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'info',
  `title` varchar(250) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int DEFAULT NULL,
  `recipient` int NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modificationDate` timestamp NULL DEFAULT NULL,
  `linkedElementType` enum('document','asset','object') DEFAULT NULL,
  `linkedElement` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `object_1`
--

DROP TABLE IF EXISTS `object_1`;
/*!50001 DROP VIEW IF EXISTS `object_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_1` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `description`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_2`
--

DROP TABLE IF EXISTS `object_2`;
/*!50001 DROP VIEW IF EXISTS `object_2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_2` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `description`,
 1 AS `size`,
 1 AS `sku`,
 1 AS `color__rgb`,
 1 AS `color__a`,
 1 AS `discount`,
 1 AS `gender`,
 1 AS `price`,
 1 AS `category__id`,
 1 AS `category__type`,
 1 AS `pockets`,
 1 AS `neckShape`,
 1 AS `sleeves`,
 1 AS `length`,
 1 AS `madeIn`,
 1 AS `brand`,
 1 AS `image__id`,
 1 AS `image__type`,
 1 AS `fabric`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_3`
--

DROP TABLE IF EXISTS `object_3`;
/*!50001 DROP VIEW IF EXISTS `object_3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_3` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `description`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_4`
--

DROP TABLE IF EXISTS `object_4`;
/*!50001 DROP VIEW IF EXISTS `object_4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_4` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `name`,
 1 AS `description`,
 1 AS `washable`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_5`
--

DROP TABLE IF EXISTS `object_5`;
/*!50001 DROP VIEW IF EXISTS `object_5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_5` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `starttime`,
 1 AS `boolean`,
 1 AS `dateTime`,
 1 AS `user`,
 1 AS `lang`,
 1 AS `country`,
 1 AS `image`,
 1 AS `gallery__images`,
 1 AS `gallery__hotspots`,
 1 AS `multi`,
 1 AS `extImg`,
 1 AS `imgAdv__image`,
 1 AS `imgAdv__hotspots`,
 1 AS `advMany`,
 1 AS `advManyObject`,
 1 AS `revMany`,
 1 AS `geoPoint__longitude`,
 1 AS `geoPoint__latitude`,
 1 AS `geoBounds__NElongitude`,
 1 AS `geoBounds__NElatitude`,
 1 AS `geoBounds__SWlongitude`,
 1 AS `geoBounds__SWlatitude`,
 1 AS `geoPlygon`,
 1 AS `consents`,
 1 AS `gender`,
 1 AS `newsletterActive`,
 1 AS `newsletterConfirmed`,
 1 AS `targetGroup`,
 1 AS `tables`,
 1 AS `links`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `object_6`
--

DROP TABLE IF EXISTS `object_6`;
/*!50001 DROP VIEW IF EXISTS `object_6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `object_6` AS SELECT 
 1 AS `oo_id`,
 1 AS `oo_classId`,
 1 AS `oo_className`,
 1 AS `selectClass`,
 1 AS `selectFile__id`,
 1 AS `selectFile__type`,
 1 AS `o_id`,
 1 AS `o_parentId`,
 1 AS `o_type`,
 1 AS `o_key`,
 1 AS `o_path`,
 1 AS `o_index`,
 1 AS `o_published`,
 1 AS `o_creationDate`,
 1 AS `o_modificationDate`,
 1 AS `o_userOwner`,
 1 AS `o_userModification`,
 1 AS `o_classId`,
 1 AS `o_className`,
 1 AS `o_childrenSortBy`,
 1 AS `o_childrenSortOrder`,
 1 AS `o_versionCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `object_brick_query_shirt_2`
--

DROP TABLE IF EXISTS `object_brick_query_shirt_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_brick_query_shirt_2` (
  `o_id` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `sleeves` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`),
  KEY `o_id` (`o_id`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_brick_query_shirt_2`
--

LOCK TABLES `object_brick_query_shirt_2` WRITE;
/*!40000 ALTER TABLE `object_brick_query_shirt_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_brick_query_shirt_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_brick_store_shirt_2`
--

DROP TABLE IF EXISTS `object_brick_store_shirt_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_brick_store_shirt_2` (
  `o_id` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `sleeves` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`),
  KEY `o_id` (`o_id`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_brick_store_shirt_2`
--

LOCK TABLES `object_brick_store_shirt_2` WRITE;
/*!40000 ALTER TABLE `object_brick_store_shirt_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_brick_store_shirt_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_classificationstore_data_5`
--

DROP TABLE IF EXISTS `object_classificationstore_data_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_classificationstore_data_5` (
  `o_id` bigint NOT NULL,
  `collectionId` bigint DEFAULT NULL,
  `groupId` bigint NOT NULL,
  `keyId` bigint NOT NULL,
  `value` longtext,
  `value2` longtext,
  `fieldname` varchar(70) NOT NULL,
  `language` varchar(10) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`fieldname`,`groupId`,`keyId`,`language`),
  KEY `keyId` (`keyId`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_classificationstore_data_5`
--

LOCK TABLES `object_classificationstore_data_5` WRITE;
/*!40000 ALTER TABLE `object_classificationstore_data_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_classificationstore_data_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_classificationstore_groups_5`
--

DROP TABLE IF EXISTS `object_classificationstore_groups_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_classificationstore_groups_5` (
  `o_id` bigint NOT NULL,
  `groupId` bigint NOT NULL,
  `fieldname` varchar(70) NOT NULL,
  PRIMARY KEY (`o_id`,`fieldname`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_classificationstore_groups_5`
--

LOCK TABLES `object_classificationstore_groups_5` WRITE;
/*!40000 ALTER TABLE `object_classificationstore_groups_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_classificationstore_groups_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_collection_myCollection_5`
--

DROP TABLE IF EXISTS `object_collection_myCollection_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_collection_myCollection_5` (
  `o_id` int NOT NULL DEFAULT '0',
  `index` int NOT NULL DEFAULT '0',
  `fieldname` varchar(190) NOT NULL DEFAULT '',
  `name` varchar(190) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`o_id`,`index`,`fieldname`),
  KEY `index` (`index`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_collection_myCollection_5`
--

LOCK TABLES `object_collection_myCollection_5` WRITE;
/*!40000 ALTER TABLE `object_collection_myCollection_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_collection_myCollection_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_metadata_5`
--

DROP TABLE IF EXISTS `object_metadata_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_metadata_5` (
  `o_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(71) NOT NULL,
  `column` varchar(190) NOT NULL,
  `data` text,
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`o_id`,`dest_id`,`type`,`fieldname`,`column`,`ownertype`,`ownername`,`position`,`index`),
  KEY `dest_id` (`dest_id`),
  KEY `fieldname` (`fieldname`),
  KEY `column` (`column`),
  KEY `ownertype` (`ownertype`),
  KEY `ownername` (`ownername`),
  KEY `position` (`position`),
  KEY `index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_metadata_5`
--

LOCK TABLES `object_metadata_5` WRITE;
/*!40000 ALTER TABLE `object_metadata_5` DISABLE KEYS */;
INSERT INTO `object_metadata_5` VALUES (24,19,'object','advMany','choice',NULL,'object','','0',2),(24,19,'object','advMany','choice2',NULL,'object','','0',2),(24,20,'object','advMany','choice','your choice','object','','0',1),(24,20,'object','advMany','choice2','your choice2','object','','0',1);
/*!40000 ALTER TABLE `object_metadata_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_1`
--

DROP TABLE IF EXISTS `object_query_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_1` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '1',
  `oo_className` varchar(255) DEFAULT 'category',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_1`
--

LOCK TABLES `object_query_1` WRITE;
/*!40000 ALTER TABLE `object_query_1` DISABLE KEYS */;
INSERT INTO `object_query_1` VALUES (4,'1','category','Formal Shirt','Something'),(5,'1','category','Casual Shirt','Something'),(6,'1','category','Formal Shirt','Something'),(12,'1','category','jeans','description'),(13,'1','category','Tops','something'),(43,'1','category','new2','something');
/*!40000 ALTER TABLE `object_query_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_2`
--

DROP TABLE IF EXISTS `object_query_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_2` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '2',
  `oo_className` varchar(255) DEFAULT 'product',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `size` varchar(190) DEFAULT NULL,
  `sku` double DEFAULT NULL,
  `color__rgb` varchar(6) DEFAULT NULL,
  `color__a` varchar(2) DEFAULT NULL,
  `discount` decimal(64,2) DEFAULT NULL,
  `gender` varchar(190) DEFAULT NULL,
  `price` decimal(64,2) DEFAULT NULL,
  `category__id` int DEFAULT NULL,
  `category__type` enum('document','asset','object') DEFAULT NULL,
  `pockets` double DEFAULT NULL,
  `neckShape` varchar(190) DEFAULT NULL,
  `sleeves` varchar(190) DEFAULT NULL,
  `length` bigint DEFAULT NULL,
  `madeIn` varchar(190) DEFAULT NULL,
  `brand` varchar(190) DEFAULT NULL,
  `image__id` int DEFAULT NULL,
  `image__type` enum('document','asset','object') DEFAULT NULL,
  `fabric` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_2`
--

LOCK TABLES `object_query_2` WRITE;
/*!40000 ALTER TABLE `object_query_2` DISABLE KEYS */;
INSERT INTO `object_query_2` VALUES (11,'2','product','monday',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'2','product','Formal Shirt','something','M',12236,'8fb8ef','ff',0.00,'male',500.00,6,'object',2,'','',NULL,NULL,'Louis Vuitton',NULL,NULL,NULL),(22,'2','product','Casual Shirt','something','',565464,'794444','ff',NULL,'male',555.00,5,'object',2,'','',NULL,NULL,NULL,21,'asset',NULL),(25,'2','product',NULL,NULL,'',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'','',NULL,NULL,'',NULL,NULL,NULL),(26,'2','product','shirt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'',NULL,NULL,''),(27,'2','product','shirt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'',NULL,NULL,''),(28,'2','product','Casual Shirt',NULL,'',15489,NULL,NULL,NULL,'Female',500.00,NULL,NULL,NULL,'','',NULL,'India','',NULL,NULL,''),(44,'2','product','product','something','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'',NULL,NULL,''),(45,'2','product','product1','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,NULL,NULL,'','',NULL,'India','Gucci',NULL,NULL,'Cotton'),(46,'2','product','product2','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,NULL,NULL,'','',NULL,'India','gucci',NULL,NULL,'cotton'),(47,'2','product','product3','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,NULL,NULL,'','',NULL,'India','gucci',NULL,NULL,'cotton'),(48,'2','product','product4','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,NULL,NULL,'','',NULL,'India','Gucci',NULL,NULL,'cotton'),(49,'2','product','product5','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,NULL,4,'Deep Neck','Full Sleeve',28,'India','Gucci',NULL,NULL,'Denim'),(50,'2','product','product6','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'Deep Neck','Full Sleeve',28,'India','Gucci',NULL,NULL,'Denim'),(51,'2','product','product7','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','Full Sleeve',28,'India','Gucci',NULL,NULL,'Denim'),(52,'2','product','product8','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','fullSleeve',28,'English (en)','Gucci',NULL,NULL,'Denim'),(53,'2','product','product9','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','fullSleeve',28,'India (IN)','Gucci',NULL,NULL,'Denim'),(54,'2','product','product10','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','fullSleeve',28,'India (IN)','Gucci',NULL,NULL,'Denim'),(55,'2','product','product11','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','fullSleeve',28,'India (IN)','Gucci',NULL,NULL,'Denim'),(56,'2','product','product12','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','fullSleeve',28,'India (IN)','Gucci',NULL,NULL,'Denim'),(57,'2','product','product13','something','M',454545,NULL,NULL,0.00,'male',555.00,NULL,NULL,4,'deepNeck','fullSleeve',28,'India (IN)','Gucci',NULL,NULL,'Denim');
/*!40000 ALTER TABLE `object_query_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_3`
--

DROP TABLE IF EXISTS `object_query_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_3` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '3',
  `oo_className` varchar(255) DEFAULT 'brand',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_3`
--

LOCK TABLES `object_query_3` WRITE;
/*!40000 ALTER TABLE `object_query_3` DISABLE KEYS */;
INSERT INTO `object_query_3` VALUES (19,'3','brand','Louis Vuitton','something'),(20,'3','brand','Gucci','Something');
/*!40000 ALTER TABLE `object_query_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_4`
--

DROP TABLE IF EXISTS `object_query_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_4` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '4',
  `oo_className` varchar(255) DEFAULT 'fabric',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `washable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_4`
--

LOCK TABLES `object_query_4` WRITE;
/*!40000 ALTER TABLE `object_query_4` DISABLE KEYS */;
INSERT INTO `object_query_4` VALUES (15,'4','fabric','Cotton ','something',1),(16,'4','fabric','Slik','something',0),(17,'4','fabric','Denim','something',1);
/*!40000 ALTER TABLE `object_query_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_5`
--

DROP TABLE IF EXISTS `object_query_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_5` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '5',
  `oo_className` varchar(255) DEFAULT 'test',
  `starttime` varchar(5) DEFAULT NULL,
  `boolean` tinyint(1) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `user` varchar(190) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `country` text,
  `image` int DEFAULT NULL,
  `gallery__images` text,
  `gallery__hotspots` text,
  `multi` text,
  `extImg` longtext,
  `imgAdv__image` int DEFAULT NULL,
  `imgAdv__hotspots` text,
  `advMany` text,
  `advManyObject` text,
  `revMany` text,
  `geoPoint__longitude` double DEFAULT NULL,
  `geoPoint__latitude` double DEFAULT NULL,
  `geoBounds__NElongitude` double DEFAULT NULL,
  `geoBounds__NElatitude` double DEFAULT NULL,
  `geoBounds__SWlongitude` double DEFAULT NULL,
  `geoBounds__SWlatitude` double DEFAULT NULL,
  `geoPlygon` longtext,
  `consents` tinyint(1) DEFAULT NULL,
  `gender` varchar(190) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `targetGroup` varchar(190) DEFAULT NULL,
  `tables` longtext,
  `links` text,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_5`
--

LOCK TABLES `object_query_5` WRITE;
/*!40000 ALTER TABLE `object_query_5` DISABLE KEYS */;
INSERT INTO `object_query_5` VALUES (24,'5','test','08:44',1,'2021-02-11 20:30:00','4','ak',NULL,18,'','a:0:{}',NULL,'https://web.whatsapp.com/',NULL,NULL,',object|20,object|19,',NULL,NULL,NULL,NULL,77.3876953125,30.488031905347,70.4443359375,23.160109655593,'N;',1,NULL,1,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `object_query_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_query_6`
--

DROP TABLE IF EXISTS `object_query_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_query_6` (
  `oo_id` int NOT NULL DEFAULT '0',
  `oo_classId` varchar(50) DEFAULT '6',
  `oo_className` varchar(255) DEFAULT 'import',
  `selectClass` varchar(190) DEFAULT NULL,
  `selectFile__id` int DEFAULT NULL,
  `selectFile__type` enum('document','asset','object') DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_query_6`
--

LOCK TABLES `object_query_6` WRITE;
/*!40000 ALTER TABLE `object_query_6` DISABLE KEYS */;
INSERT INTO `object_query_6` VALUES (59,'6','import','',NULL,NULL);
/*!40000 ALTER TABLE `object_query_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_1`
--

DROP TABLE IF EXISTS `object_relations_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_1`
--

LOCK TABLES `object_relations_1` WRITE;
/*!40000 ALTER TABLE `object_relations_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_2`
--

DROP TABLE IF EXISTS `object_relations_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_2`
--

LOCK TABLES `object_relations_2` WRITE;
/*!40000 ALTER TABLE `object_relations_2` DISABLE KEYS */;
INSERT INTO `object_relations_2` VALUES (6,21,15,'object','fabric',0,'object','','0'),(7,21,6,'object','category',0,'object','','0'),(8,22,5,'object','category',0,'object','','0'),(9,22,21,'asset','image',0,'object','','0');
/*!40000 ALTER TABLE `object_relations_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_3`
--

DROP TABLE IF EXISTS `object_relations_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_3` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_3`
--

LOCK TABLES `object_relations_3` WRITE;
/*!40000 ALTER TABLE `object_relations_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_4`
--

DROP TABLE IF EXISTS `object_relations_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_4` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_4`
--

LOCK TABLES `object_relations_4` WRITE;
/*!40000 ALTER TABLE `object_relations_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_5`
--

DROP TABLE IF EXISTS `object_relations_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_5` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_5`
--

LOCK TABLES `object_relations_5` WRITE;
/*!40000 ALTER TABLE `object_relations_5` DISABLE KEYS */;
INSERT INTO `object_relations_5` VALUES (8,24,20,'object','advMany',1,'object','','0'),(9,24,19,'object','advMany',2,'object','','0');
/*!40000 ALTER TABLE `object_relations_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_relations_6`
--

DROP TABLE IF EXISTS `object_relations_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_relations_6` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `src_id` int NOT NULL DEFAULT '0',
  `dest_id` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forward_lookup` (`src_id`,`ownertype`,`ownername`,`position`),
  KEY `reverse_lookup` (`dest_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_relations_6`
--

LOCK TABLES `object_relations_6` WRITE;
/*!40000 ALTER TABLE `object_relations_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_relations_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_1`
--

DROP TABLE IF EXISTS `object_store_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_1` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_1`
--

LOCK TABLES `object_store_1` WRITE;
/*!40000 ALTER TABLE `object_store_1` DISABLE KEYS */;
INSERT INTO `object_store_1` VALUES (4,'Formal Shirt','Something'),(5,'Casual Shirt','Something'),(6,'Formal Shirt','Something'),(12,'jeans','description'),(13,'Tops','something'),(43,'new2','something');
/*!40000 ALTER TABLE `object_store_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_2`
--

DROP TABLE IF EXISTS `object_store_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_2` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `size` varchar(190) DEFAULT NULL,
  `sku` double DEFAULT NULL,
  `color__rgb` varchar(6) DEFAULT NULL,
  `color__a` varchar(2) DEFAULT NULL,
  `discount` decimal(64,2) DEFAULT NULL,
  `gender` varchar(190) DEFAULT NULL,
  `price` decimal(64,2) DEFAULT NULL,
  `pockets` double DEFAULT NULL,
  `neckShape` varchar(190) DEFAULT NULL,
  `sleeves` varchar(190) DEFAULT NULL,
  `length` bigint DEFAULT NULL,
  `madeIn` varchar(190) DEFAULT NULL,
  `faq` longtext,
  `brand` varchar(190) DEFAULT NULL,
  `fabric` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_2`
--

LOCK TABLES `object_store_2` WRITE;
/*!40000 ALTER TABLE `object_store_2` DISABLE KEYS */;
INSERT INTO `object_store_2` VALUES (11,'monday',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a:0:{}',NULL,NULL),(21,'Formal Shirt','something','M',12236,'8fb8ef','ff',0.00,'male',500.00,2,'','',NULL,NULL,'a:0:{}','Louis Vuitton',NULL),(22,'Casual Shirt','something','',565464,'794444','ff',NULL,'male',555.00,2,'','',NULL,NULL,'a:0:{}',NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL,NULL,'',NULL,NULL,'','',NULL,NULL,'a:0:{}','',NULL),(26,'shirt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'a:0:{}','',''),(27,'shirt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'a:0:{}','',''),(28,'Casual Shirt',NULL,'',15489,NULL,NULL,NULL,'Female',500.00,NULL,'','',NULL,'India','a:0:{}','',''),(44,'product','something','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,'a:0:{}','',''),(45,'product1','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,'','',NULL,'India','a:0:{}','Gucci','Cotton'),(46,'product2','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,'','',NULL,'India','a:0:{}','gucci','cotton'),(47,'product3','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,'','',NULL,'India','a:0:{}','gucci','cotton'),(48,'product4','something','M',454545,NULL,NULL,NULL,'male',555.00,NULL,'','',NULL,'India','a:0:{}','Gucci','cotton'),(49,'product5','something','M',454545,NULL,NULL,NULL,'male',555.00,4,'Deep Neck','Full Sleeve',28,'India','a:0:{}','Gucci','Denim'),(50,'product6','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'Deep Neck','Full Sleeve',28,'India','a:0:{}','Gucci','Denim'),(51,'product7','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','Full Sleeve',28,'India','a:0:{}','Gucci','Denim'),(52,'product8','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','fullSleeve',28,'English (en)','a:0:{}','Gucci','Denim'),(53,'product9','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','fullSleeve',28,'India (IN)','a:0:{}','Gucci','Denim'),(54,'product10','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','fullSleeve',28,'India (IN)','a:0:{}','Gucci','Denim'),(55,'product11','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','fullSleeve',28,'India (IN)','a:0:{}','Gucci','Denim'),(56,'product12','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','fullSleeve',28,'India (IN)','a:0:{}','Gucci','Denim'),(57,'product13','something','M',454545,NULL,NULL,0.00,'male',555.00,4,'deepNeck','fullSleeve',28,'India (IN)','a:0:{}','Gucci','Denim');
/*!40000 ALTER TABLE `object_store_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_3`
--

DROP TABLE IF EXISTS `object_store_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_3` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_3`
--

LOCK TABLES `object_store_3` WRITE;
/*!40000 ALTER TABLE `object_store_3` DISABLE KEYS */;
INSERT INTO `object_store_3` VALUES (19,'Louis Vuitton','something'),(20,'Gucci','Something');
/*!40000 ALTER TABLE `object_store_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_4`
--

DROP TABLE IF EXISTS `object_store_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_4` (
  `oo_id` int NOT NULL DEFAULT '0',
  `name` varchar(190) DEFAULT NULL,
  `description` longtext,
  `washable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_4`
--

LOCK TABLES `object_store_4` WRITE;
/*!40000 ALTER TABLE `object_store_4` DISABLE KEYS */;
INSERT INTO `object_store_4` VALUES (15,'Cotton ','something',1),(16,'Slik','something',0),(17,'Denim','something',1);
/*!40000 ALTER TABLE `object_store_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_5`
--

DROP TABLE IF EXISTS `object_store_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_5` (
  `oo_id` int NOT NULL DEFAULT '0',
  `starttime` varchar(5) DEFAULT NULL,
  `boolean` tinyint(1) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `user` varchar(190) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `country` text,
  `image` int DEFAULT NULL,
  `gallery__images` text,
  `gallery__hotspots` text,
  `multi` text,
  `extImg` longtext,
  `imgAdv__image` int DEFAULT NULL,
  `imgAdv__hotspots` text,
  `geoPoint__longitude` double DEFAULT NULL,
  `geoPoint__latitude` double DEFAULT NULL,
  `geoBounds__NElongitude` double DEFAULT NULL,
  `geoBounds__NElatitude` double DEFAULT NULL,
  `geoBounds__SWlongitude` double DEFAULT NULL,
  `geoBounds__SWlatitude` double DEFAULT NULL,
  `geoPlygon` longtext,
  `consents__consent` tinyint(1) DEFAULT NULL,
  `consents__note` int DEFAULT NULL,
  `gender` varchar(190) DEFAULT NULL,
  `newsletterActive` tinyint(1) DEFAULT NULL,
  `newsletterConfirmed` tinyint(1) DEFAULT NULL,
  `targetGroup` varchar(190) DEFAULT NULL,
  `tables` longtext,
  `encrypt` longblob,
  `links` text,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_5`
--

LOCK TABLES `object_store_5` WRITE;
/*!40000 ALTER TABLE `object_store_5` DISABLE KEYS */;
INSERT INTO `object_store_5` VALUES (24,'08:44',1,'2021-02-11 20:30:00','4','ak',NULL,18,'','a:0:{}',NULL,'https://web.whatsapp.com/',NULL,NULL,NULL,NULL,77.3876953125,30.488031905347,70.4443359375,23.160109655593,'N;',1,1,NULL,1,NULL,NULL,'N;',NULL,NULL);
/*!40000 ALTER TABLE `object_store_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_store_6`
--

DROP TABLE IF EXISTS `object_store_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_store_6` (
  `oo_id` int NOT NULL DEFAULT '0',
  `selectClass` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`oo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_store_6`
--

LOCK TABLES `object_store_6` WRITE;
/*!40000 ALTER TABLE `object_store_6` DISABLE KEYS */;
INSERT INTO `object_store_6` VALUES (59,'');
/*!40000 ALTER TABLE `object_store_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_url_slugs`
--

DROP TABLE IF EXISTS `object_url_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_url_slugs` (
  `objectId` int NOT NULL DEFAULT '0',
  `classId` varchar(50) NOT NULL DEFAULT '0',
  `fieldname` varchar(70) NOT NULL DEFAULT '0',
  `index` int unsigned NOT NULL DEFAULT '0',
  `ownertype` enum('object','fieldcollection','localizedfield','objectbrick') NOT NULL DEFAULT 'object',
  `ownername` varchar(70) NOT NULL DEFAULT '',
  `position` varchar(70) NOT NULL DEFAULT '0',
  `slug` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `siteId` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`slug`,`siteId`),
  KEY `index` (`index`),
  KEY `objectId` (`objectId`),
  KEY `classId` (`classId`),
  KEY `fieldname` (`fieldname`),
  KEY `position` (`position`),
  KEY `ownertype` (`ownertype`),
  KEY `ownername` (`ownername`),
  KEY `slug` (`slug`),
  KEY `siteId` (`siteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_url_slugs`
--

LOCK TABLES `object_url_slugs` WRITE;
/*!40000 ALTER TABLE `object_url_slugs` DISABLE KEYS */;
INSERT INTO `object_url_slugs` VALUES (24,'5','urll',0,'object','','0','/web.whatsapp.com/',0);
/*!40000 ALTER TABLE `object_url_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects` (
  `o_id` int unsigned NOT NULL AUTO_INCREMENT,
  `o_parentId` int unsigned DEFAULT NULL,
  `o_type` enum('object','folder','variant') DEFAULT NULL,
  `o_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `o_path` varchar(765) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `o_index` int unsigned DEFAULT '0',
  `o_published` tinyint unsigned DEFAULT '1',
  `o_creationDate` int unsigned DEFAULT NULL,
  `o_modificationDate` int unsigned DEFAULT NULL,
  `o_userOwner` int unsigned DEFAULT NULL,
  `o_userModification` int unsigned DEFAULT NULL,
  `o_classId` varchar(50) DEFAULT NULL,
  `o_className` varchar(255) DEFAULT NULL,
  `o_childrenSortBy` enum('key','index') DEFAULT NULL,
  `o_childrenSortOrder` enum('ASC','DESC') DEFAULT NULL,
  `o_versionCount` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`o_id`),
  UNIQUE KEY `fullpath` (`o_path`,`o_key`),
  KEY `key` (`o_key`),
  KEY `index` (`o_index`),
  KEY `published` (`o_published`),
  KEY `parentId` (`o_parentId`),
  KEY `type` (`o_type`),
  KEY `o_modificationDate` (`o_modificationDate`),
  KEY `o_classId` (`o_classId`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,0,'folder','','/',999999,1,1612789241,1612789241,1,1,NULL,NULL,NULL,NULL,0),(2,1,'folder','category','/',NULL,1,1613053727,1613053726,2,2,NULL,NULL,NULL,NULL,2),(3,1,'folder','product','/',NULL,1,1613053742,1613053742,2,2,NULL,NULL,NULL,NULL,2),(4,2,'object','shirt','/category/',0,1,1613059227,1613059254,2,2,'1','category',NULL,NULL,2),(5,4,'object','Casual Shirt','/category/shirt/',0,1,1613059293,1613059351,2,2,'1','category',NULL,NULL,2),(6,4,'object','formal shirt','/category/shirt/',0,1,1613060256,1613061499,2,2,'1','category',NULL,NULL,2),(10,3,'folder','shirt','/product/',NULL,1,1613064449,1613064449,2,2,NULL,NULL,NULL,NULL,2),(11,10,'object','formalShirt1','/product/shirt/',0,1,1613064617,1613411125,2,2,'2','product',NULL,NULL,2),(12,2,'object','jeans','/category/',0,1,1613118032,1613118048,2,2,'1','category',NULL,NULL,2),(13,2,'object','Tops','/category/',0,1,1613118071,1613118091,2,2,'1','category',NULL,NULL,2),(14,1,'folder','fabric','/',NULL,1,1613119178,1613119178,2,2,NULL,NULL,NULL,NULL,2),(15,14,'object','Cotton','/fabric/',0,1,1613119190,1613119220,2,2,'4','fabric',NULL,NULL,2),(16,14,'object','Slik','/fabric/',0,1,1613119758,1613119783,2,2,'4','fabric',NULL,NULL,2),(17,14,'object','Denim','/fabric/',0,1,1613119799,1613119814,2,2,'4','fabric',NULL,NULL,2),(18,1,'folder','Brand','/',NULL,1,1613119835,1613119835,2,2,NULL,NULL,NULL,NULL,2),(19,18,'object','Louis Vuitton','/Brand/',0,1,1613119919,1613120091,2,2,'3','brand',NULL,NULL,2),(20,18,'object','Gucci','/Brand/',0,1,1613119953,1613374762,2,2,'3','brand',NULL,NULL,3),(21,10,'object','Formal Shirt','/product/shirt/',0,1,1613120135,1613306454,2,2,'2','product',NULL,NULL,3),(22,10,'object','CasualShirt','/product/shirt/',0,1,1613286036,1613673435,2,2,'2','product',NULL,NULL,3),(23,1,'folder','test','/',NULL,1,1613309415,1613309415,2,2,NULL,NULL,NULL,NULL,2),(24,23,'object','test1','/test/',0,1,1613309427,1613380321,2,2,'5','test',NULL,NULL,15),(25,10,'object','partyShirt','/product/shirt/',NULL,0,1613370070,1613370071,2,2,'2','product',NULL,NULL,1),(26,3,'object','Shirtt','/product/',NULL,1,1613413138,1613413138,0,0,'2','product',NULL,NULL,1),(27,3,'object','new','/product/',NULL,1,1613413533,1613413533,0,0,'2','product',NULL,NULL,1),(28,10,'object','new','/product/shirt/',NULL,1,1613457384,1613457384,0,0,'2','product',NULL,NULL,1),(43,2,'object','new2','/category/',NULL,1,1613490362,1613490362,0,0,'1','category',NULL,NULL,1),(44,10,'object','product','/product/shirt/',NULL,1,1613491023,1613491023,0,0,'2','product',NULL,NULL,1),(45,10,'object','product1','/product/shirt/',NULL,1,1613493368,1613493368,0,0,'2','product',NULL,NULL,1),(46,10,'object','product2','/product/shirt/',NULL,1,1613493955,1613493955,0,0,'2','product',NULL,NULL,1),(47,10,'object','product3','/product/shirt/',NULL,1,1613494772,1613494772,0,0,'2','product',NULL,NULL,1),(48,10,'object','product4','/product/shirt/',NULL,1,1613494835,1613494835,0,0,'2','product',NULL,NULL,1),(49,10,'object','product5','/product/shirt/',NULL,1,1613495570,1613495570,0,0,'2','product',NULL,NULL,1),(50,10,'object','product6','/product/shirt/',NULL,1,1613495716,1613495716,0,0,'2','product',NULL,NULL,1),(51,10,'object','product7','/product/shirt/',NULL,1,1613495851,1613495851,0,0,'2','product',NULL,NULL,1),(52,10,'object','product8','/product/shirt/',NULL,1,1613495983,1613495983,0,0,'2','product',NULL,NULL,1),(53,10,'object','product9','/product/shirt/',NULL,1,1613496112,1613496112,0,0,'2','product',NULL,NULL,1),(54,10,'object','product10','/product/shirt/',NULL,1,1613496828,1613496828,0,0,'2','product',NULL,NULL,1),(55,10,'object','product11','/product/shirt/',NULL,1,1613497404,1613497404,0,0,'2','product',NULL,NULL,1),(56,10,'object','product12','/product/shirt/',NULL,1,1613497669,1613497669,0,0,'2','product',NULL,NULL,1),(57,10,'object','product13','/product/shirt/',NULL,1,1613497784,1613497784,0,0,'2','product',NULL,NULL,1),(58,1,'folder','import','/',NULL,1,1613650536,1613650534,2,2,NULL,NULL,NULL,NULL,2),(59,58,'object','import1','/import/',NULL,0,1613650562,1613650563,2,2,'6','import',NULL,NULL,1);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pimcore_migrations`
--

DROP TABLE IF EXISTS `pimcore_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pimcore_migrations` (
  `migration_set` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `migrated_at` datetime NOT NULL,
  PRIMARY KEY (`migration_set`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pimcore_migrations`
--

LOCK TABLES `pimcore_migrations` WRITE;
/*!40000 ALTER TABLE `pimcore_migrations` DISABLE KEYS */;
INSERT INTO `pimcore_migrations` VALUES ('pimcore_core','20180724144005','2021-02-08 18:31:05'),('pimcore_core','20180830113528','2021-02-08 18:31:05'),('pimcore_core','20180830122128','2021-02-08 18:31:05'),('pimcore_core','20180904201947','2021-02-08 18:31:05'),('pimcore_core','20180906142115','2021-02-08 18:31:05'),('pimcore_core','20180907115436','2021-02-08 18:31:05'),('pimcore_core','20180912140913','2021-02-08 18:31:05'),('pimcore_core','20180913132106','2021-02-08 18:31:05'),('pimcore_core','20180924111736','2021-02-08 18:31:05'),('pimcore_core','20181008132414','2021-02-08 18:31:05'),('pimcore_core','20181009135158','2021-02-08 18:31:05'),('pimcore_core','20181115114003','2021-02-08 18:31:05'),('pimcore_core','20181126094412','2021-02-08 18:31:05'),('pimcore_core','20181126144341','2021-02-08 18:31:05'),('pimcore_core','20181128074035','2021-02-08 18:31:05'),('pimcore_core','20181128112320','2021-02-08 18:31:05'),('pimcore_core','20181214145532','2021-02-08 18:31:05'),('pimcore_core','20190102143436','2021-02-08 18:31:05'),('pimcore_core','20190102153226','2021-02-08 18:31:05'),('pimcore_core','20190108131401','2021-02-08 18:31:05'),('pimcore_core','20190124105627','2021-02-08 18:31:05'),('pimcore_core','20190131074054','2021-02-08 18:31:05'),('pimcore_core','20190131095936','2021-02-08 18:31:05'),('pimcore_core','20190320133439','2021-02-08 18:31:05'),('pimcore_core','20190402073052','2021-02-08 18:31:05'),('pimcore_core','20190403120728','2021-02-08 18:31:05'),('pimcore_core','20190405112707','2021-02-08 18:31:05'),('pimcore_core','20190408084129','2021-02-08 18:31:05'),('pimcore_core','20190508074339','2021-02-08 18:31:05'),('pimcore_core','20190515130651','2021-02-08 18:31:05'),('pimcore_core','20190520151448','2021-02-08 18:31:05'),('pimcore_core','20190522130545','2021-02-08 18:31:05'),('pimcore_core','20190527121800','2021-02-08 18:31:05'),('pimcore_core','20190618154000','2021-02-08 18:31:05'),('pimcore_core','20190701141857','2021-02-08 18:31:05'),('pimcore_core','20190708175236','2021-02-08 18:31:05'),('pimcore_core','20190729085052','2021-02-08 18:31:05'),('pimcore_core','20190802090149','2021-02-08 18:31:05'),('pimcore_core','20190806160450','2021-02-08 18:31:05'),('pimcore_core','20190807121356','2021-02-08 18:31:05'),('pimcore_core','20190828142756','2021-02-08 18:31:05'),('pimcore_core','20190902085052','2021-02-08 18:31:05'),('pimcore_core','20190904154339','2021-02-08 18:31:05'),('pimcore_core','20191015131700','2021-02-08 18:31:05'),('pimcore_core','20191107141816','2021-02-08 18:31:05'),('pimcore_core','20191114123638','2021-02-08 18:31:05'),('pimcore_core','20191114132014','2021-02-08 18:31:05'),('pimcore_core','20191121150326','2021-02-08 18:31:05'),('pimcore_core','20191125135853','2021-02-08 18:31:05'),('pimcore_core','20191125200416','2021-02-08 18:31:06'),('pimcore_core','20191126130004','2021-02-08 18:31:06'),('pimcore_core','20191208175348','2021-02-08 18:31:06'),('pimcore_core','20191213115045','2021-02-08 18:31:06'),('pimcore_core','20191218073528','2021-02-08 18:31:06'),('pimcore_core','20191230103524','2021-02-08 18:31:06'),('pimcore_core','20191230104529','2021-02-08 18:31:06'),('pimcore_core','20200113120101','2021-02-08 18:31:06'),('pimcore_core','20200116181758','2021-02-08 18:31:06'),('pimcore_core','20200121095650','2021-02-08 18:31:06'),('pimcore_core','20200121131304','2021-02-08 18:31:06'),('pimcore_core','20200127102432','2021-02-08 18:31:06'),('pimcore_core','20200129102132','2021-02-08 18:31:06'),('pimcore_core','20200210101048','2021-02-08 18:31:06'),('pimcore_core','20200210164037','2021-02-08 18:31:06'),('pimcore_core','20200211115044','2021-02-08 18:31:06'),('pimcore_core','20200212130011','2021-02-08 18:31:06'),('pimcore_core','20200218104052','2021-02-08 18:31:06'),('pimcore_core','20200226102938','2021-02-08 18:31:06'),('pimcore_core','20200310122412','2021-02-08 18:31:06'),('pimcore_core','20200313092019','2021-02-08 18:31:06'),('pimcore_core','20200317163018','2021-02-08 18:31:06'),('pimcore_core','20200318100042','2021-02-08 18:31:06'),('pimcore_core','20200324141723','2021-02-08 18:31:06'),('pimcore_core','20200407120641','2021-02-08 18:31:06'),('pimcore_core','20200407132737','2021-02-08 18:31:06'),('pimcore_core','20200407145422','2021-02-08 18:31:06'),('pimcore_core','20200410112354','2021-02-08 18:31:06'),('pimcore_core','20200421142950','2021-02-08 18:31:06'),('pimcore_core','20200422090352','2021-02-08 18:31:06'),('pimcore_core','20200428082346','2021-02-08 18:31:06'),('pimcore_core','20200428111313','2021-02-08 18:31:06'),('pimcore_core','20200529121630','2021-02-08 18:31:06'),('pimcore_core','20200604110336','2021-02-08 18:31:06'),('pimcore_core','20200619071650','2021-02-08 18:31:06'),('pimcore_core','20200703093410','2021-02-08 18:31:06'),('pimcore_core','20200721123847','2021-02-08 18:31:06'),('pimcore_core','20200807105448','2021-02-08 18:31:06'),('pimcore_core','20200812160035','2021-02-08 18:31:06'),('pimcore_core','20200817133132','2021-02-08 18:31:06'),('pimcore_core','20200820151104','2021-02-08 18:31:06'),('pimcore_core','20200828091305','2021-02-08 18:31:06'),('pimcore_core','20200902111642','2021-02-08 18:31:06'),('pimcore_core','20201001133558','2021-02-08 18:31:06'),('pimcore_core','20201207132025','2021-02-08 18:31:06'),('pimcore_core','20210211152319','2021-02-21 16:27:21');
/*!40000 ALTER TABLE `pimcore_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL DEFAULT 'document',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(190) NOT NULL DEFAULT '',
  `type` enum('text','document','asset','object','bool','select') DEFAULT NULL,
  `data` text,
  `inheritable` tinyint unsigned DEFAULT '1',
  PRIMARY KEY (`cid`,`ctype`,`name`),
  KEY `getall` (`cpath`,`ctype`,`inheritable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (4,'document','/productpage','navigation_name','text','productpage',0);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantityvalue_units`
--

DROP TABLE IF EXISTS `quantityvalue_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quantityvalue_units` (
  `id` varchar(50) NOT NULL,
  `group` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(20) DEFAULT NULL,
  `longname` varchar(250) DEFAULT NULL,
  `baseunit` varchar(50) DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `conversionOffset` double DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `converter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_baseunit` (`baseunit`),
  CONSTRAINT `fk_baseunit` FOREIGN KEY (`baseunit`) REFERENCES `quantityvalue_units` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantityvalue_units`
--

LOCK TABLES `quantityvalue_units` WRITE;
/*!40000 ALTER TABLE `quantityvalue_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `quantityvalue_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recyclebin`
--

DROP TABLE IF EXISTS `recyclebin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recyclebin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `path` varchar(765) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` int unsigned DEFAULT NULL,
  `deletedby` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recyclebin`
--

LOCK TABLES `recyclebin` WRITE;
/*!40000 ALTER TABLE `recyclebin` DISABLE KEYS */;
INSERT INTO `recyclebin` VALUES (1,'object','object','/product/name',2,1613119124,'admin'),(2,'object','object','/product/size',1,1613120117,'admin'),(3,'asset','image','/images/a2.jpg',1,1613312689,'admin'),(4,'object','object','/product/shirt/new16',1,1613491146,'admin'),(5,'object','object','/product/shirt/new15',1,1613491150,'admin'),(6,'object','object','/product/shirt/new14',1,1613491153,'admin'),(7,'object','object','/product/shirt/new13',1,1613491154,'admin'),(8,'object','object','/product/shirt/new12',1,1613491156,'admin'),(9,'object','object','/product/shirt/new11',1,1613491158,'admin'),(10,'object','object','/product/shirt/new10',1,1613491159,'admin'),(11,'object','object','/product/shirt/new9',1,1613491161,'admin'),(12,'object','object','/product/shirt/new8',1,1613491162,'admin'),(13,'object','object','/product/shirt/new7',1,1613491163,'admin'),(14,'object','object','/product/shirt/new6',1,1613491164,'admin'),(15,'object','object','/product/shirt/new3',1,1613491165,'admin'),(16,'object','object','/product/shirt/new2',1,1613491167,'admin'),(17,'object','object','/product/shirt/new1',1,1613491168,'admin'),(18,'document','page','/productpage',1,1613629327,'admin'),(19,'document','page','/productpage',1,1613630909,'admin');
/*!40000 ALTER TABLE `recyclebin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirects`
--

DROP TABLE IF EXISTS `redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redirects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('entire_uri','path_query','path','auto_create') NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `sourceSite` int DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `targetSite` int DEFAULT NULL,
  `statusCode` varchar(3) DEFAULT NULL,
  `priority` int DEFAULT '0',
  `regex` tinyint(1) DEFAULT NULL,
  `passThroughParameters` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `expiry` int unsigned DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  `userOwner` int unsigned DEFAULT NULL,
  `userModification` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `routing_lookup` (`active`,`regex`,`sourceSite`,`source`,`type`,`expiry`,`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirects`
--

LOCK TABLES `redirects` WRITE;
/*!40000 ALTER TABLE `redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanitycheck`
--

DROP TABLE IF EXISTS `sanitycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanitycheck` (
  `id` int unsigned NOT NULL,
  `type` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanitycheck`
--

LOCK TABLES `sanitycheck` WRITE;
/*!40000 ALTER TABLE `sanitycheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanitycheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_tasks`
--

DROP TABLE IF EXISTS `schedule_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `date` int unsigned DEFAULT NULL,
  `action` enum('publish','unpublish','delete','publish-version') DEFAULT NULL,
  `version` bigint unsigned DEFAULT NULL,
  `active` tinyint unsigned DEFAULT '0',
  `userId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype` (`ctype`),
  KEY `active` (`active`),
  KEY `version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_tasks`
--

LOCK TABLES `schedule_tasks` WRITE;
/*!40000 ALTER TABLE `schedule_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_backend_data`
--

DROP TABLE IF EXISTS `search_backend_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_backend_data` (
  `id` int NOT NULL,
  `fullpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `maintype` varchar(8) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(190) DEFAULT NULL,
  `published` tinyint unsigned DEFAULT NULL,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  `userOwner` int DEFAULT NULL,
  `userModification` int DEFAULT NULL,
  `data` longtext,
  `properties` text,
  PRIMARY KEY (`id`,`maintype`),
  KEY `fullpath` (`fullpath`),
  KEY `maintype` (`maintype`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `published` (`published`),
  FULLTEXT KEY `fulltext` (`data`,`properties`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_backend_data`
--

LOCK TABLES `search_backend_data` WRITE;
/*!40000 ALTER TABLE `search_backend_data` DISABLE KEYS */;
INSERT INTO `search_backend_data` VALUES (2,'/images','asset','folder','folder',1,1613311050,1613311050,2,2,'ID: 2  \nPath: /images  \nimages images',''),(2,'/category','object','folder','folder',1,1613053727,1613053726,2,2,'ID: 2  \nPath: /category  \ncategory category',''),(3,'/images/a1.jpg','asset','image','image',1,1613311167,1613311167,2,2,'ID: 3  \nPath: /images/a1.jpg  \na1.jpg FileName a1.jpg FileDateTime 1613311167 FileSize 38515 FileType MimeType image/jpeg SectionsFound images jpg',''),(3,'/product','object','folder','folder',1,1613053742,1613053742,2,2,'ID: 3  \nPath: /product  \nproduct product',''),(4,'/images/a9.jpg','asset','image','image',1,1613311166,1613311166,2,2,'ID: 4  \nPath: /images/a9.jpg  \na9.jpg FileName a9.jpg FileDateTime 1613311166 FileSize 5947 FileType MimeType image/jpeg SectionsFound images jpg',''),(4,'/productpage','document','page','page',1,1613671508,1613840532,2,2,'ID: 4  \nPath: /productpage  \nproductpage productpage productpage','navigation_name:productpage '),(4,'/category/shirt','object','object','category',1,1613059227,1613059254,2,2,'ID: 4  \nPath: /category/shirt  \nshirt Formal Shirt Something category shirt',''),(5,'/category/shirt/Casual Shirt','object','object','category',1,1613059293,1613059351,2,2,'ID: 5  \nPath: /category/shirt/Casual Shirt  \nCasual Shirt Casual Shirt Something category shirt Casual Shirt',''),(6,'/images/a10.jpeg','asset','image','image',1,1613311167,1613311167,2,2,'ID: 6  \nPath: /images/a10.jpeg  \na10.jpeg FileName a10.jpeg FileDateTime 1613311167 FileSize 8968 FileType MimeType image/jpeg SectionsFound images a10 jpeg',''),(6,'/category/shirt/formal shirt','object','object','category',1,1613060256,1613061499,2,2,'ID: 6  \nPath: /category/shirt/formal shirt  \nformal shirt Formal Shirt Something category shirt formal shirt',''),(7,'/images/jeans1.jpg','asset','image','image',1,1613311167,1613311167,2,2,'ID: 7  \nPath: /images/jeans1.jpg  \njeans1.jpg FileName jeans1.jpg FileDateTime 1613311167 FileSize 113244 FileType MimeType image/jpeg SectionsFound images jeans1 jpg',''),(8,'/images/jeans2.jpg','asset','image','image',1,1613311168,1613311168,2,2,'ID: 8  \nPath: /images/jeans2.jpg  \njeans2.jpg FileName jeans2.jpg FileDateTime 1613311168 FileSize 43655 FileType MimeType image/jpeg SectionsFound images jeans2 jpg',''),(9,'/images/jeans4.jpg','asset','image','image',1,1613311169,1613311169,2,2,'ID: 9  \nPath: /images/jeans4.jpg  \njeans4.jpg FileName jeans4.jpg FileDateTime 1613311169 FileSize 51415 FileType MimeType image/jpeg SectionsFound images jeans4 jpg',''),(10,'/images/jeans3.jpg','asset','image','image',1,1613311169,1613311169,2,2,'ID: 10  \nPath: /images/jeans3.jpg  \njeans3.jpg FileName jeans3.jpg FileDateTime 1613311169 FileSize 61547 FileType MimeType image/jpeg SectionsFound images jeans3 jpg',''),(10,'/product/shirt','object','folder','folder',1,1613064449,1613064449,2,2,'ID: 10  \nPath: /product/shirt  \nshirt product shirt',''),(11,'/images/m.jpeg','asset','image','image',1,1613311170,1613311170,2,2,'ID: 11  \nPath: /images/m.jpeg  \nm.jpeg FileName m.jpeg FileDateTime 1613311170 FileSize 53182 FileType MimeType image/jpeg SectionsFound images jpeg',''),(11,'/product/shirt/formalShirt1','object','object','product',1,1613064617,1613411125,2,2,'ID: 11  \nPath: /product/shirt/formalShirt1  \nformalShirt1 monday product shirt formalShirt1',''),(12,'/images/shirt3.jpg','asset','image','image',1,1613311170,1613311170,2,2,'ID: 12  \nPath: /images/shirt3.jpg  \nshirt3.jpg FileName shirt3.jpg FileDateTime 1613311170 FileSize 56825 FileType MimeType image/jpeg SectionsFound images shirt3 jpg',''),(12,'/category/jeans','object','object','category',1,1613118032,1613118048,2,2,'ID: 12  \nPath: /category/jeans  \njeans jeans description category jeans',''),(13,'/images/shirt1.jpg','asset','image','image',1,1613311171,1613311171,2,2,'ID: 13  \nPath: /images/shirt1.jpg  \nshirt1.jpg FileName shirt1.jpg FileDateTime 1613311171 FileSize 215325 FileType MimeType image/jpeg SectionsFound images shirt1 jpg',''),(13,'/category/Tops','object','object','category',1,1613118071,1613118091,2,2,'ID: 13  \nPath: /category/Tops  \nTops Tops something category Tops',''),(14,'/images/shirt2.jpg','asset','image','image',1,1613311172,1613311172,2,2,'ID: 14  \nPath: /images/shirt2.jpg  \nshirt2.jpg FileName shirt2.jpg FileDateTime 1613311172 FileSize 26321 FileType MimeType image/jpeg SectionsFound images shirt2 jpg',''),(14,'/fabric','object','folder','folder',1,1613119178,1613119178,2,2,'ID: 14  \nPath: /fabric  \nfabric fabric',''),(15,'/images/shirt4.jpg','asset','image','image',1,1613311172,1613311172,2,2,'ID: 15  \nPath: /images/shirt4.jpg  \nshirt4.jpg FileName shirt4.jpg FileDateTime 1613311172 FileSize 25776 FileType MimeType image/jpeg SectionsFound images shirt4 jpg',''),(15,'/fabric/Cotton','object','object','fabric',1,1613119190,1613119220,2,2,'ID: 15  \nPath: /fabric/Cotton  \nCotton Cotton something fabric Cotton',''),(16,'/_default_upload_bucket','asset','folder','folder',1,1613312659,1613312659,1,0,'ID: 16  \nPath: /_default_upload_bucket  \n_default_upload_bucket default upload bucket',''),(16,'/fabric/Slik','object','object','fabric',1,1613119758,1613119783,2,2,'ID: 16  \nPath: /fabric/Slik  \nSlik Slik something fabric Slik',''),(17,'/_default_upload_bucket/a1.jpg','asset','image','image',1,1613312660,1613312660,2,2,'ID: 17  \nPath: /_default_upload_bucket/a1.jpg  \na1.jpg FileName a1.jpg FileDateTime 1613312660 FileSize 38515 FileType MimeType image/jpeg SectionsFound default upload bucket jpg',''),(17,'/fabric/Denim','object','object','fabric',1,1613119799,1613119814,2,2,'ID: 17  \nPath: /fabric/Denim  \nDenim Denim something fabric Denim',''),(18,'/_default_upload_bucket/a2.jpg','asset','image','image',1,1613312701,1613312701,2,2,'ID: 18  \nPath: /_default_upload_bucket/a2.jpg  \na2.jpg FileName a2.jpg FileDateTime 1613312701 FileSize 48040 FileType MimeType image/jpeg SectionsFound default upload bucket jpg',''),(18,'/Brand','object','folder','folder',1,1613119835,1613119835,2,2,'ID: 18  \nPath: /Brand  \nBrand Brand',''),(19,'/_default_upload_bucket/a1_1.jpg','asset','image','image',1,1613373945,1613373945,2,2,'ID: 19  \nPath: /_default_upload_bucket/a1_1.jpg  \na1_1.jpg FileName a1_1.jpg FileDateTime 1613373945 FileSize 38515 FileType MimeType image/jpeg SectionsFound default upload bucket jpg',''),(19,'/Brand/Louis Vuitton','object','object','brand',1,1613119919,1613120091,2,2,'ID: 19  \nPath: /Brand/Louis Vuitton  \nLouis Vuitton Louis Vuitton something Brand Louis Vuitton',''),(20,'/_default_upload_bucket/cat.json','asset','unknown','unknown',1,1613650862,1613650862,2,2,'ID: 20  \nPath: /_default_upload_bucket/cat.json  \ncat.json default upload bucket cat json',''),(20,'/Brand/Gucci','object','object','brand',1,1613119953,1613374762,2,2,'ID: 20  \nPath: /Brand/Gucci  \nGucci Gucci Something Brand Gucci',''),(21,'/_default_upload_bucket/a1_2.jpg','asset','image','image',1,1613673427,1613673427,2,2,'ID: 21  \nPath: /_default_upload_bucket/a1_2.jpg  \na1_2.jpg FileName a1_2.jpg FileDateTime 1613673427 FileSize 38515 FileType MimeType image/jpeg SectionsFound default upload bucket jpg',''),(21,'/product/shirt/Formal Shirt','object','object','product',1,1613120135,1613306454,2,2,'ID: 21  \nPath: /product/shirt/Formal Shirt  \nFormal Shirt Formal Shirt something 12236 #8fb8efff male 500 Louis Vuitton product shirt Formal Shirt',''),(22,'/product/shirt/CasualShirt','object','object','product',1,1613286036,1613673435,2,2,'ID: 22  \nPath: /product/shirt/CasualShirt  \nCasualShirt Casual Shirt something 565464 #794444ff male 555 product shirt CasualShirt',''),(23,'/test','object','folder','folder',1,1613309415,1613309415,2,2,'ID: 23  \nPath: /test  \ntest test',''),(24,'/test/test1','object','object','test',1,1613309427,1613380321,2,2,'ID: 24  \nPath: /test/test1  \ntest1 https //web.whatsapp.com/ test test1',''),(25,'/product/shirt/partyShirt','object','object','product',0,1613370070,1613370071,2,2,'ID: 25  \nPath: /product/shirt/partyShirt  \npartyShirt product shirt partyShirt',''),(26,'/product/Shirtt','object','object','product',1,1613413138,1613413138,0,0,'ID: 26  \nPath: /product/Shirtt  \nShirtt shirt product Shirtt',''),(27,'/product/new','object','object','product',1,1613413533,1613413533,0,0,'ID: 27  \nPath: /product/new  \nnew shirt product new',''),(28,'/product/shirt/new','object','object','product',1,1613457384,1613457384,0,0,'ID: 28  \nPath: /product/shirt/new  \nnew Casual Shirt 15489 Female 500 India product shirt new',''),(43,'/category/new2','object','object','category',1,1613490362,1613490362,0,0,'ID: 43  \nPath: /category/new2  \nnew2 new2 something category new2',''),(44,'/product/shirt/product','object','object','product',1,1613491023,1613491023,0,0,'ID: 44  \nPath: /product/shirt/product  \nproduct product something product shirt',''),(45,'/product/shirt/product1','object','object','product',1,1613493368,1613493368,0,0,'ID: 45  \nPath: /product/shirt/product1  \nproduct1 product1 something 454545 male Cotton 555 Gucci India product shirt product1',''),(46,'/product/shirt/product2','object','object','product',1,1613493955,1613493955,0,0,'ID: 46  \nPath: /product/shirt/product2  \nproduct2 product2 something 454545 male cotton 555 gucci India product shirt product2',''),(47,'/product/shirt/product3','object','object','product',1,1613494772,1613494772,0,0,'ID: 47  \nPath: /product/shirt/product3  \nproduct3 product3 something 454545 male cotton 555 gucci India product shirt product3',''),(48,'/product/shirt/product4','object','object','product',1,1613494835,1613494835,0,0,'ID: 48  \nPath: /product/shirt/product4  \nproduct4 product4 something 454545 male cotton 555 Gucci India product shirt product4',''),(49,'/product/shirt/product5','object','object','product',1,1613495570,1613495570,0,0,'ID: 49  \nPath: /product/shirt/product5  \nproduct5 product5 something 454545 male Denim 555 Gucci Deep Neck Full Sleeve India product shirt product5',''),(50,'/product/shirt/product6','object','object','product',1,1613495716,1613495716,0,0,'ID: 50  \nPath: /product/shirt/product6  \nproduct6 product6 something 454545 male Denim 555 Gucci Deep Neck Full Sleeve India product shirt product6',''),(51,'/product/shirt/product7','object','object','product',1,1613495851,1613495851,0,0,'ID: 51  \nPath: /product/shirt/product7  \nproduct7 product7 something 454545 male Denim 555 Gucci deepNeck Full Sleeve India product shirt product7',''),(52,'/product/shirt/product8','object','object','product',1,1613495983,1613495983,0,0,'ID: 52  \nPath: /product/shirt/product8  \nproduct8 product8 something 454545 male Denim 555 Gucci deepNeck fullSleeve English (en) product shirt product8',''),(53,'/product/shirt/product9','object','object','product',1,1613496112,1613496112,0,0,'ID: 53  \nPath: /product/shirt/product9  \nproduct9 product9 something 454545 male Denim 555 Gucci deepNeck fullSleeve India (IN) product shirt product9',''),(54,'/product/shirt/product10','object','object','product',1,1613496828,1613496828,0,0,'ID: 54  \nPath: /product/shirt/product10  \nproduct10 product10 something 454545 male Denim 555 Gucci deepNeck fullSleeve India (IN) product shirt product10',''),(55,'/product/shirt/product11','object','object','product',1,1613497404,1613497404,0,0,'ID: 55  \nPath: /product/shirt/product11  \nproduct11 product11 something 454545 male Denim 555 Gucci deepNeck fullSleeve India (IN) product shirt product11',''),(56,'/product/shirt/product12','object','object','product',1,1613497669,1613497669,0,0,'ID: 56  \nPath: /product/shirt/product12  \nproduct12 product12 something 454545 male Denim 555 Gucci deepNeck fullSleeve India (IN) product shirt product12',''),(57,'/product/shirt/product13','object','object','product',1,1613497784,1613497784,0,0,'ID: 57  \nPath: /product/shirt/product13  \nproduct13 product13 something 454545 male Denim 555 Gucci deepNeck fullSleeve India (IN) product shirt product13',''),(58,'/import','object','folder','folder',1,1613650536,1613650534,2,2,'ID: 58  \nPath: /import  \nimport import',''),(59,'/import/import1','object','object','import',0,1613650562,1613650563,2,2,'ID: 59  \nPath: /import/import1  \nimport1 import import1','');
/*!40000 ALTER TABLE `search_backend_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sites` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mainDomain` varchar(255) DEFAULT NULL,
  `domains` text,
  `rootId` int unsigned DEFAULT NULL,
  `errorDocument` varchar(255) DEFAULT NULL,
  `redirectToMainDomain` tinyint(1) DEFAULT NULL,
  `creationDate` int unsigned DEFAULT '0',
  `modificationDate` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rootId` (`rootId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `idPath` varchar(190) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idPath_name` (`idPath`,`name`),
  KEY `idpath` (`idPath`),
  KEY `parentid` (`parentId`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_assignment`
--

DROP TABLE IF EXISTS `tags_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_assignment` (
  `tagid` int unsigned NOT NULL DEFAULT '0',
  `cid` int NOT NULL DEFAULT '0',
  `ctype` enum('document','asset','object') NOT NULL,
  PRIMARY KEY (`tagid`,`cid`,`ctype`),
  KEY `ctype` (`ctype`),
  KEY `ctype_cid` (`cid`,`ctype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_assignment`
--

LOCK TABLES `tags_assignment` WRITE;
/*!40000 ALTER TABLE `tags_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_rules`
--

DROP TABLE IF EXISTS `targeting_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeting_rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `scope` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `prio` smallint unsigned NOT NULL DEFAULT '0',
  `conditions` longtext,
  `actions` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_rules`
--

LOCK TABLES `targeting_rules` WRITE;
/*!40000 ALTER TABLE `targeting_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_storage`
--

DROP TABLE IF EXISTS `targeting_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeting_storage` (
  `visitorId` varchar(100) NOT NULL,
  `scope` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `creationDate` datetime DEFAULT NULL,
  `modificationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitorId`,`scope`,`name`),
  KEY `targeting_storage_scope_index` (`scope`),
  KEY `targeting_storage_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_storage`
--

LOCK TABLES `targeting_storage` WRITE;
/*!40000 ALTER TABLE `targeting_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targeting_target_groups`
--

DROP TABLE IF EXISTS `targeting_target_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targeting_target_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `threshold` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targeting_target_groups`
--

LOCK TABLES `targeting_target_groups` WRITE;
/*!40000 ALTER TABLE `targeting_target_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `targeting_target_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_store`
--

DROP TABLE IF EXISTS `tmp_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmp_store` (
  `id` varchar(190) NOT NULL DEFAULT '',
  `tag` varchar(190) DEFAULT NULL,
  `data` longtext,
  `serialized` tinyint NOT NULL DEFAULT '0',
  `date` int unsigned DEFAULT NULL,
  `expiryDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag` (`tag`),
  KEY `date` (`date`),
  KEY `expiryDate` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_store`
--

LOCK TABLES `tmp_store` WRITE;
/*!40000 ALTER TABLE `tmp_store` DISABLE KEYS */;
INSERT INTO `tmp_store` VALUES ('document_session_4_jpb2ma6g2bb0qrip415jd5u4mk','document-session','O:27:\"Pimcore\\Model\\Document\\Page\":34:{s:8:\"\0*\0title\";s:11:\"productpage\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";s:9:\"AppBundle\";s:13:\"\0*\0controller\";s:39:\"@AppBundle\\Controller\\ContentController\";s:9:\"\0*\0action\";s:7:\"product\";s:11:\"\0*\0template\";N;s:11:\"\0*\0elements\";a:2:{s:8:\"headline\";O:37:\"Pimcore\\Model\\Document\\Editable\\Input\":6:{s:4:\"text\";s:0:\"\";s:7:\"\0*\0name\";s:8:\"headline\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:4;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}s:7:\"product\";O:40:\"Pimcore\\Model\\Document\\Editable\\Relation\":8:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;s:7:\"\0*\0name\";s:7:\"product\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:4;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}}s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:1;s:6:\"\0*\0key\";s:11:\"productpage\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:1;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1613671508;s:19:\"\0*\0modificationDate\";i:1613840532;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:13:\"\0*\0properties\";a:1:{s:15:\"navigation_name\";O:22:\"Pimcore\\Model\\Property\":8:{s:7:\"\0*\0name\";s:15:\"navigation_name\";s:7:\"\0*\0data\";s:11:\"productpage\";s:7:\"\0*\0type\";s:4:\"text\";s:8:\"\0*\0ctype\";s:8:\"document\";s:8:\"\0*\0cpath\";N;s:6:\"\0*\0cid\";i:4;s:14:\"\0*\0inheritable\";b:0;s:12:\"\0*\0inherited\";b:0;}}s:11:\"\0*\0children\";a:0:{}s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:16;s:25:\"\0*\0__dataVersionTimestamp\";i:1613840532;s:12:\"\0*\0_fulldump\";b:1;s:24:\"____pimcore_cache_item__\";s:10:\"document_4\";}',0,1613930081,1614534881),('document_session_4_laevcge2bvfugumh9i0pr8dccf','document-session','O:27:\"Pimcore\\Model\\Document\\Page\":34:{s:8:\"\0*\0title\";s:11:\"productpage\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";s:9:\"AppBundle\";s:13:\"\0*\0controller\";s:39:\"@AppBundle\\Controller\\ContentController\";s:9:\"\0*\0action\";s:7:\"product\";s:11:\"\0*\0template\";N;s:11:\"\0*\0elements\";a:0:{}s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:1;s:6:\"\0*\0key\";s:11:\"productpage\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:1;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1613671508;s:19:\"\0*\0modificationDate\";i:1613720377;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:13:\"\0*\0properties\";a:1:{s:15:\"navigation_name\";O:22:\"Pimcore\\Model\\Property\":8:{s:7:\"\0*\0name\";s:15:\"navigation_name\";s:7:\"\0*\0data\";s:11:\"productpage\";s:7:\"\0*\0type\";s:4:\"text\";s:8:\"\0*\0ctype\";s:8:\"document\";s:8:\"\0*\0cpath\";N;s:6:\"\0*\0cid\";i:4;s:14:\"\0*\0inheritable\";b:0;s:12:\"\0*\0inherited\";b:0;}}s:11:\"\0*\0children\";a:0:{}s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:12;s:25:\"\0*\0__dataVersionTimestamp\";i:1613720377;s:12:\"\0*\0_fulldump\";b:1;s:24:\"____pimcore_cache_item__\";s:10:\"document_4\";}',0,1613720448,1614325248),('document_session_4_rte5samj4hn2mi95c6pkoeqlcg','document-session','O:27:\"Pimcore\\Model\\Document\\Page\":34:{s:8:\"\0*\0title\";s:11:\"productpage\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";s:9:\"AppBundle\";s:13:\"\0*\0controller\";s:39:\"@AppBundle\\Controller\\ContentController\";s:9:\"\0*\0action\";s:7:\"product\";s:11:\"\0*\0template\";N;s:11:\"\0*\0elements\";a:2:{s:8:\"headline\";O:37:\"Pimcore\\Model\\Document\\Editable\\Input\":6:{s:4:\"text\";s:0:\"\";s:7:\"\0*\0name\";s:8:\"headline\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:4;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}s:7:\"product\";O:40:\"Pimcore\\Model\\Document\\Editable\\Relation\":8:{s:2:\"id\";N;s:4:\"type\";N;s:7:\"subtype\";N;s:7:\"\0*\0name\";s:7:\"product\";s:11:\"\0*\0realName\";N;s:13:\"\0*\0documentId\";i:4;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}}s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:1;s:6:\"\0*\0key\";s:11:\"productpage\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:1;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1613671508;s:19:\"\0*\0modificationDate\";i:1613840532;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:13:\"\0*\0properties\";a:1:{s:15:\"navigation_name\";O:22:\"Pimcore\\Model\\Property\":8:{s:7:\"\0*\0name\";s:15:\"navigation_name\";s:7:\"\0*\0data\";s:11:\"productpage\";s:7:\"\0*\0type\";s:4:\"text\";s:8:\"\0*\0ctype\";s:8:\"document\";s:8:\"\0*\0cpath\";s:12:\"/productpage\";s:6:\"\0*\0cid\";i:4;s:14:\"\0*\0inheritable\";b:0;s:12:\"\0*\0inherited\";b:0;}}s:11:\"\0*\0children\";a:0:{}s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:16;s:25:\"\0*\0__dataVersionTimestamp\";i:1613840380;s:12:\"\0*\0_fulldump\";b:1;s:24:\"____pimcore_cache_item__\";s:10:\"document_4\";}',0,1613840535,1614445335),('document_session_4_vbbmnq7uor0tp33cnns0ttl18l','document-session','O:27:\"Pimcore\\Model\\Document\\Page\":34:{s:8:\"\0*\0title\";s:11:\"productpage\";s:14:\"\0*\0description\";s:0:\"\";s:11:\"\0*\0metaData\";a:0:{}s:7:\"\0*\0type\";s:4:\"page\";s:12:\"\0*\0prettyUrl\";N;s:17:\"\0*\0targetGroupIds\";s:0:\"\";s:9:\"\0*\0module\";s:9:\"AppBundle\";s:13:\"\0*\0controller\";s:39:\"@AppBundle\\Controller\\ContentController\";s:9:\"\0*\0action\";s:7:\"product\";s:11:\"\0*\0template\";N;s:11:\"\0*\0elements\";a:3:{s:8:\"headline\";O:37:\"Pimcore\\Model\\Document\\Editable\\Input\":6:{s:4:\"text\";s:0:\"\";s:7:\"\0*\0name\";s:8:\"headline\";s:11:\"\0*\0realName\";s:8:\"headline\";s:13:\"\0*\0documentId\";i:0;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}s:12:\"contentblock\";O:37:\"Pimcore\\Model\\Document\\Editable\\Block\":8:{s:7:\"indices\";a:0:{}s:7:\"current\";i:0;s:8:\"suffixes\";a:0:{}s:7:\"\0*\0name\";s:12:\"contentblock\";s:11:\"\0*\0realName\";s:12:\"contentblock\";s:13:\"\0*\0documentId\";i:4;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}s:7:\"product\";O:40:\"Pimcore\\Model\\Document\\Editable\\Relation\":8:{s:2:\"id\";i:10;s:4:\"type\";s:6:\"object\";s:7:\"subtype\";s:6:\"folder\";s:7:\"\0*\0name\";s:7:\"product\";s:11:\"\0*\0realName\";s:7:\"product\";s:13:\"\0*\0documentId\";i:0;s:12:\"\0*\0inherited\";b:0;s:14:\"\0*\0inDialogBox\";N;}}s:12:\"\0*\0editables\";R:12;s:26:\"\0*\0contentMasterDocumentId\";N;s:24:\"\0*\0supportsContentMaster\";b:1;s:26:\"\0*\0missingRequiredEditable\";N;s:5:\"\0*\0id\";i:4;s:11:\"\0*\0parentId\";i:1;s:6:\"\0*\0key\";s:11:\"productpage\";s:7:\"\0*\0path\";s:1:\"/\";s:8:\"\0*\0index\";i:1;s:12:\"\0*\0published\";b:1;s:15:\"\0*\0creationDate\";i:1613671508;s:19:\"\0*\0modificationDate\";i:1613673489;s:12:\"\0*\0userOwner\";i:2;s:19:\"\0*\0userModification\";i:2;s:13:\"\0*\0properties\";a:1:{s:15:\"navigation_name\";O:22:\"Pimcore\\Model\\Property\":8:{s:7:\"\0*\0name\";s:15:\"navigation_name\";s:7:\"\0*\0data\";s:11:\"productpage\";s:7:\"\0*\0type\";s:4:\"text\";s:8:\"\0*\0ctype\";s:8:\"document\";s:8:\"\0*\0cpath\";s:12:\"/productpage\";s:6:\"\0*\0cid\";i:4;s:14:\"\0*\0inheritable\";b:0;s:12:\"\0*\0inherited\";b:0;}}s:11:\"\0*\0children\";a:0:{}s:11:\"\0*\0siblings\";a:0:{}s:14:\"\0*\0hasSiblings\";a:0:{}s:9:\"\0*\0locked\";N;s:15:\"\0*\0versionCount\";i:9;s:25:\"\0*\0__dataVersionTimestamp\";i:1613671508;s:12:\"\0*\0_fulldump\";b:1;s:24:\"____pimcore_cache_item__\";s:10:\"document_4\";}',0,1613673490,1614278290),('thumb_10__44e019109f3d4ab9909486d681c9258d','image-optimize-queue','image-thumbnails/images/image-thumb__10__pimcore-system-treepreview/jeans3.jpg',0,1613311170,1613915970),('thumb_11__1d6393cd7c71d8e1fbbb40b46691e5fb','image-optimize-queue','image-thumbnails/images/image-thumb__11__pimcore-system-treepreview/m.jpg',0,1613311170,1613915970),('thumb_12__bbb7f686d718135884b4cea7f9be4405','image-optimize-queue','image-thumbnails/images/image-thumb__12__pimcore-system-treepreview/shirt3.jpg',0,1613311171,1613915971),('thumb_13__55b8d2b59d2dd7ff9539e56fe0422e4c','image-optimize-queue','image-thumbnails/images/image-thumb__13__pimcore-system-treepreview/shirt1.jpg',0,1613311172,1613915972),('thumb_13__ba901165dbfb226b24154c584cb8ce93','image-optimize-queue','image-thumbnails/images/image-thumb__13__auto_181d62b09a3b1ffd4b77a13252b50cc3/shirt1.png',0,1613312809,1613917609),('thumb_14__01f023880e824074cabf0cee598077a6','image-optimize-queue','image-thumbnails/images/image-thumb__14__auto_181d62b09a3b1ffd4b77a13252b50cc3/shirt2.png',0,1613312813,1613917613),('thumb_14__e4bd0da3320de5e36148c255074cbb05','image-optimize-queue','image-thumbnails/images/image-thumb__14__pimcore-system-treepreview/shirt2.jpg',0,1613311172,1613915972),('thumb_15__e60be159fabf8add698d0652862f8e66','image-optimize-queue','image-thumbnails/images/image-thumb__15__pimcore-system-treepreview/shirt4.jpg',0,1613311173,1613915973),('thumb_17__6b114a8785b63382c4ef222e2ce67170','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__17__pimcore-system-treepreview/a1.jpg',0,1613312660,1613917460),('thumb_17__e4b851bf251922b8d13fb0b338d04a56','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__17__auto_6eff904a1a9a57680d726da3d5459ac7/a1.png',0,1613312661,1613917461),('thumb_18__7e1ffa7856be4db0675e42afb159dc2d','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__18__auto_6eff904a1a9a57680d726da3d5459ac7/a2.png',0,1613312703,1613917503),('thumb_18__ac414e5134fb3bdb456451a2387c41ec','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__18__pimcore-system-treepreview/a2@2x.jpg',0,1613312714,1613917514),('thumb_18__bc3aba0f7385ddf2db274c84a38fff17','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__18__pimcore-system-treepreview/a2.jpg',0,1613312702,1613917502),('thumb_19__678f3ceb3e7bdad48d9952f6a053e130','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__19__auto_3ef8876b2f8995466d8c2976f6a113ae_auto_80c34da7f971077700d0c6d176cd7764/a1_1.png',0,1613374053,1613978853),('thumb_19__705fe7ef6c5296b5a4431041f0804f2d','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__19__auto_90657386b8eaff5ca795f8707603c6ac_auto_c9d0f7f12297782f917545f91d0b0c25/a1_1.png',0,1613374051,1613978851),('thumb_19__a764573503e378d15e11276c66baf05b','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__19__auto_90657386b8eaff5ca795f8707603c6ac/a1_1.png',0,1613373951,1613978751),('thumb_19__f141ec71501177dc65e2ceadfc93c311','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__19__pimcore-system-treepreview/a1_1.jpg',0,1613373946,1613978746),('thumb_19__faab715e0a1923e43ea87a3c97abb31a','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__19__auto_5ea23c4de37f60c1719abbd4be416de7/a1_1.png',0,1613374042,1613978842),('thumb_21__8d5b5d53955648cc72aa058b92fb0996','image-optimize-queue','image-thumbnails/_default_upload_bucket/image-thumb__21__pimcore-system-treepreview/a1_2.jpg',0,1613673429,1614278229),('thumb_3__d5f99aa8239cd0cd9942a10cd186183e','image-optimize-queue','image-thumbnails/images/image-thumb__3__pimcore-system-treepreview/a1.jpg',0,1613311167,1613915967),('thumb_4__af8e0834fd381a75175ebfbb229ecd67','image-optimize-queue','image-thumbnails/images/image-thumb__4__pimcore-system-treepreview/a9.jpg',0,1613311166,1613915966),('thumb_5__ad3470a4cd5b7bbf54c15920936c9935','image-optimize-queue','image-thumbnails/images/image-thumb__5__pimcore-system-treepreview/a2.jpg',0,1613311167,1613915967),('thumb_6__0d8cc0ff00c673eca1b7943d8948b694','image-optimize-queue','image-thumbnails/images/image-thumb__6__pimcore-system-treepreview/a10.jpg',0,1613311167,1613915967),('thumb_7__448d2ac875790b5e6165d7a5a592b754','image-optimize-queue','image-thumbnails/images/image-thumb__7__pimcore-system-treepreview/jeans1.jpg',0,1613311168,1613915968),('thumb_8__4364bbef8307599b60026e1f251f5b3c','image-optimize-queue','image-thumbnails/images/image-thumb__8__pimcore-system-treepreview/jeans2.jpg',0,1613311169,1613915969),('thumb_9__052d76b57a106f4fd65a7ec11067d2c5','image-optimize-queue','image-thumbnails/images/image-thumb__9__pimcore-system-treepreview/jeans4.jpg',0,1613311169,1613915969);
/*!40000 ALTER TABLE `tmp_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_events`
--

DROP TABLE IF EXISTS `tracking_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(190) DEFAULT NULL,
  `action` varchar(190) DEFAULT NULL,
  `label` varchar(190) DEFAULT NULL,
  `data` varchar(190) DEFAULT NULL,
  `timestamp` int unsigned DEFAULT NULL,
  `year` int unsigned DEFAULT NULL,
  `month` int unsigned DEFAULT NULL,
  `day` int unsigned DEFAULT NULL,
  `dayOfWeek` int unsigned DEFAULT NULL,
  `dayOfYear` int unsigned DEFAULT NULL,
  `weekOfYear` int unsigned DEFAULT NULL,
  `hour` int unsigned DEFAULT NULL,
  `minute` int unsigned DEFAULT NULL,
  `second` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `year` (`year`),
  KEY `month` (`month`),
  KEY `day` (`day`),
  KEY `dayOfWeek` (`dayOfWeek`),
  KEY `dayOfYear` (`dayOfYear`),
  KEY `weekOfYear` (`weekOfYear`),
  KEY `hour` (`hour`),
  KEY `minute` (`minute`),
  KEY `second` (`second`),
  KEY `category` (`category`),
  KEY `action` (`action`),
  KEY `label` (`label`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_events`
--

LOCK TABLES `tracking_events` WRITE;
/*!40000 ALTER TABLE `tracking_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_admin`
--

DROP TABLE IF EXISTS `translations_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations_admin` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_admin`
--

LOCK TABLES `translations_admin` WRITE;
/*!40000 ALTER TABLE `translations_admin` DISABLE KEYS */;
INSERT INTO `translations_admin` VALUES ('extImg','en','',1613373463,1613373463),('extImg','es','',1613373463,1613373463),('extImg','fa','',1613373463,1613373463),('extImg','fr','',1613373463,1613373463),('extImg','hu','',1613373463,1613373463),('extImg','it','',1613373463,1613373463),('extImg','ja','',1613373463,1613373463),('extImg','nl','',1613373463,1613373463),('extImg','pl','',1613373463,1613373463),('extImg','pt_BR','',1613373463,1613373463),('extImg','ru','',1613373463,1613373463),('extImg','sk','',1613373463,1613373463),('extImg','sv','',1613373463,1613373463),('extImg','sv_FI','',1613373463,1613373463),('extImg','th','',1613373463,1613373463),('extImg','tr','',1613373463,1613373463),('extImg','uk','',1613373463,1613373463),('extImg','zh_Hans','',1613373463,1613373463),('fabric','cs','',1613053293,1613053293),('fabric','de','',1613053293,1613053293),('fabric','en','',1613053293,1613053293),('fabric','es','',1613053293,1613053293),('fabric','fa','',1613053293,1613053293),('fabric','fr','',1613053293,1613053293),('fabric','hu','',1613053293,1613053293),('fabric','it','',1613053293,1613053293),('fabric','ja','',1613053293,1613053293),('fabric','nl','',1613053293,1613053293),('fabric','pl','',1613053293,1613053293),('fabric','pt_BR','',1613053293,1613053293),('fabric','ru','',1613053293,1613053293),('fabric','sk','',1613053293,1613053293),('fabric','sv','',1613053293,1613053293),('fabric','sv_FI','',1613053293,1613053293),('fabric','th','',1613053293,1613053293),('fabric','tr','',1613053293,1613053293),('fabric','uk','',1613053293,1613053293),('fabric','zh_Hans','',1613053293,1613053293),('false','cs','',1613053573,1613053573),('false','de','',1613053573,1613053573),('false','en','',1613053573,1613053573),('false','es','',1613053573,1613053573),('false','fa','',1613053573,1613053573),('false','fr','',1613053573,1613053573),('false','hu','',1613053573,1613053573),('false','it','',1613053573,1613053573),('false','ja','',1613053573,1613053573),('false','nl','',1613053573,1613053573),('false','pl','',1613053573,1613053573),('false','pt_BR','',1613053573,1613053573),('false','ru','',1613053573,1613053573),('false','sk','',1613053573,1613053573),('false','sv','',1613053573,1613053573),('false','sv_FI','',1613053573,1613053573),('false','th','',1613053573,1613053573),('false','tr','',1613053573,1613053573),('false','uk','',1613053573,1613053573),('false','zh_Hans','',1613053573,1613053573),('female','cs','',1613376929,1613376929),('female','de','',1613376929,1613376929),('female','en','',1613376929,1613376929),('female','es','',1613376929,1613376929),('female','fa','',1613376929,1613376929),('female','fr','',1613376929,1613376929),('female','hu','',1613376929,1613376929),('female','it','',1613376929,1613376929),('female','ja','',1613376929,1613376929),('female','nl','',1613376929,1613376929),('female','pl','',1613376929,1613376929),('female','pt_BR','',1613376929,1613376929),('female','ru','',1613376929,1613376929),('female','sk','',1613376929,1613376929),('female','sv','',1613376929,1613376929),('female','sv_FI','',1613376929,1613376929),('female','th','',1613376929,1613376929),('female','tr','',1613376929,1613376929),('female','uk','',1613376929,1613376929),('female','zh_Hans','',1613376929,1613376929),('fieldsCollection','cs','',1613378587,1613378587),('fieldsCollection','de','',1613378587,1613378587),('fieldsCollection','en','',1613378587,1613378587),('fieldsCollection','es','',1613378587,1613378587),('fieldsCollection','fa','',1613378587,1613378587),('fieldsCollection','fr','',1613378587,1613378587),('fieldsCollection','hu','',1613378587,1613378587),('fieldsCollection','it','',1613378587,1613378587),('fieldsCollection','ja','',1613378587,1613378587),('fieldsCollection','nl','',1613378587,1613378587),('fieldsCollection','pl','',1613378587,1613378587),('fieldsCollection','pt_BR','',1613378587,1613378587),('fieldsCollection','ru','',1613378587,1613378587),('fieldsCollection','sk','',1613378587,1613378587),('fieldsCollection','sv','',1613378587,1613378587),('fieldsCollection','sv_FI','',1613378587,1613378587),('fieldsCollection','th','',1613378587,1613378587),('fieldsCollection','tr','',1613378587,1613378587),('fieldsCollection','uk','',1613378587,1613378587),('fieldsCollection','zh_Hans','',1613378587,1613378587),('first','cs','',1613379403,1613379403),('first','de','',1613379403,1613379403),('first','en','',1613379403,1613379403),('first','es','',1613379403,1613379403),('first','fa','',1613379403,1613379403),('first','fr','',1613379403,1613379403),('first','hu','',1613379403,1613379403),('first','it','',1613379403,1613379403),('first','ja','',1613379403,1613379403),('first','nl','',1613379403,1613379403),('first','pl','',1613379403,1613379403),('first','pt_BR','',1613379403,1613379403),('first','ru','',1613379403,1613379403),('first','sk','',1613379403,1613379403),('first','sv','',1613379403,1613379403),('first','sv_FI','',1613379403,1613379403),('first','th','',1613379403,1613379403),('first','tr','',1613379403,1613379403),('first','uk','',1613379403,1613379403),('first','zh_Hans','',1613379403,1613379403),('gallery','cs','',1613312788,1613312788),('gallery','de','',1613312788,1613312788),('gallery','en','',1613312788,1613312788),('gallery','es','',1613312788,1613312788),('gallery','fa','',1613312788,1613312788),('gallery','fr','',1613312788,1613312788),('gallery','hu','',1613312788,1613312788),('gallery','it','',1613312788,1613312788),('gallery','ja','',1613312788,1613312788),('gallery','nl','',1613312788,1613312788),('gallery','pl','',1613312788,1613312788),('gallery','pt_BR','',1613312788,1613312788),('gallery','ru','',1613312788,1613312788),('gallery','sk','',1613312788,1613312788),('gallery','sv','',1613312788,1613312788),('gallery','sv_FI','',1613312788,1613312788),('gallery','th','',1613312788,1613312788),('gallery','tr','',1613312788,1613312788),('gallery','uk','',1613312788,1613312788),('gallery','zh_Hans','',1613312788,1613312788),('geo Bounds','cs','',1613376478,1613376478),('geo Bounds','de','',1613376478,1613376478),('geo Bounds','en','',1613376478,1613376478),('geo Bounds','es','',1613376478,1613376478),('geo Bounds','fa','',1613376478,1613376478),('geo Bounds','fr','',1613376478,1613376478),('geo Bounds','hu','',1613376478,1613376478),('geo Bounds','it','',1613376478,1613376478),('geo Bounds','ja','',1613376478,1613376478),('geo Bounds','nl','',1613376478,1613376478),('geo Bounds','pl','',1613376478,1613376478),('geo Bounds','pt_BR','',1613376478,1613376478),('geo Bounds','ru','',1613376478,1613376478),('geo Bounds','sk','',1613376478,1613376478),('geo Bounds','sv','',1613376478,1613376478),('geo Bounds','sv_FI','',1613376478,1613376478),('geo Bounds','th','',1613376478,1613376478),('geo Bounds','tr','',1613376478,1613376478),('geo Bounds','uk','',1613376478,1613376478),('geo Bounds','zh_Hans','',1613376478,1613376478),('geoPlygon','cs','',1613376779,1613376779),('geoPlygon','de','',1613376779,1613376779),('geoPlygon','en','',1613376779,1613376779),('geoPlygon','es','',1613376779,1613376779),('geoPlygon','fa','',1613376779,1613376779),('geoPlygon','fr','',1613376779,1613376779),('geoPlygon','hu','',1613376779,1613376779),('geoPlygon','it','',1613376779,1613376779),('geoPlygon','ja','',1613376779,1613376779),('geoPlygon','nl','',1613376779,1613376779),('geoPlygon','pl','',1613376779,1613376779),('geoPlygon','pt_BR','',1613376779,1613376779),('geoPlygon','ru','',1613376779,1613376779),('geoPlygon','sk','',1613376779,1613376779),('geoPlygon','sv','',1613376779,1613376779),('geoPlygon','sv_FI','',1613376779,1613376779),('geoPlygon','th','',1613376779,1613376779),('geoPlygon','tr','',1613376779,1613376779),('geoPlygon','uk','',1613376779,1613376779),('geoPlygon','zh_Hans','',1613376779,1613376779),('geoPoint','cs','',1613376417,1613376417),('geoPoint','de','',1613376417,1613376417),('geoPoint','en','',1613376417,1613376417),('geoPoint','es','',1613376417,1613376417),('geoPoint','fa','',1613376417,1613376417),('geoPoint','fr','',1613376417,1613376417),('geoPoint','hu','',1613376417,1613376417),('geoPoint','it','',1613376417,1613376417),('geoPoint','ja','',1613376417,1613376417),('geoPoint','nl','',1613376417,1613376417),('geoPoint','pl','',1613376417,1613376417),('geoPoint','pt_BR','',1613376417,1613376417),('geoPoint','ru','',1613376417,1613376417),('geoPoint','sk','',1613376417,1613376417),('geoPoint','sv','',1613376417,1613376417),('geoPoint','sv_FI','',1613376417,1613376417),('geoPoint','th','',1613376417,1613376417),('geoPoint','tr','',1613376417,1613376417),('geoPoint','uk','',1613376417,1613376417),('geoPoint','zh_Hans','',1613376417,1613376417),('gffghfh','cs','',1613116664,1613116664),('gffghfh','de','',1613116664,1613116664),('gffghfh','en','',1613116664,1613116664),('gffghfh','es','',1613116664,1613116664),('gffghfh','fa','',1613116664,1613116664),('gffghfh','fr','',1613116664,1613116664),('gffghfh','hu','',1613116664,1613116664),('gffghfh','it','',1613116664,1613116664),('gffghfh','ja','',1613116664,1613116664),('gffghfh','nl','',1613116664,1613116664),('gffghfh','pl','',1613116664,1613116664),('gffghfh','pt_BR','',1613116664,1613116664),('gffghfh','ru','',1613116664,1613116664),('gffghfh','sk','',1613116664,1613116664),('gffghfh','sv','',1613116664,1613116664),('gffghfh','sv_FI','',1613116664,1613116664),('gffghfh','th','',1613116664,1613116664),('gffghfh','tr','',1613116664,1613116664),('gffghfh','uk','',1613116664,1613116664),('gffghfh','zh_Hans','',1613116664,1613116664),('imgAdv','cs','',1613373765,1613373765),('imgAdv','de','',1613373765,1613373765),('imgAdv','en','',1613373765,1613373765),('imgAdv','es','',1613373765,1613373765),('imgAdv','fa','',1613373765,1613373765),('imgAdv','fr','',1613373765,1613373765),('imgAdv','hu','',1613373765,1613373765),('imgAdv','it','',1613373765,1613373765),('imgAdv','ja','',1613373765,1613373765),('imgAdv','nl','',1613373765,1613373765),('imgAdv','pl','',1613373765,1613373765),('imgAdv','pt_BR','',1613373765,1613373765),('imgAdv','ru','',1613373765,1613373765),('imgAdv','sk','',1613373765,1613373765),('imgAdv','sv','',1613373765,1613373765),('imgAdv','sv_FI','',1613373765,1613373765),('imgAdv','th','',1613373765,1613373765),('imgAdv','tr','',1613373765,1613373765),('imgAdv','uk','',1613373765,1613373765),('imgAdv','zh_Hans','',1613373765,1613373765),('import','cs','',1613650129,1613650129),('import','de','',1613650129,1613650129),('import','en','',1613650129,1613650129),('import','es','',1613650129,1613650129),('import','fa','',1613650129,1613650129),('import','fr','',1613650129,1613650129),('import','hu','',1613650129,1613650129),('import','it','',1613650129,1613650129),('import','ja','',1613650129,1613650129),('import','nl','',1613650129,1613650129),('import','pl','',1613650129,1613650129),('import','pt_BR','',1613650129,1613650129),('import','ru','',1613650129,1613650129),('import','sk','',1613650129,1613650129),('import','sv','',1613650129,1613650129),('import','sv_FI','',1613650129,1613650129),('import','th','',1613650129,1613650129),('import','tr','',1613650129,1613650129),('import','uk','',1613650129,1613650129),('import','zh_Hans','',1613650129,1613650129),('key1','cs','',1613379433,1613379433),('key1','de','',1613379433,1613379433),('key1','en','',1613379433,1613379433),('key1','es','',1613379433,1613379433),('key1','fa','',1613379433,1613379433),('key1','fr','',1613379433,1613379433),('key1','hu','',1613379433,1613379433),('key1','it','',1613379433,1613379433),('key1','ja','',1613379433,1613379433),('key1','nl','',1613379433,1613379433),('key1','pl','',1613379433,1613379433),('key1','pt_BR','',1613379433,1613379433),('key1','ru','',1613379433,1613379433),('key1','sk','',1613379433,1613379433),('key1','sv','',1613379433,1613379433),('key1','sv_FI','',1613379433,1613379433),('key1','th','',1613379433,1613379433),('key1','tr','',1613379433,1613379433),('key1','uk','',1613379433,1613379433),('key1','zh_Hans','',1613379433,1613379433),('l','cs','',1613062907,1613062907),('l','de','',1613062907,1613062907),('l','en','',1613062907,1613062907),('l','es','',1613062907,1613062907),('l','fa','',1613062907,1613062907),('l','fr','',1613062907,1613062907),('l','hu','',1613062907,1613062907),('l','it','',1613062907,1613062907),('l','ja','',1613062907,1613062907),('l','nl','',1613062907,1613062907),('l','pl','',1613062907,1613062907),('l','pt_BR','',1613062907,1613062907),('l','ru','',1613062907,1613062907),('l','sk','',1613062907,1613062907),('l','sv','',1613062907,1613062907),('l','sv_FI','',1613062907,1613062907),('l','th','',1613062907,1613062907),('l','tr','',1613062907,1613062907),('l','uk','',1613062907,1613062907),('l','zh_Hans','',1613062907,1613062907),('lang','cs','',1613309829,1613309829),('lang','de','',1613309829,1613309829),('lang','en','',1613309829,1613309829),('lang','es','',1613309829,1613309829),('lang','fa','',1613309829,1613309829),('lang','fr','',1613309829,1613309829),('lang','hu','',1613309829,1613309829),('lang','it','',1613309829,1613309829),('lang','ja','',1613309829,1613309829),('lang','nl','',1613309829,1613309829),('lang','pl','',1613309829,1613309829),('lang','pt_BR','',1613309829,1613309829),('lang','ru','',1613309829,1613309829),('lang','sk','',1613309829,1613309829),('lang','sv','',1613309829,1613309829),('lang','sv_FI','',1613309829,1613309829),('lang','th','',1613309829,1613309829),('lang','tr','',1613309829,1613309829),('lang','uk','',1613309829,1613309829),('lang','zh_Hans','',1613309829,1613309829),('male','cs','',1613376929,1613376929),('male','de','',1613376929,1613376929),('male','en','',1613376929,1613376929),('male','es','',1613376929,1613376929),('male','fa','',1613376929,1613376929),('male','fr','',1613376929,1613376929),('male','hu','',1613376929,1613376929),('male','it','',1613376929,1613376929),('male','ja','',1613376929,1613376929),('male','nl','',1613376929,1613376929),('male','pl','',1613376929,1613376929),('male','pt_BR','',1613376929,1613376929),('male','ru','',1613376929,1613376929),('male','sk','',1613376929,1613376929),('male','sv','',1613376929,1613376929),('male','sv_FI','',1613376929,1613376929),('male','th','',1613376929,1613376929),('male','tr','',1613376929,1613376929),('male','uk','',1613376929,1613376929),('male','zh_Hans','',1613376929,1613376929),('multi','cs','',1613372112,1613372112),('multi','de','',1613372112,1613372112),('multi','en','',1613372112,1613372112),('multi','es','',1613372112,1613372112),('multi','fa','',1613372112,1613372112),('multi','fr','',1613372112,1613372112),('multi','hu','',1613372112,1613372112),('multi','it','',1613372112,1613372112),('multi','ja','',1613372112,1613372112),('multi','nl','',1613372112,1613372112),('multi','pl','',1613372112,1613372112),('multi','pt_BR','',1613372112,1613372112),('multi','ru','',1613372112,1613372112),('multi','sk','',1613372112,1613372112),('multi','sv','',1613372112,1613372112),('multi','sv_FI','',1613372112,1613372112),('multi','th','',1613372112,1613372112),('multi','tr','',1613372112,1613372112),('multi','uk','',1613372112,1613372112),('multi','zh_Hans','',1613372112,1613372112),('myCollection','cs','',1613379133,1613379133),('myCollection','de','',1613379133,1613379133),('myCollection','en','',1613379133,1613379133),('myCollection','es','',1613379133,1613379133),('myCollection','fa','',1613379133,1613379133),('myCollection','fr','',1613379133,1613379133),('myCollection','hu','',1613379133,1613379133),('myCollection','it','',1613379133,1613379133),('myCollection','ja','',1613379133,1613379133),('myCollection','nl','',1613379133,1613379133),('myCollection','pl','',1613379133,1613379133),('myCollection','pt_BR','',1613379133,1613379133),('myCollection','ru','',1613379133,1613379133),('myCollection','sk','',1613379133,1613379133),('myCollection','sv','',1613379133,1613379133),('myCollection','sv_FI','',1613379133,1613379133),('myCollection','th','',1613379133,1613379133),('myCollection','tr','',1613379133,1613379133),('myCollection','uk','',1613379133,1613379133),('myCollection','zh_Hans','',1613379133,1613379133),('newsletterActive','cs','',1613379493,1613379493),('newsletterActive','de','',1613379493,1613379493),('newsletterActive','en','',1613379493,1613379493),('newsletterActive','es','',1613379493,1613379493),('newsletterActive','fa','',1613379493,1613379493),('newsletterActive','fr','',1613379493,1613379493),('newsletterActive','hu','',1613379493,1613379493),('newsletterActive','it','',1613379493,1613379493),('newsletterActive','ja','',1613379493,1613379493),('newsletterActive','nl','',1613379493,1613379493),('newsletterActive','pl','',1613379493,1613379493),('newsletterActive','pt_BR','',1613379493,1613379493),('newsletterActive','ru','',1613379493,1613379493),('newsletterActive','sk','',1613379493,1613379493),('newsletterActive','sv','',1613379493,1613379493),('newsletterActive','sv_FI','',1613379493,1613379493),('newsletterActive','th','',1613379493,1613379493),('newsletterActive','tr','',1613379493,1613379493),('newsletterActive','uk','',1613379493,1613379493),('newsletterActive','zh_Hans','',1613379493,1613379493),('newsletterConfirmed','cs','',1613379493,1613379493),('newsletterConfirmed','de','',1613379493,1613379493),('newsletterConfirmed','en','',1613379493,1613379493),('newsletterConfirmed','es','',1613379493,1613379493),('newsletterConfirmed','fa','',1613379493,1613379493),('newsletterConfirmed','fr','',1613379493,1613379493),('newsletterConfirmed','hu','',1613379493,1613379493),('newsletterConfirmed','it','',1613379493,1613379493),('newsletterConfirmed','ja','',1613379493,1613379493),('newsletterConfirmed','nl','',1613379493,1613379493),('newsletterConfirmed','pl','',1613379493,1613379493),('newsletterConfirmed','pt_BR','',1613379493,1613379493),('newsletterConfirmed','ru','',1613379493,1613379493),('newsletterConfirmed','sk','',1613379493,1613379493),('newsletterConfirmed','sv','',1613379493,1613379493),('newsletterConfirmed','sv_FI','',1613379493,1613379493),('newsletterConfirmed','th','',1613379493,1613379493),('newsletterConfirmed','tr','',1613379493,1613379493),('newsletterConfirmed','uk','',1613379493,1613379493),('newsletterConfirmed','zh_Hans','',1613379493,1613379493),('null','cs','',1613053573,1613053573),('null','de','',1613053573,1613053573),('null','en','',1613053573,1613053573),('null','es','',1613053573,1613053573),('null','fa','',1613053573,1613053573),('null','fr','',1613053573,1613053573),('null','hu','',1613053573,1613053573),('null','it','',1613053573,1613053573),('null','ja','',1613053573,1613053573),('null','nl','',1613053573,1613053573),('null','pl','',1613053573,1613053573),('null','pt_BR','',1613053573,1613053573),('null','ru','',1613053573,1613053573),('null','sk','',1613053573,1613053573),('null','sv','',1613053573,1613053573),('null','sv_FI','',1613053573,1613053573),('null','th','',1613053573,1613053573),('null','tr','',1613053573,1613053573),('null','uk','',1613053573,1613053573),('null','zh_Hans','',1613053573,1613053573),('object_add_dialog_custom_text.brand','cs','',1613119857,1613119857),('object_add_dialog_custom_text.brand','de','',1613119857,1613119857),('object_add_dialog_custom_text.brand','en','',1613119857,1613119857),('object_add_dialog_custom_text.brand','es','',1613119857,1613119857),('object_add_dialog_custom_text.brand','fa','',1613119857,1613119857),('object_add_dialog_custom_text.brand','fr','',1613119857,1613119857),('object_add_dialog_custom_text.brand','hu','',1613119857,1613119857),('object_add_dialog_custom_text.brand','it','',1613119857,1613119857),('object_add_dialog_custom_text.brand','ja','',1613119857,1613119857),('object_add_dialog_custom_text.brand','nl','',1613119857,1613119857),('object_add_dialog_custom_text.brand','pl','',1613119857,1613119857),('object_add_dialog_custom_text.brand','pt_BR','',1613119857,1613119857),('object_add_dialog_custom_text.brand','ru','',1613119857,1613119857),('object_add_dialog_custom_text.brand','sk','',1613119857,1613119857),('object_add_dialog_custom_text.brand','sv','',1613119857,1613119857),('object_add_dialog_custom_text.brand','sv_FI','',1613119857,1613119857),('object_add_dialog_custom_text.brand','th','',1613119857,1613119857),('object_add_dialog_custom_text.brand','tr','',1613119857,1613119857),('object_add_dialog_custom_text.brand','uk','',1613119857,1613119857),('object_add_dialog_custom_text.brand','zh_Hans','',1613119857,1613119857),('object_add_dialog_custom_text.category','cs','',1613053843,1613053843),('object_add_dialog_custom_text.category','de','',1613053843,1613053843),('object_add_dialog_custom_text.category','en','',1613053843,1613053843),('object_add_dialog_custom_text.category','es','',1613053843,1613053843),('object_add_dialog_custom_text.category','fa','',1613053843,1613053843),('object_add_dialog_custom_text.category','fr','',1613053843,1613053843),('object_add_dialog_custom_text.category','hu','',1613053843,1613053843),('object_add_dialog_custom_text.category','it','',1613053843,1613053843),('object_add_dialog_custom_text.category','ja','',1613053843,1613053843),('object_add_dialog_custom_text.category','nl','',1613053843,1613053843),('object_add_dialog_custom_text.category','pl','',1613053843,1613053843),('object_add_dialog_custom_text.category','pt_BR','',1613053843,1613053843),('object_add_dialog_custom_text.category','ru','',1613053843,1613053843),('object_add_dialog_custom_text.category','sk','',1613053843,1613053843),('object_add_dialog_custom_text.category','sv','',1613053843,1613053843),('object_add_dialog_custom_text.category','sv_FI','',1613053843,1613053843),('object_add_dialog_custom_text.category','th','',1613053843,1613053843),('object_add_dialog_custom_text.category','tr','',1613053843,1613053843),('object_add_dialog_custom_text.category','uk','',1613053843,1613053843),('object_add_dialog_custom_text.category','zh_Hans','',1613053843,1613053843),('object_add_dialog_custom_text.fabric','cs','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','de','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','en','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','es','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','fa','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','fr','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','hu','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','it','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','ja','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','nl','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','pl','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','pt_BR','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','ru','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','sk','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','sv','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','sv_FI','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','th','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','tr','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','uk','',1613119196,1613119196),('object_add_dialog_custom_text.fabric','zh_Hans','',1613119196,1613119196),('object_add_dialog_custom_text.import','cs','',1613650572,1613650572),('object_add_dialog_custom_text.import','de','',1613650572,1613650572),('object_add_dialog_custom_text.import','en','',1613650572,1613650572),('object_add_dialog_custom_text.import','es','',1613650572,1613650572),('object_add_dialog_custom_text.import','fa','',1613650572,1613650572),('object_add_dialog_custom_text.import','fr','',1613650572,1613650572),('object_add_dialog_custom_text.import','hu','',1613650572,1613650572),('object_add_dialog_custom_text.import','it','',1613650572,1613650572),('object_add_dialog_custom_text.import','ja','',1613650572,1613650572),('object_add_dialog_custom_text.import','nl','',1613650572,1613650572),('object_add_dialog_custom_text.import','pl','',1613650572,1613650572),('object_add_dialog_custom_text.import','pt_BR','',1613650572,1613650572),('object_add_dialog_custom_text.import','ru','',1613650572,1613650572),('object_add_dialog_custom_text.import','sk','',1613650572,1613650572),('object_add_dialog_custom_text.import','sv','',1613650572,1613650572),('object_add_dialog_custom_text.import','sv_FI','',1613650572,1613650572),('object_add_dialog_custom_text.import','th','',1613650572,1613650572),('object_add_dialog_custom_text.import','tr','',1613650572,1613650572),('object_add_dialog_custom_text.import','uk','',1613650572,1613650572),('object_add_dialog_custom_text.import','zh_Hans','',1613650572,1613650572),('object_add_dialog_custom_text.product','cs','',1613061558,1613061558),('object_add_dialog_custom_text.product','de','',1613061558,1613061558),('object_add_dialog_custom_text.product','en','',1613061558,1613061558),('object_add_dialog_custom_text.product','es','',1613061558,1613061558),('object_add_dialog_custom_text.product','fa','',1613061558,1613061558),('object_add_dialog_custom_text.product','fr','',1613061558,1613061558),('object_add_dialog_custom_text.product','hu','',1613061558,1613061558),('object_add_dialog_custom_text.product','it','',1613061558,1613061558),('object_add_dialog_custom_text.product','ja','',1613061558,1613061558),('object_add_dialog_custom_text.product','nl','',1613061558,1613061558),('object_add_dialog_custom_text.product','pl','',1613061558,1613061558),('object_add_dialog_custom_text.product','pt_BR','',1613061558,1613061558),('object_add_dialog_custom_text.product','ru','',1613061558,1613061558),('object_add_dialog_custom_text.product','sk','',1613061558,1613061558),('object_add_dialog_custom_text.product','sv','',1613061558,1613061558),('object_add_dialog_custom_text.product','sv_FI','',1613061558,1613061558),('object_add_dialog_custom_text.product','th','',1613061558,1613061558),('object_add_dialog_custom_text.product','tr','',1613061558,1613061558),('object_add_dialog_custom_text.product','uk','',1613061558,1613061558),('object_add_dialog_custom_text.product','zh_Hans','',1613061558,1613061558),('object_add_dialog_custom_text.test','cs','',1613309439,1613309439),('object_add_dialog_custom_text.test','de','',1613309439,1613309439),('object_add_dialog_custom_text.test','en','',1613309439,1613309439),('object_add_dialog_custom_text.test','es','',1613309439,1613309439),('object_add_dialog_custom_text.test','fa','',1613309439,1613309439),('object_add_dialog_custom_text.test','fr','',1613309439,1613309439),('object_add_dialog_custom_text.test','hu','',1613309439,1613309439),('object_add_dialog_custom_text.test','it','',1613309439,1613309439),('object_add_dialog_custom_text.test','ja','',1613309439,1613309439),('object_add_dialog_custom_text.test','nl','',1613309439,1613309439),('object_add_dialog_custom_text.test','pl','',1613309439,1613309439),('object_add_dialog_custom_text.test','pt_BR','',1613309439,1613309439),('object_add_dialog_custom_text.test','ru','',1613309439,1613309439),('object_add_dialog_custom_text.test','sk','',1613309439,1613309439),('object_add_dialog_custom_text.test','sv','',1613309439,1613309439),('object_add_dialog_custom_text.test','sv_FI','',1613309439,1613309439),('object_add_dialog_custom_text.test','th','',1613309439,1613309439),('object_add_dialog_custom_text.test','tr','',1613309439,1613309439),('object_add_dialog_custom_text.test','uk','',1613309439,1613309439),('object_add_dialog_custom_text.test','zh_Hans','',1613309439,1613309439),('object_add_dialog_custom_title.brand','cs','',1613119857,1613119857),('object_add_dialog_custom_title.brand','de','',1613119857,1613119857),('object_add_dialog_custom_title.brand','en','',1613119857,1613119857),('object_add_dialog_custom_title.brand','es','',1613119857,1613119857),('object_add_dialog_custom_title.brand','fa','',1613119857,1613119857),('object_add_dialog_custom_title.brand','fr','',1613119857,1613119857),('object_add_dialog_custom_title.brand','hu','',1613119857,1613119857),('object_add_dialog_custom_title.brand','it','',1613119857,1613119857),('object_add_dialog_custom_title.brand','ja','',1613119857,1613119857),('object_add_dialog_custom_title.brand','nl','',1613119857,1613119857),('object_add_dialog_custom_title.brand','pl','',1613119857,1613119857),('object_add_dialog_custom_title.brand','pt_BR','',1613119857,1613119857),('object_add_dialog_custom_title.brand','ru','',1613119857,1613119857),('object_add_dialog_custom_title.brand','sk','',1613119857,1613119857),('object_add_dialog_custom_title.brand','sv','',1613119857,1613119857),('object_add_dialog_custom_title.brand','sv_FI','',1613119857,1613119857),('object_add_dialog_custom_title.brand','th','',1613119857,1613119857),('object_add_dialog_custom_title.brand','tr','',1613119857,1613119857),('object_add_dialog_custom_title.brand','uk','',1613119857,1613119857),('object_add_dialog_custom_title.brand','zh_Hans','',1613119857,1613119857),('object_add_dialog_custom_title.category','cs','',1613053843,1613053843),('object_add_dialog_custom_title.category','de','',1613053843,1613053843),('object_add_dialog_custom_title.category','en','',1613053843,1613053843),('object_add_dialog_custom_title.category','es','',1613053843,1613053843),('object_add_dialog_custom_title.category','fa','',1613053843,1613053843),('object_add_dialog_custom_title.category','fr','',1613053843,1613053843),('object_add_dialog_custom_title.category','hu','',1613053843,1613053843),('object_add_dialog_custom_title.category','it','',1613053843,1613053843),('object_add_dialog_custom_title.category','ja','',1613053843,1613053843),('object_add_dialog_custom_title.category','nl','',1613053843,1613053843),('object_add_dialog_custom_title.category','pl','',1613053843,1613053843),('object_add_dialog_custom_title.category','pt_BR','',1613053843,1613053843),('object_add_dialog_custom_title.category','ru','',1613053843,1613053843),('object_add_dialog_custom_title.category','sk','',1613053843,1613053843),('object_add_dialog_custom_title.category','sv','',1613053843,1613053843),('object_add_dialog_custom_title.category','sv_FI','',1613053843,1613053843),('object_add_dialog_custom_title.category','th','',1613053843,1613053843),('object_add_dialog_custom_title.category','tr','',1613053843,1613053843),('object_add_dialog_custom_title.category','uk','',1613053843,1613053843),('object_add_dialog_custom_title.category','zh_Hans','',1613053843,1613053843),('object_add_dialog_custom_title.fabric','cs','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','de','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','en','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','es','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','fa','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','fr','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','hu','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','it','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','ja','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','nl','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','pl','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','pt_BR','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','ru','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','sk','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','sv','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','sv_FI','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','th','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','tr','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','uk','',1613119196,1613119196),('object_add_dialog_custom_title.fabric','zh_Hans','',1613119196,1613119196),('object_add_dialog_custom_title.import','cs','',1613650573,1613650573),('object_add_dialog_custom_title.import','de','',1613650573,1613650573),('object_add_dialog_custom_title.import','en','',1613650573,1613650573),('object_add_dialog_custom_title.import','es','',1613650573,1613650573),('object_add_dialog_custom_title.import','fa','',1613650573,1613650573),('object_add_dialog_custom_title.import','fr','',1613650573,1613650573),('object_add_dialog_custom_title.import','hu','',1613650573,1613650573),('object_add_dialog_custom_title.import','it','',1613650573,1613650573),('object_add_dialog_custom_title.import','ja','',1613650573,1613650573),('object_add_dialog_custom_title.import','nl','',1613650573,1613650573),('object_add_dialog_custom_title.import','pl','',1613650573,1613650573),('object_add_dialog_custom_title.import','pt_BR','',1613650573,1613650573),('object_add_dialog_custom_title.import','ru','',1613650573,1613650573),('object_add_dialog_custom_title.import','sk','',1613650573,1613650573),('object_add_dialog_custom_title.import','sv','',1613650573,1613650573),('object_add_dialog_custom_title.import','sv_FI','',1613650573,1613650573),('object_add_dialog_custom_title.import','th','',1613650573,1613650573),('object_add_dialog_custom_title.import','tr','',1613650573,1613650573),('object_add_dialog_custom_title.import','uk','',1613650573,1613650573),('object_add_dialog_custom_title.import','zh_Hans','',1613650573,1613650573),('object_add_dialog_custom_title.product','cs','',1613061558,1613061558),('object_add_dialog_custom_title.product','de','',1613061558,1613061558),('object_add_dialog_custom_title.product','en','',1613061558,1613061558),('object_add_dialog_custom_title.product','es','',1613061558,1613061558),('object_add_dialog_custom_title.product','fa','',1613061558,1613061558),('object_add_dialog_custom_title.product','fr','',1613061558,1613061558),('object_add_dialog_custom_title.product','hu','',1613061558,1613061558),('object_add_dialog_custom_title.product','it','',1613061558,1613061558),('object_add_dialog_custom_title.product','ja','',1613061558,1613061558),('object_add_dialog_custom_title.product','nl','',1613061558,1613061558),('object_add_dialog_custom_title.product','pl','',1613061558,1613061558),('object_add_dialog_custom_title.product','pt_BR','',1613061558,1613061558),('object_add_dialog_custom_title.product','ru','',1613061558,1613061558),('object_add_dialog_custom_title.product','sk','',1613061558,1613061558),('object_add_dialog_custom_title.product','sv','',1613061558,1613061558),('object_add_dialog_custom_title.product','sv_FI','',1613061558,1613061558),('object_add_dialog_custom_title.product','th','',1613061558,1613061558),('object_add_dialog_custom_title.product','tr','',1613061558,1613061558),('object_add_dialog_custom_title.product','uk','',1613061558,1613061558),('object_add_dialog_custom_title.product','zh_Hans','',1613061558,1613061558),('object_add_dialog_custom_title.test','cs','',1613309439,1613309439),('object_add_dialog_custom_title.test','de','',1613309439,1613309439),('object_add_dialog_custom_title.test','en','',1613309439,1613309439),('object_add_dialog_custom_title.test','es','',1613309439,1613309439),('object_add_dialog_custom_title.test','fa','',1613309439,1613309439),('object_add_dialog_custom_title.test','fr','',1613309439,1613309439),('object_add_dialog_custom_title.test','hu','',1613309439,1613309439),('object_add_dialog_custom_title.test','it','',1613309439,1613309439),('object_add_dialog_custom_title.test','ja','',1613309439,1613309439),('object_add_dialog_custom_title.test','nl','',1613309439,1613309439),('object_add_dialog_custom_title.test','pl','',1613309439,1613309439),('object_add_dialog_custom_title.test','pt_BR','',1613309439,1613309439),('object_add_dialog_custom_title.test','ru','',1613309439,1613309439),('object_add_dialog_custom_title.test','sk','',1613309439,1613309439),('object_add_dialog_custom_title.test','sv','',1613309439,1613309439),('object_add_dialog_custom_title.test','sv_FI','',1613309439,1613309439),('object_add_dialog_custom_title.test','th','',1613309439,1613309439),('object_add_dialog_custom_title.test','tr','',1613309439,1613309439),('object_add_dialog_custom_title.test','uk','',1613309439,1613309439),('object_add_dialog_custom_title.test','zh_Hans','',1613309439,1613309439),('objectsMetadata_invalid_key','cs','',1613374284,1613374284),('objectsMetadata_invalid_key','de','',1613374284,1613374284),('objectsMetadata_invalid_key','en','',1613374284,1613374284),('objectsMetadata_invalid_key','es','',1613374284,1613374284),('objectsMetadata_invalid_key','fa','',1613374284,1613374284),('objectsMetadata_invalid_key','fr','',1613374284,1613374284),('objectsMetadata_invalid_key','hu','',1613374284,1613374284),('objectsMetadata_invalid_key','it','',1613374284,1613374284),('objectsMetadata_invalid_key','ja','',1613374284,1613374284),('objectsMetadata_invalid_key','nl','',1613374284,1613374284),('objectsMetadata_invalid_key','pl','',1613374284,1613374284),('objectsMetadata_invalid_key','pt_BR','',1613374284,1613374284),('objectsMetadata_invalid_key','ru','',1613374284,1613374284),('objectsMetadata_invalid_key','sk','',1613374284,1613374284),('objectsMetadata_invalid_key','sv','',1613374284,1613374284),('objectsMetadata_invalid_key','sv_FI','',1613374284,1613374284),('objectsMetadata_invalid_key','th','',1613374284,1613374284),('objectsMetadata_invalid_key','tr','',1613374284,1613374284),('objectsMetadata_invalid_key','uk','',1613374284,1613374284),('objectsMetadata_invalid_key','zh_Hans','',1613374284,1613374284),('product','cs','',1613053221,1613053221),('product','de','',1613053221,1613053221),('product','en','',1613053221,1613053221),('product','es','',1613053221,1613053221),('product','fa','',1613053221,1613053221),('product','fr','',1613053221,1613053221),('product','hu','',1613053221,1613053221),('product','it','',1613053221,1613053221),('product','ja','',1613053221,1613053221),('product','nl','',1613053221,1613053221),('product','pl','',1613053221,1613053221),('product','pt_BR','',1613053221,1613053221),('product','ru','',1613053221,1613053221),('product','sk','',1613053221,1613053221),('product','sv','',1613053221,1613053221),('product','sv_FI','',1613053221,1613053221),('product','th','',1613053221,1613053221),('product','tr','',1613053221,1613053221),('product','uk','',1613053221,1613053221),('product','zh_Hans','',1613053221,1613053221),('revMany','cs','',1613376297,1613376297),('revMany','de','',1613376297,1613376297),('revMany','en','',1613376297,1613376297),('revMany','es','',1613376297,1613376297),('revMany','fa','',1613376297,1613376297),('revMany','fr','',1613376297,1613376297),('revMany','hu','',1613376297,1613376297),('revMany','it','',1613376297,1613376297),('revMany','ja','',1613376297,1613376297),('revMany','nl','',1613376297,1613376297),('revMany','pl','',1613376297,1613376297),('revMany','pt_BR','',1613376297,1613376297),('revMany','ru','',1613376297,1613376297),('revMany','sk','',1613376297,1613376297),('revMany','sv','',1613376297,1613376297),('revMany','sv_FI','',1613376297,1613376297),('revMany','th','',1613376297,1613376297),('revMany','tr','',1613376297,1613376297),('revMany','uk','',1613376297,1613376297),('revMany','zh_Hans','',1613376297,1613376297),('second','cs','',1613379403,1613379403),('second','de','',1613379403,1613379403),('second','en','',1613379403,1613379403),('second','es','',1613379403,1613379403),('second','fa','',1613379403,1613379403),('second','fr','',1613379403,1613379403),('second','hu','',1613379403,1613379403),('second','it','',1613379403,1613379403),('second','ja','',1613379403,1613379403),('second','nl','',1613379403,1613379403),('second','pl','',1613379403,1613379403),('second','pt_BR','',1613379403,1613379403),('second','ru','',1613379403,1613379403),('second','sk','',1613379403,1613379403),('second','sv','',1613379403,1613379403),('second','sv_FI','',1613379403,1613379403),('second','th','',1613379403,1613379403),('second','tr','',1613379403,1613379403),('second','uk','',1613379403,1613379403),('second','zh_Hans','',1613379403,1613379403),('shirt','cs','',1613118896,1613118896),('shirt','de','',1613118896,1613118896),('shirt','en','',1613118896,1613118896),('shirt','es','',1613118896,1613118896),('shirt','fa','',1613118896,1613118896),('shirt','fr','',1613118896,1613118896),('shirt','hu','',1613118896,1613118896),('shirt','it','',1613118896,1613118896),('shirt','ja','',1613118896,1613118896),('shirt','nl','',1613118896,1613118896),('shirt','pl','',1613118896,1613118896),('shirt','pt_BR','',1613118896,1613118896),('shirt','ru','',1613118896,1613118896),('shirt','sk','',1613118896,1613118896),('shirt','sv','',1613118896,1613118896),('shirt','sv_FI','',1613118896,1613118896),('shirt','th','',1613118896,1613118896),('shirt','tr','',1613118896,1613118896),('shirt','uk','',1613118896,1613118896),('shirt','zh_Hans','',1613118896,1613118896),('something','cs','',1613379403,1613379403),('something','de','',1613379403,1613379403),('something','en','',1613379403,1613379403),('something','es','',1613379403,1613379403),('something','fa','',1613379403,1613379403),('something','fr','',1613379403,1613379403),('something','hu','',1613379403,1613379403),('something','it','',1613379403,1613379403),('something','ja','',1613379403,1613379403),('something','nl','',1613379403,1613379403),('something','pl','',1613379403,1613379403),('something','pt_BR','',1613379403,1613379403),('something','ru','',1613379403,1613379403),('something','sk','',1613379403,1613379403),('something','sv','',1613379403,1613379403),('something','sv_FI','',1613379403,1613379403),('something','th','',1613379403,1613379403),('something','tr','',1613379403,1613379403),('something','uk','',1613379403,1613379403),('something','zh_Hans','',1613379403,1613379403),('tables','cs','',1613378224,1613378224),('tables','de','',1613378224,1613378224),('tables','en','',1613378224,1613378224),('tables','es','',1613378224,1613378224),('tables','fa','',1613378224,1613378224),('tables','fr','',1613378224,1613378224),('tables','hu','',1613378224,1613378224),('tables','it','',1613378224,1613378224),('tables','ja','',1613378224,1613378224),('tables','nl','',1613378224,1613378224),('tables','pl','',1613378224,1613378224),('tables','pt_BR','',1613378224,1613378224),('tables','ru','',1613378224,1613378224),('tables','sk','',1613378224,1613378224),('tables','sv','',1613378224,1613378224),('tables','sv_FI','',1613378224,1613378224),('tables','th','',1613378224,1613378224),('tables','tr','',1613378224,1613378224),('tables','uk','',1613378224,1613378224),('tables','zh_Hans','',1613378224,1613378224),('targetGroup','cs','',1613379493,1613379493),('targetGroup','de','',1613379493,1613379493),('targetGroup','en','',1613379493,1613379493),('targetGroup','es','',1613379493,1613379493),('targetGroup','fa','',1613379493,1613379493),('targetGroup','fr','',1613379493,1613379493),('targetGroup','hu','',1613379493,1613379493),('targetGroup','it','',1613379493,1613379493),('targetGroup','ja','',1613379493,1613379493),('targetGroup','nl','',1613379493,1613379493),('targetGroup','pl','',1613379493,1613379493),('targetGroup','pt_BR','',1613379493,1613379493),('targetGroup','ru','',1613379493,1613379493),('targetGroup','sk','',1613379493,1613379493),('targetGroup','sv','',1613379493,1613379493),('targetGroup','sv_FI','',1613379493,1613379493),('targetGroup','th','',1613379493,1613379493),('targetGroup','tr','',1613379493,1613379493),('targetGroup','uk','',1613379493,1613379493),('targetGroup','zh_Hans','',1613379493,1613379493),('targetGroupMultiselect','cs','',1613379493,1613379493),('targetGroupMultiselect','de','',1613379493,1613379493),('targetGroupMultiselect','en','',1613379493,1613379493),('targetGroupMultiselect','es','',1613379493,1613379493),('targetGroupMultiselect','fa','',1613379493,1613379493),('targetGroupMultiselect','fr','',1613379493,1613379493),('targetGroupMultiselect','hu','',1613379493,1613379493),('targetGroupMultiselect','it','',1613379493,1613379493),('targetGroupMultiselect','ja','',1613379493,1613379493),('targetGroupMultiselect','nl','',1613379493,1613379493),('targetGroupMultiselect','pl','',1613379493,1613379493),('targetGroupMultiselect','pt_BR','',1613379493,1613379493),('targetGroupMultiselect','ru','',1613379493,1613379493),('targetGroupMultiselect','sk','',1613379493,1613379493),('targetGroupMultiselect','sv','',1613379493,1613379493),('targetGroupMultiselect','sv_FI','',1613379493,1613379493),('targetGroupMultiselect','th','',1613379493,1613379493),('targetGroupMultiselect','tr','',1613379493,1613379493),('targetGroupMultiselect','uk','',1613379493,1613379493),('targetGroupMultiselect','zh_Hans','',1613379493,1613379493),('test','cs','',1613309230,1613309230),('test','de','',1613309230,1613309230),('test','en','',1613309230,1613309230),('test','es','',1613309230,1613309230),('test','fa','',1613309230,1613309230),('test','fr','',1613309230,1613309230),('test','hu','',1613309230,1613309230),('test','it','',1613309230,1613309230),('test','ja','',1613309230,1613309230),('test','nl','',1613309230,1613309230),('test','pl','',1613309230,1613309230),('test','pt_BR','',1613309230,1613309230),('test','ru','',1613309230,1613309230),('test','sk','',1613309230,1613309230),('test','sv','',1613309230,1613309230),('test','sv_FI','',1613309230,1613309230),('test','th','',1613309230,1613309230),('test','tr','',1613309230,1613309230),('test','uk','',1613309230,1613309230),('test','zh_Hans','',1613309230,1613309230),('top','cs','',1613115901,1613115901),('top','de','',1613115901,1613115901),('top','en','',1613115901,1613115901),('top','es','',1613115901,1613115901),('top','fa','',1613115901,1613115901),('top','fr','',1613115901,1613115901),('top','hu','',1613115901,1613115901),('top','it','',1613115901,1613115901),('top','ja','',1613115901,1613115901),('top','nl','',1613115901,1613115901),('top','pl','',1613115901,1613115901),('top','pt_BR','',1613115901,1613115901),('top','ru','',1613115901,1613115901),('top','sk','',1613115901,1613115901),('top','sv','',1613115901,1613115901),('top','sv_FI','',1613115901,1613115901),('top','th','',1613115901,1613115901),('top','tr','',1613115901,1613115901),('top','uk','',1613115901,1613115901),('top','zh_Hans','',1613115901,1613115901),('true','cs','',1613053573,1613053573),('true','de','',1613053573,1613053573),('true','en','',1613053573,1613053573),('true','es','',1613053573,1613053573),('true','fa','',1613053573,1613053573),('true','fr','',1613053573,1613053573),('true','hu','',1613053573,1613053573),('true','it','',1613053573,1613053573),('true','ja','',1613053573,1613053573),('true','nl','',1613053573,1613053573),('true','pl','',1613053573,1613053573),('true','pt_BR','',1613053573,1613053573),('true','ru','',1613053573,1613053573),('true','sk','',1613053573,1613053573),('true','sv','',1613053573,1613053573),('true','sv_FI','',1613053573,1613053573),('true','th','',1613053573,1613053573),('true','tr','',1613053573,1613053573),('true','uk','',1613053573,1613053573),('true','zh_Hans','',1613053573,1613053573),('up','cs','',1613060387,1613060387),('up','de','',1613060387,1613060387),('up','en','',1613060387,1613060387),('up','es','',1613060387,1613060387),('up','fa','',1613060387,1613060387),('up','fr','',1613060387,1613060387),('up','hu','',1613060387,1613060387),('up','it','',1613060387,1613060387),('up','ja','',1613060387,1613060387),('up','nl','',1613060387,1613060387),('up','pl','',1613060387,1613060387),('up','pt_BR','',1613060387,1613060387),('up','ru','',1613060387,1613060387),('up','sk','',1613060387,1613060387),('up','sv','',1613060387,1613060387),('up','sv_FI','',1613060387,1613060387),('up','th','',1613060387,1613060387),('up','tr','',1613060387,1613060387),('up','uk','',1613060387,1613060387),('up','zh_Hans','',1613060387,1613060387),('urlSlug','cs','',1613379223,1613379223),('urlSlug','de','',1613379223,1613379223),('urlSlug','en','',1613379223,1613379223),('urlSlug','es','',1613379223,1613379223),('urlSlug','fa','',1613379223,1613379223),('urlSlug','fr','',1613379223,1613379223),('urlSlug','hu','',1613379223,1613379223),('urlSlug','it','',1613379223,1613379223),('urlSlug','ja','',1613379223,1613379223),('urlSlug','nl','',1613379223,1613379223),('urlSlug','pl','',1613379223,1613379223),('urlSlug','pt_BR','',1613379223,1613379223),('urlSlug','ru','',1613379223,1613379223),('urlSlug','sk','',1613379223,1613379223),('urlSlug','sv','',1613379223,1613379223),('urlSlug','sv_FI','',1613379223,1613379223),('urlSlug','th','',1613379223,1613379223),('urlSlug','tr','',1613379223,1613379223),('urlSlug','uk','',1613379223,1613379223),('urlSlug','zh_Hans','',1613379223,1613379223),('urll','cs','',1613380286,1613380286),('urll','de','',1613380286,1613380286),('urll','en','',1613380286,1613380286),('urll','es','',1613380286,1613380286),('urll','fa','',1613380286,1613380286),('urll','fr','',1613380286,1613380286),('urll','hu','',1613380286,1613380286),('urll','it','',1613380286,1613380286),('urll','ja','',1613380286,1613380286),('urll','nl','',1613380286,1613380286),('urll','pl','',1613380286,1613380286),('urll','pt_BR','',1613380286,1613380286),('urll','ru','',1613380286,1613380286),('urll','sk','',1613380286,1613380286),('urll','sv','',1613380286,1613380286),('urll','sv_FI','',1613380286,1613380286),('urll','th','',1613380286,1613380286),('urll','tr','',1613380286,1613380286),('urll','uk','',1613380286,1613380286),('urll','zh_Hans','',1613380286,1613380286),('Åland Islands','cs','',1613117351,1613117351),('Åland Islands','de','',1613117351,1613117351),('Åland Islands','en','',1613117351,1613117351),('Åland Islands','es','',1613117351,1613117351),('Åland Islands','fa','',1613117351,1613117351),('Åland Islands','fr','',1613117351,1613117351),('Åland Islands','hu','',1613117351,1613117351),('Åland Islands','it','',1613117351,1613117351),('Åland Islands','ja','',1613117351,1613117351),('Åland Islands','nl','',1613117351,1613117351),('Åland Islands','pl','',1613117351,1613117351),('Åland Islands','pt_BR','',1613117351,1613117351),('Åland Islands','ru','',1613117351,1613117351),('Åland Islands','sk','',1613117351,1613117351),('Åland Islands','sv','',1613117351,1613117351),('Åland Islands','sv_FI','',1613117351,1613117351),('Åland Islands','th','',1613117351,1613117351),('Åland Islands','tr','',1613117351,1613117351),('Åland Islands','uk','',1613117351,1613117351),('Åland Islands','zh_Hans','',1613117351,1613117351);
/*!40000 ALTER TABLE `translations_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations_website`
--

DROP TABLE IF EXISTS `translations_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations_website` (
  `key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `text` text,
  `creationDate` int unsigned DEFAULT NULL,
  `modificationDate` int unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`language`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations_website`
--

LOCK TABLES `translations_website` WRITE;
/*!40000 ALTER TABLE `translations_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tree_locks`
--

DROP TABLE IF EXISTS `tree_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tree_locks` (
  `id` int NOT NULL DEFAULT '0',
  `type` enum('asset','document','object') NOT NULL DEFAULT 'asset',
  `locked` enum('self','propagate') DEFAULT NULL,
  PRIMARY KEY (`id`,`type`),
  KEY `type` (`type`),
  KEY `locked` (`locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tree_locks`
--

LOCK TABLES `tree_locks` WRITE;
/*!40000 ALTER TABLE `tree_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tree_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int unsigned DEFAULT NULL,
  `type` enum('user','userfolder','role','rolefolder') NOT NULL DEFAULT 'user',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(190) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `contentLanguages` longtext,
  `admin` tinyint unsigned DEFAULT '0',
  `active` tinyint unsigned DEFAULT '1',
  `permissions` text,
  `roles` varchar(1000) DEFAULT NULL,
  `welcomescreen` tinyint(1) DEFAULT NULL,
  `closeWarning` tinyint(1) DEFAULT NULL,
  `memorizeTabs` tinyint(1) DEFAULT NULL,
  `allowDirtyClose` tinyint unsigned DEFAULT '1',
  `docTypes` varchar(255) DEFAULT NULL,
  `classes` text,
  `apiKey` varchar(255) DEFAULT NULL,
  `twoFactorAuthentication` varchar(255) DEFAULT NULL,
  `activePerspective` varchar(255) DEFAULT NULL,
  `perspectives` longtext,
  `websiteTranslationLanguagesEdit` longtext,
  `websiteTranslationLanguagesView` longtext,
  `lastLogin` int unsigned DEFAULT NULL,
  `keyBindings` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type`,`name`),
  KEY `parentId` (`parentId`),
  KEY `name` (`name`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,0,'user','system',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,'user','admin','$2y$10$/qkK6CqoAHd79IVp6NV5V.kCC0.G/LCfT20bSDpgxdZgTEjMg001q',NULL,NULL,NULL,'en',NULL,1,1,'','',0,1,1,0,'','',NULL,'null',NULL,'','','',1613930054,NULL),(3,0,'role','manager',NULL,NULL,NULL,NULL,NULL,NULL,0,1,'dashboards,objects',NULL,NULL,NULL,NULL,1,'','2',NULL,NULL,NULL,'','','',NULL,NULL),(4,0,'user','bhawana','$2y$10$HWGpDl.9.74tgOr1f8AYyeh0Z/QBWkWAkHWDzAglYTg4ZWkDElIe6','Bhawana','Tanwar','bhawanatanwar219@gmail.com','en','en',0,1,'','3',0,1,1,0,'','','','{\"required\":false,\"enabled\":false,\"secret\":\"\",\"type\":\"\"}',NULL,'','','',1613229331,'[{\"action\":\"save\",\"key\":83,\"ctrl\":true},{\"action\":\"publish\",\"key\":80,\"ctrl\":true,\"shift\":true},{\"action\":\"unpublish\",\"key\":85,\"ctrl\":true,\"shift\":true},{\"action\":\"rename\",\"key\":82,\"alt\":true,\"shift\":true},{\"action\":\"refresh\",\"key\":116},{\"action\":\"openDocument\",\"key\":68,\"ctrl\":true,\"shift\":true},{\"action\":\"openAsset\",\"key\":65,\"ctrl\":true,\"shift\":true},{\"action\":\"openObject\",\"key\":79,\"ctrl\":true,\"shift\":true},{\"action\":\"openClassEditor\",\"key\":67,\"ctrl\":true,\"shift\":true},{\"action\":\"openInTree\",\"key\":76,\"ctrl\":true,\"shift\":true},{\"action\":\"showMetaInfo\",\"key\":73,\"alt\":true},{\"action\":\"searchDocument\",\"key\":87,\"alt\":true},{\"action\":\"searchAsset\",\"key\":65,\"alt\":true},{\"action\":\"searchObject\",\"key\":79,\"alt\":true},{\"action\":\"showElementHistory\",\"key\":72,\"alt\":true},{\"action\":\"closeAllTabs\",\"key\":84,\"alt\":true},{\"action\":\"searchAndReplaceAssignments\",\"key\":83,\"alt\":true},{\"action\":\"glossary\",\"key\":71,\"shift\":true,\"alt\":true},{\"action\":\"redirects\",\"key\":82,\"ctrl\":false,\"alt\":true},{\"action\":\"sharedTranslations\",\"key\":84,\"ctrl\":true,\"alt\":true},{\"action\":\"recycleBin\",\"key\":82,\"ctrl\":true,\"alt\":true},{\"action\":\"notesEvents\",\"key\":78,\"ctrl\":true,\"alt\":true},{\"action\":\"applicationLogger\",\"key\":76,\"ctrl\":true,\"alt\":true},{\"action\":\"reports\",\"key\":77,\"ctrl\":true,\"alt\":true},{\"action\":\"tagManager\",\"key\":72,\"ctrl\":true,\"alt\":true},{\"action\":\"seoDocumentEditor\",\"key\":83,\"ctrl\":true,\"alt\":true},{\"action\":\"robots\",\"key\":74,\"ctrl\":true,\"alt\":true},{\"action\":\"httpErrorLog\",\"key\":79,\"ctrl\":true,\"alt\":true},{\"action\":\"customReports\",\"key\":67,\"ctrl\":true,\"alt\":true},{\"action\":\"tagConfiguration\",\"key\":78,\"ctrl\":true,\"alt\":true},{\"action\":\"users\",\"key\":85,\"ctrl\":true,\"alt\":true},{\"action\":\"roles\",\"key\":80,\"ctrl\":true,\"alt\":true},{\"action\":\"clearAllCaches\",\"key\":81,\"ctrl\":false,\"alt\":true},{\"action\":\"clearDataCache\",\"key\":67,\"ctrl\":false,\"alt\":true},{\"action\":\"quickSearch\",\"key\":70,\"ctrl\":true,\"shift\":true}]');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permission_definitions`
--

DROP TABLE IF EXISTS `users_permission_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_permission_definitions` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `category` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permission_definitions`
--

LOCK TABLES `users_permission_definitions` WRITE;
/*!40000 ALTER TABLE `users_permission_definitions` DISABLE KEYS */;
INSERT INTO `users_permission_definitions` VALUES ('admin_translations',''),('application_logging',''),('asset_metadata',''),('assets',''),('classes',''),('clear_cache',''),('clear_fullpage_cache',''),('clear_temp_files',''),('dashboards',''),('document_types',''),('documents',''),('emails',''),('gdpr_data_extractor',''),('glossary',''),('http_errors',''),('notes_events',''),('notifications',''),('notifications_send',''),('objects',''),('piwik_reports',''),('piwik_settings',''),('plugins',''),('predefined_properties',''),('qr_codes',''),('recyclebin',''),('redirects',''),('reports',''),('reports_config',''),('robots.txt',''),('routes',''),('seemode',''),('seo_document_editor',''),('share_configurations',''),('system_settings',''),('tag_snippet_management',''),('tags_assignment',''),('tags_configuration',''),('tags_search',''),('targeting',''),('thumbnails',''),('translations',''),('users',''),('web2print_settings',''),('website_settings',''),('workflow_details','');
/*!40000 ALTER TABLE `users_permission_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_asset`
--

DROP TABLE IF EXISTS `users_workspaces_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_workspaces_asset` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int NOT NULL DEFAULT '0',
  `list` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '0',
  `publish` tinyint(1) DEFAULT '0',
  `delete` tinyint(1) DEFAULT '0',
  `rename` tinyint(1) DEFAULT '0',
  `create` tinyint(1) DEFAULT '0',
  `settings` tinyint(1) DEFAULT '0',
  `versions` tinyint(1) DEFAULT '0',
  `properties` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  UNIQUE KEY `cpath_userId` (`cpath`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_asset`
--

LOCK TABLES `users_workspaces_asset` WRITE;
/*!40000 ALTER TABLE `users_workspaces_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_document`
--

DROP TABLE IF EXISTS `users_workspaces_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_workspaces_document` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int NOT NULL DEFAULT '0',
  `list` tinyint unsigned DEFAULT '0',
  `view` tinyint unsigned DEFAULT '0',
  `save` tinyint unsigned DEFAULT '0',
  `publish` tinyint unsigned DEFAULT '0',
  `unpublish` tinyint unsigned DEFAULT '0',
  `delete` tinyint unsigned DEFAULT '0',
  `rename` tinyint unsigned DEFAULT '0',
  `create` tinyint unsigned DEFAULT '0',
  `settings` tinyint unsigned DEFAULT '0',
  `versions` tinyint unsigned DEFAULT '0',
  `properties` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`cid`,`userId`),
  UNIQUE KEY `cpath_userId` (`cpath`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_document`
--

LOCK TABLES `users_workspaces_document` WRITE;
/*!40000 ALTER TABLE `users_workspaces_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_workspaces_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_workspaces_object`
--

DROP TABLE IF EXISTS `users_workspaces_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_workspaces_object` (
  `cid` int unsigned NOT NULL DEFAULT '0',
  `cpath` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userId` int NOT NULL DEFAULT '0',
  `list` tinyint unsigned DEFAULT '0',
  `view` tinyint unsigned DEFAULT '0',
  `save` tinyint unsigned DEFAULT '0',
  `publish` tinyint unsigned DEFAULT '0',
  `unpublish` tinyint unsigned DEFAULT '0',
  `delete` tinyint unsigned DEFAULT '0',
  `rename` tinyint unsigned DEFAULT '0',
  `create` tinyint unsigned DEFAULT '0',
  `settings` tinyint unsigned DEFAULT '0',
  `versions` tinyint unsigned DEFAULT '0',
  `properties` tinyint unsigned DEFAULT '0',
  `lEdit` text,
  `lView` text,
  `layouts` text,
  PRIMARY KEY (`cid`,`userId`),
  UNIQUE KEY `cpath_userId` (`cpath`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_workspaces_object`
--

LOCK TABLES `users_workspaces_object` WRITE;
/*!40000 ALTER TABLE `users_workspaces_object` DISABLE KEYS */;
INSERT INTO `users_workspaces_object` VALUES (3,'/product',3,1,1,1,1,1,0,0,0,1,1,0,'','','');
/*!40000 ALTER TABLE `users_workspaces_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uuids`
--

DROP TABLE IF EXISTS `uuids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uuids` (
  `uuid` char(36) NOT NULL,
  `itemId` int unsigned NOT NULL,
  `type` varchar(25) NOT NULL,
  `instanceIdentifier` varchar(50) NOT NULL,
  PRIMARY KEY (`uuid`,`itemId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uuids`
--

LOCK TABLES `uuids` WRITE;
/*!40000 ALTER TABLE `uuids` DISABLE KEYS */;
/*!40000 ALTER TABLE `uuids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned DEFAULT NULL,
  `ctype` enum('document','asset','object') DEFAULT NULL,
  `userId` int unsigned DEFAULT NULL,
  `note` text,
  `stackTrace` text,
  `date` int unsigned DEFAULT NULL,
  `public` tinyint unsigned NOT NULL DEFAULT '0',
  `serialized` tinyint unsigned DEFAULT '0',
  `versionCount` int unsigned NOT NULL DEFAULT '0',
  `binaryFileHash` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `binaryFileId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ctype_cid` (`ctype`,`cid`),
  KEY `date` (`date`),
  KEY `binaryFileHash` (`binaryFileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,4,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613059228,0,1,1,NULL,NULL),(2,4,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613059254,0,1,2,NULL,NULL),(3,5,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613059293,0,1,1,NULL,NULL),(4,5,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613059351,0,1,2,NULL,NULL),(5,6,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613060257,0,1,1,NULL,NULL),(6,6,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613061499,0,1,2,NULL,NULL),(10,11,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613064617,0,1,1,NULL,NULL),(11,12,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613118032,0,1,1,NULL,NULL),(12,12,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613118048,0,1,2,NULL,NULL),(13,13,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613118071,0,1,1,NULL,NULL),(14,13,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613118091,0,1,2,NULL,NULL),(15,15,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119190,0,1,1,NULL,NULL),(16,15,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119220,0,1,2,NULL,NULL),(17,16,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119759,0,1,1,NULL,NULL),(18,16,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119783,0,1,2,NULL,NULL),(19,17,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119799,0,1,1,NULL,NULL),(20,17,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119814,0,1,2,NULL,NULL),(21,19,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119919,0,1,1,NULL,NULL),(22,20,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613119953,0,1,1,NULL,NULL),(23,20,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613120064,0,1,2,NULL,NULL),(24,19,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613120091,0,1,2,NULL,NULL),(25,21,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613120135,0,1,1,NULL,NULL),(26,21,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613120654,0,1,2,NULL,NULL),(27,22,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613286036,0,1,1,NULL,NULL),(28,22,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613286303,0,1,2,NULL,NULL),(29,21,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613306454,0,1,3,NULL,NULL),(30,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613309427,0,1,1,NULL,NULL),(31,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613309458,0,1,2,NULL,NULL),(32,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613309530,0,1,3,NULL,NULL),(33,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613309603,0,1,4,NULL,NULL),(34,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613309819,0,1,5,NULL,NULL),(35,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613310567,0,1,6,NULL,NULL),(36,4,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311166,0,1,1,'3efdd9440454aa9476d9e23cbef8bc0b5c70ab9d8e9ebc3d102a487a514256bb8b5599189f8440dd785b181b91b6069bae7f16f026bed3bc93166851fc53edb8',NULL),(38,3,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311167,0,1,1,'fb879fb2ce372e4c7b2ca4ef78fc7322f0d197c9632d4a76de8712340c451a38b0bcb79670701c5da888f93d257911a701791e1e3160543b371d01d61f08cac4',NULL),(39,6,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311167,0,1,1,'129cc953e527d438c170619fbc7b23dc8c850c2b9fb643122227de663c53e9f1dbc0681d5710eddb974940a629be969e8166dd7dc7074f99cdfd9b858063e59e',NULL),(40,7,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311167,0,1,1,'1f699c1efcb4556f4d2820771588bc83f1010ebd17c85a4850a5b50b8006c6cfddff1b218a80aaca03b91f7897b0e94a6f448e04cd32d628dbac16f2473e4a66',NULL),(41,8,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311168,0,1,1,'37c3b59354ab0bc8de76ba06c591e7c1b9f69aaf5cce044be91bed7099f71d966e98bceb2caa4ce3eecff4967a984c109a7b2a4f56ca08d5d3fecdf186f4c292',NULL),(42,9,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311169,0,1,1,'3e660f06c7d220829e473f80a4751b31fde368853486e76072cb4b2fb4686f925eb8a2a3d06196871b98188861d0831ed6f37da5b6603ba4205b9aae59a3ea4a',NULL),(43,10,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311169,0,1,1,'6615bc3748fdab35e18b9d4c6cb62350df913da45d33e66bfd692adca0f400b5dbccf769ea503bb648e379d274e805bc0fbbe969f030daa7b2c677edc2951098',NULL),(44,11,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311170,0,1,1,'707a757390afd0854ceb9420e72e0a1f94b90b3a28151b82c9e1b8996e3228d2b8d984fe7511d44ecddeb5589dcab1b2f0a0c461a93884d89ee6970d7e719f8e',NULL),(45,12,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311170,0,1,1,'2dd404a00766942b5384cb9ce459b016c16c32485dbf2c2e41fac2ec68c2b40ad82fa3d61750ede2cf400067b545401ee1e935e21b3f2f62dbc2e69d0b8016aa',NULL),(46,13,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311171,0,1,1,'d29eb31da550e82f94270bfe3360f8a7bb7a8c97f9f55f8e9183de442e52b3ca5fa49588c9a1c664bb87a8e0ee00722cb9860661074de114fcb24a13a0dfbf63',NULL),(47,14,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311172,0,1,1,'39a2f88687aebc43a821cca29d6013e8b949e454c6bf8e75720cfbb59f7a8196aed24326a0f8fb679fe224bb032d8a6c2907b66b34baf128c5d59694b1820421',NULL),(48,15,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(333): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613311172,0,1,1,'d85fe33372551ddc625d6f7f7daf87c2333de916b48ffcb3974bb3c27f5b6f7d93dae9fd5fbcd9732a16561a87b2739be25db880202e1a8f17dd7622144cdd38',NULL),(49,17,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(368): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613312660,0,1,1,'fb879fb2ce372e4c7b2ca4ef78fc7322f0d197c9632d4a76de8712340c451a38b0bcb79670701c5da888f93d257911a701791e1e3160543b371d01d61f08cac4',NULL),(50,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613312665,0,1,7,NULL,NULL),(51,18,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(368): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613312701,0,1,1,'06e7d8a910c3c1cd0af833c5023057d8cee0ab01d5e50e6a992ba6badb31582c556e67bf411abe24b7c77cdd322d9749d6891e40ff9ca0dcd5326faaa55c541f',NULL),(52,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613312707,0,1,8,NULL,NULL),(53,25,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613370071,0,1,1,NULL,NULL),(54,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613373509,0,1,9,NULL,NULL),(55,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613373569,0,1,10,NULL,NULL),(56,19,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(368): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613373945,0,1,1,'fb879fb2ce372e4c7b2ca4ef78fc7322f0d197c9632d4a76de8712340c451a38b0bcb79670701c5da888f93d257911a701791e1e3160543b371d01d61f08cac4',NULL),(57,20,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613374762,0,1,3,NULL,NULL),(58,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613374815,0,1,11,NULL,NULL),(59,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613374839,0,1,12,NULL,NULL),(60,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613376705,0,1,13,NULL,NULL),(61,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613377070,0,1,14,NULL,NULL),(62,24,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613380321,0,1,15,NULL,NULL),(63,11,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613411125,0,1,2,NULL,NULL),(64,26,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(42): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613413138,0,1,1,NULL,NULL),(65,27,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(42): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613413533,0,1,1,NULL,NULL),(66,28,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(95): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613457384,0,1,1,NULL,NULL),(81,43,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportCategory.php(62): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportCategory->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613490362,0,1,1,NULL,NULL),(82,44,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(66): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613491023,0,1,1,NULL,NULL),(83,45,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(78): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613493368,0,1,1,NULL,NULL),(84,46,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(78): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613493955,0,1,1,NULL,NULL),(85,47,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(78): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613494772,0,1,1,NULL,NULL),(86,48,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(78): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613494835,0,1,1,NULL,NULL),(87,49,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(81): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613495570,0,1,1,NULL,NULL),(88,50,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(82): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613495716,0,1,1,NULL,NULL),(89,51,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(82): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613495851,0,1,1,NULL,NULL),(90,52,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(82): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613495983,0,1,1,NULL,NULL),(91,53,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(82): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613496112,0,1,1,NULL,NULL),(92,54,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(94): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613496828,0,1,1,NULL,NULL),(93,55,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(94): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613497404,0,1,1,NULL,NULL),(94,56,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(95): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613497669,0,1,1,NULL,NULL),(95,57,'object',0,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/src/AppBundle/Command/ImportData.php(96): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Command/Command.php(255): AppBundle\\Command\\ImportData->execute()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(1027): Symfony\\Component\\Console\\Command\\Command->run()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(97): Symfony\\Component\\Console\\Application->doRunCommand()\n#9 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(273): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRunCommand()\n#10 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Console/Application.php(83): Symfony\\Component\\Console\\Application->doRun()\n#11 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/Console/Application.php(149): Symfony\\Bundle\\FrameworkBundle\\Console\\Application->doRun()\n#12 /var/www/html/pim/bin/console(36): Symfony\\Component\\Console\\Application->run()\n#13 {main}',1613497784,0,1,1,NULL,NULL),(105,59,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(821): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->addAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613650563,0,1,1,NULL,NULL),(106,20,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(368): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613650862,0,1,1,'794edb7efd31ac261399f0256edf9598d9679b575c3e6c70ad9e1073763b02d2fc0a42cd124cf7282e48542692c42d44e5de474618f93e90577e35592c1ebe0f',NULL),(107,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/DocumentController.php(281): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\DocumentController->addAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613671508,0,1,1,NULL,NULL),(108,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613671558,0,1,2,NULL,NULL),(109,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613672804,0,1,3,NULL,NULL),(110,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613672888,0,1,4,NULL,NULL),(111,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613673016,0,1,5,NULL,NULL),(112,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613673115,0,1,6,NULL,NULL),(113,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613673351,0,1,7,NULL,NULL),(114,21,'asset',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(852): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(539): Pimcore\\Model\\Asset->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Asset.php(373): Pimcore\\Model\\Asset->save()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(491): Pimcore\\Model\\Asset::create()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/AssetController.php(368): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAsset()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\AssetController->addAssetCompatibilityAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613673427,0,1,1,'fb879fb2ce372e4c7b2ca4ef78fc7322f0d197c9632d4a76de8712340c451a38b0bcb79670701c5da888f93d257911a701791e1e3160543b371d01d61f08cac4',NULL),(115,22,'object',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(292): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(210): Pimcore\\Model\\DataObject\\Concrete->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/AbstractObject.php(659): Pimcore\\Model\\DataObject\\Concrete->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/models/DataObject/Concrete.php(748): Pimcore\\Model\\DataObject\\AbstractObject->save()\n#5 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/DataObject/DataObjectController.php(1260): Pimcore\\Model\\DataObject\\Concrete->save()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\DataObject\\DataObjectController->saveAction()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#8 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#9 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#10 {main}',1613673435,0,1,3,NULL,NULL),(116,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613673448,0,1,8,NULL,NULL),(117,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613673489,0,1,9,NULL,NULL),(118,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613719600,0,1,10,NULL,NULL),(119,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613720275,0,1,11,NULL,NULL),(120,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613720377,0,1,12,NULL,NULL),(121,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613840332,0,1,13,NULL,NULL),(122,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613840380,0,1,14,NULL,NULL),(123,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613840422,0,1,15,NULL,NULL),(124,4,'document',2,'','#0 /var/www/html/pim/vendor/pimcore/pimcore/models/Element/AbstractElement.php(348): Pimcore\\Model\\Version->save()\n#1 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(191): Pimcore\\Model\\Element\\AbstractElement->doSaveVersion()\n#2 /var/www/html/pim/vendor/pimcore/pimcore/models/Document/PageSnippet.php(151): Pimcore\\Model\\Document\\PageSnippet->saveVersion()\n#3 /var/www/html/pim/vendor/pimcore/pimcore/models/Document.php(424): Pimcore\\Model\\Document\\PageSnippet->update()\n#4 /var/www/html/pim/vendor/pimcore/pimcore/bundles/AdminBundle/Controller/Admin/Document/PageController.php(184): Pimcore\\Model\\Document->save()\n#5 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(158): Pimcore\\Bundle\\AdminBundle\\Controller\\Admin\\Document\\PageController->saveAction()\n#6 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/HttpKernel.php(80): Symfony\\Component\\HttpKernel\\HttpKernel->handleRaw()\n#7 /var/www/html/pim/vendor/symfony/symfony/src/Symfony/Component/HttpKernel/Kernel.php(201): Symfony\\Component\\HttpKernel\\HttpKernel->handle()\n#8 /var/www/html/pim/web/app.php(35): Symfony\\Component\\HttpKernel\\Kernel->handle()\n#9 {main}',1613840532,0,1,16,NULL,NULL);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `object_1`
--

/*!50001 DROP VIEW IF EXISTS `object_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`demo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_1` AS select `object_query_1`.`oo_id` AS `oo_id`,`object_query_1`.`oo_classId` AS `oo_classId`,`object_query_1`.`oo_className` AS `oo_className`,`object_query_1`.`name` AS `name`,`object_query_1`.`description` AS `description`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_1` join `objects` on((`objects`.`o_id` = `object_query_1`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_2`
--

/*!50001 DROP VIEW IF EXISTS `object_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`demo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_2` AS select `object_query_2`.`oo_id` AS `oo_id`,`object_query_2`.`oo_classId` AS `oo_classId`,`object_query_2`.`oo_className` AS `oo_className`,`object_query_2`.`name` AS `name`,`object_query_2`.`description` AS `description`,`object_query_2`.`size` AS `size`,`object_query_2`.`sku` AS `sku`,`object_query_2`.`color__rgb` AS `color__rgb`,`object_query_2`.`color__a` AS `color__a`,`object_query_2`.`discount` AS `discount`,`object_query_2`.`gender` AS `gender`,`object_query_2`.`price` AS `price`,`object_query_2`.`category__id` AS `category__id`,`object_query_2`.`category__type` AS `category__type`,`object_query_2`.`pockets` AS `pockets`,`object_query_2`.`neckShape` AS `neckShape`,`object_query_2`.`sleeves` AS `sleeves`,`object_query_2`.`length` AS `length`,`object_query_2`.`madeIn` AS `madeIn`,`object_query_2`.`brand` AS `brand`,`object_query_2`.`image__id` AS `image__id`,`object_query_2`.`image__type` AS `image__type`,`object_query_2`.`fabric` AS `fabric`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_2` join `objects` on((`objects`.`o_id` = `object_query_2`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_3`
--

/*!50001 DROP VIEW IF EXISTS `object_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`demo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_3` AS select `object_query_3`.`oo_id` AS `oo_id`,`object_query_3`.`oo_classId` AS `oo_classId`,`object_query_3`.`oo_className` AS `oo_className`,`object_query_3`.`name` AS `name`,`object_query_3`.`description` AS `description`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_3` join `objects` on((`objects`.`o_id` = `object_query_3`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_4`
--

/*!50001 DROP VIEW IF EXISTS `object_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`demo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_4` AS select `object_query_4`.`oo_id` AS `oo_id`,`object_query_4`.`oo_classId` AS `oo_classId`,`object_query_4`.`oo_className` AS `oo_className`,`object_query_4`.`name` AS `name`,`object_query_4`.`description` AS `description`,`object_query_4`.`washable` AS `washable`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_4` join `objects` on((`objects`.`o_id` = `object_query_4`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_5`
--

/*!50001 DROP VIEW IF EXISTS `object_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`demo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_5` AS select `object_query_5`.`oo_id` AS `oo_id`,`object_query_5`.`oo_classId` AS `oo_classId`,`object_query_5`.`oo_className` AS `oo_className`,`object_query_5`.`starttime` AS `starttime`,`object_query_5`.`boolean` AS `boolean`,`object_query_5`.`dateTime` AS `dateTime`,`object_query_5`.`user` AS `user`,`object_query_5`.`lang` AS `lang`,`object_query_5`.`country` AS `country`,`object_query_5`.`image` AS `image`,`object_query_5`.`gallery__images` AS `gallery__images`,`object_query_5`.`gallery__hotspots` AS `gallery__hotspots`,`object_query_5`.`multi` AS `multi`,`object_query_5`.`extImg` AS `extImg`,`object_query_5`.`imgAdv__image` AS `imgAdv__image`,`object_query_5`.`imgAdv__hotspots` AS `imgAdv__hotspots`,`object_query_5`.`advMany` AS `advMany`,`object_query_5`.`advManyObject` AS `advManyObject`,`object_query_5`.`revMany` AS `revMany`,`object_query_5`.`geoPoint__longitude` AS `geoPoint__longitude`,`object_query_5`.`geoPoint__latitude` AS `geoPoint__latitude`,`object_query_5`.`geoBounds__NElongitude` AS `geoBounds__NElongitude`,`object_query_5`.`geoBounds__NElatitude` AS `geoBounds__NElatitude`,`object_query_5`.`geoBounds__SWlongitude` AS `geoBounds__SWlongitude`,`object_query_5`.`geoBounds__SWlatitude` AS `geoBounds__SWlatitude`,`object_query_5`.`geoPlygon` AS `geoPlygon`,`object_query_5`.`consents` AS `consents`,`object_query_5`.`gender` AS `gender`,`object_query_5`.`newsletterActive` AS `newsletterActive`,`object_query_5`.`newsletterConfirmed` AS `newsletterConfirmed`,`object_query_5`.`targetGroup` AS `targetGroup`,`object_query_5`.`tables` AS `tables`,`object_query_5`.`links` AS `links`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_5` join `objects` on((`objects`.`o_id` = `object_query_5`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `object_6`
--

/*!50001 DROP VIEW IF EXISTS `object_6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`demo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `object_6` AS select `object_query_6`.`oo_id` AS `oo_id`,`object_query_6`.`oo_classId` AS `oo_classId`,`object_query_6`.`oo_className` AS `oo_className`,`object_query_6`.`selectClass` AS `selectClass`,`object_query_6`.`selectFile__id` AS `selectFile__id`,`object_query_6`.`selectFile__type` AS `selectFile__type`,`objects`.`o_id` AS `o_id`,`objects`.`o_parentId` AS `o_parentId`,`objects`.`o_type` AS `o_type`,`objects`.`o_key` AS `o_key`,`objects`.`o_path` AS `o_path`,`objects`.`o_index` AS `o_index`,`objects`.`o_published` AS `o_published`,`objects`.`o_creationDate` AS `o_creationDate`,`objects`.`o_modificationDate` AS `o_modificationDate`,`objects`.`o_userOwner` AS `o_userOwner`,`objects`.`o_userModification` AS `o_userModification`,`objects`.`o_classId` AS `o_classId`,`objects`.`o_className` AS `o_className`,`objects`.`o_childrenSortBy` AS `o_childrenSortBy`,`objects`.`o_childrenSortOrder` AS `o_childrenSortOrder`,`objects`.`o_versionCount` AS `o_versionCount` from (`object_query_6` join `objects` on((`objects`.`o_id` = `object_query_6`.`oo_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 21:41:45