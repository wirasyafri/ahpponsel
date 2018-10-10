-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: spk_sekolah
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alternatif`
--

DROP TABLE IF EXISTS `alternatif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,
  `id_sekolah` int(11) NOT NULL,
  `status` enum('daftar','unggulan','belum unggulan') NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternatif`
--

LOCK TABLES `alternatif` WRITE;
/*!40000 ALTER TABLE `alternatif` DISABLE KEYS */;
INSERT INTO `alternatif` VALUES (54,1,'unggulan',3.3975914340684),(55,2,'unggulan',0),(56,3,'unggulan',0);
/*!40000 ALTER TABLE `alternatif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alternatif_nilai`
--

DROP TABLE IF EXISTS `alternatif_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alternatif_nilai` (
  `id_alternatif_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `id_nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_alternatif_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternatif_nilai`
--

LOCK TABLES `alternatif_nilai` WRITE;
/*!40000 ALTER TABLE `alternatif_nilai` DISABLE KEYS */;
INSERT INTO `alternatif_nilai` VALUES (196,39,13,45,45),(197,39,14,50,50),(198,39,16,60,60),(199,39,17,65,65),(200,39,20,80,80),(201,40,13,46,46),(202,40,14,51,51),(203,40,16,61,61),(204,40,17,66,66),(205,40,20,81,81),(206,41,13,47,47),(207,41,14,52,52),(208,41,16,62,62),(209,41,17,67,67),(210,41,20,82,82),(211,42,13,48,48),(212,42,14,53,53),(213,42,16,63,63),(214,42,17,68,68),(215,42,20,83,83),(226,51,13,46,46),(227,51,14,51,51),(228,51,16,60,60),(229,51,17,66,66),(230,51,20,82,82),(231,52,13,49,49),(232,52,14,54,54),(233,52,16,64,64),(234,52,17,69,69),(235,52,20,84,84),(236,53,13,48,48),(237,53,14,51,51),(238,53,16,63,63),(239,53,17,67,67),(240,53,20,80,80),(241,54,13,45,45),(242,54,14,51,51),(243,54,16,62,62),(244,54,17,65,65),(245,54,20,80,80),(246,55,13,46,46),(247,55,14,51,51),(248,55,16,61,61),(249,55,17,65,65),(250,55,20,81,81),(251,56,13,48,48),(252,56,14,50,50),(253,56,16,60,60),(254,56,17,65,65),(255,56,20,80,80);
/*!40000 ALTER TABLE `alternatif_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeri`
--

DROP TABLE IF EXISTS `galeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `id_tujuan` int(11) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeri`
--

LOCK TABLES `galeri` WRITE;
/*!40000 ALTER TABLE `galeri` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'members','General User');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kriteria`
--

DROP TABLE IF EXISTS `kriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kriteria` text NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kriteria`
--

LOCK TABLES `kriteria` WRITE;
/*!40000 ALTER TABLE `kriteria` DISABLE KEYS */;
INSERT INTO `kriteria` VALUES (13,'RAM'),(14,'Processor'),(16,'Brand'),(17,'Harga'),(20,'Teknologi');
/*!40000 ALTER TABLE `kriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kriteria_nilai`
--

DROP TABLE IF EXISTS `kriteria_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kriteria_nilai` (
  `id_kriteria_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria_id_dari` int(11) NOT NULL,
  `kriteria_id_tujuan` int(11) NOT NULL,
  `nilai` int(1) NOT NULL,
  PRIMARY KEY (`id_kriteria_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=641 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kriteria_nilai`
--

LOCK TABLES `kriteria_nilai` WRITE;
/*!40000 ALTER TABLE `kriteria_nilai` DISABLE KEYS */;
INSERT INTO `kriteria_nilai` VALUES (631,13,14,3),(632,13,16,1),(633,13,17,1),(634,13,20,1),(635,14,16,3),(636,14,17,1),(637,14,20,1),(638,16,17,1),(639,16,20,1),(640,17,20,1);
/*!40000 ALTER TABLE `kriteria_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (0);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_kategori`
--

DROP TABLE IF EXISTS `nilai_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nilai_kategori` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `nama_nilai` varchar(30) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_kategori`
--

LOCK TABLES `nilai_kategori` WRITE;
/*!40000 ALTER TABLE `nilai_kategori` DISABLE KEYS */;
INSERT INTO `nilai_kategori` VALUES (1,'Sangat Baik'),(2,'Baik'),(3,'Cukup'),(4,'Kurang'),(5,'Sangat Kurang');
/*!40000 ALTER TABLE `nilai_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesan`
--

DROP TABLE IF EXISTS `pesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subjek` varchar(30) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesan`
--

LOCK TABLES `pesan` WRITE;
/*!40000 ALTER TABLE `pesan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekolah`
--

DROP TABLE IF EXISTS `sekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(40) NOT NULL,
  `nama_kepsek` varchar(30) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  PRIMARY KEY (`id_sekolah`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekolah`
--

LOCK TABLES `sekolah` WRITE;
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;
INSERT INTO `sekolah` VALUES (1,'iPhone X 256GB','Syamsuddin, S. Pd, MM.','Ngantang','“Menjadi sekolah yang unggul dalam prestasi, berkarakter, berwawasan lingkungan dan berdaya saing global berlandaskan IMTAQ dan IPTEK”','Misi :\r\n? Menciptakan lingkungan pembelajar yang kondusif dalam upaya meningkatkan mutu pembelajaran;\r\n? Mendorong dan membantu setiap peserta didik untuk mengenali potensi dirinya sehingga dapat dikembangkan secara optimal;\r\n? Menumbuhkembangkan semangat keunggulan dan budaya belajar yang tinggi kepada seluruh warga sekolah;\r\n? Menumbuhkembangkan karakter warga sekolah yang relegius, disiplin, jujur, bertanggung jawab, kreatif dan inovatif;\r\n? Meningkatkan komitmen, kinerja dan loyalitas seluruh pendidik dan tenaga kependidikan terhadap tugas pokok dan fungsinya;\r\n? Meningkatkan apresiasi terhadap seni dan budaya bangsa;\r\n? Melaksanakan pembelajaran yang berbasis lingkungan;\r\n? Menumbuhkan budaya hidup bersih dan sehat;\r\n? Menumbuhkankembangkan semangat mencintai, mengelolah dan memelihara lingkungan oleh seluruh warga sekolah;\r\n? Menerapkan Teknologi Informasi dan Komunikasi dalam pembelajaran dan pengelolaan sekolah;\r\n? Menerapkan sistem manajemen mutu.','0411- 445825'),(2,'Vivo V11','Muh. Arafah Kube, ST','Pujon','BE A LEADERSHIP SCHOOL IN EAST INDONESIA','• Menciptakan Manusia Kreatif, Mandiri, Berakhlak Mulia, Bertanggung Jawab dan Berwawasan Global\r\n  • Mencetak Peneliti Muda yang Handal dalam Aplikasi Ilmu dan Teknologi\r\n  • Menjalin Ukhwah Antar Orang Tua, Pemerintah dan Masyarakat','0411-425277'),(3,'Nokia 6.1 Plus','Akbar abustang','Ndarungan','Menjadi sekolah yang unggul dalam bidang imtaq dan ipteks yang berwawasan lingkungan','Mengaktualisasikan ajaran agama secara konsekuen\r\nMelaksanakan managemen partisipatif berbasis pelayanan prima\r\nMelaksanakan proses pembelajaran berkualitas\r\nMembina bakat dan minat siswa dalam kegiatan ekstrakurikuler\r\nMeningkatkan profesionalisme guru dan staf tata usaha yang berbasis kinerja.\r\nMewujudkan kemitraan seluruh stageholder menuju sekolah yang unggul.\r\nMemaksimalkan kecintaan lingkungan dengan upaya mencegah terjadinya pencemaran lingkungan.\r\nMemaksimalkan kecintaan lingkungan dengan upaya mencegah terjadinya kerusakan lingkungan.\r\nMemaksimalkan kecintaan lingkungan dengan upaya menjaga pelestarian lingkungan.','0411 - 511121'),(4,'Redmi X Note','ana','jl.sunu','yaaaa','taaa','88'),(5,'Samsung J2 Prime','Ponsel','Jl Tlogomas GG8','Hmmmm','Hmmmm','123');
/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subkriteria`
--

DROP TABLE IF EXISTS `subkriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subkriteria` (
  `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_subkriteria` varchar(50) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `tipe` enum('teks','nilai') NOT NULL,
  `nilai_minimum` double DEFAULT NULL,
  `nilai_maksimum` double DEFAULT NULL,
  `op_min` varchar(4) DEFAULT NULL,
  `op_max` varchar(4) DEFAULT NULL,
  `id_nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_subkriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subkriteria`
--

LOCK TABLES `subkriteria` WRITE;
/*!40000 ALTER TABLE `subkriteria` DISABLE KEYS */;
INSERT INTO `subkriteria` VALUES (45,'=> 91 <= 100',13,'nilai',91,100,'=>','<=',1),(46,'=> 81 <= 90',13,'nilai',81,90,'=>','<=',2),(47,'=> 71 <= 80',13,'nilai',71,80,'=>','<=',3),(48,'=> 61 <= 70',13,'nilai',61,70,'=>','<=',4),(49,'=> 0 < 60',13,'nilai',0,60,'=>','<',5),(50,'=> 91 <= 100',14,'nilai',91,100,'=>','<=',1),(51,'=> 81 <= 90',14,'nilai',81,90,'=>','<=',2),(52,'=> 71 <= 80',14,'nilai',71,80,'=>','<=',3),(53,'=> 61 <= 70',14,'nilai',61,70,'=>','<=',4),(54,'=> 0 <= 60',14,'nilai',0,60,'=>','<=',5),(55,'=> 91 <= 100',15,'nilai',91,100,'=>','<=',1),(56,'=> 81 <= 90',15,'nilai',81,90,'=>','<=',2),(57,'=> 71 <= 80',15,'nilai',71,80,'=>','<=',3),(58,'=> 61 <= 70',15,'nilai',61,70,'=>','<=',4),(59,'=> 0 <= 60',15,'nilai',0,60,'=>','<=',5),(61,'Memuat 8 komponen dalam silabus',16,'teks',NULL,NULL,NULL,NULL,2),(62,'Memuat 7 komponen dalam silabus',16,'teks',NULL,NULL,NULL,NULL,3),(63,'Memuat 6 komponen dalam silabus',16,'teks',NULL,NULL,NULL,NULL,4),(64,'Memuat kurang dari 6 komponen dalam silabus',16,'teks',NULL,NULL,NULL,NULL,5),(65,'100% mata pelajaran',17,'teks',NULL,NULL,NULL,NULL,1),(66,'95%-99% mata pelajaran',17,'teks',NULL,NULL,NULL,NULL,2),(67,'90%-94% mata pelajaran',17,'teks',NULL,NULL,NULL,NULL,3),(68,'85%-89% mata pelajaran',17,'teks',NULL,NULL,NULL,NULL,4),(69,'Kurang dari 85% mata pelajaran',17,'teks',NULL,NULL,NULL,NULL,5),(70,'100% menggunakan buku teks',18,'teks',NULL,NULL,NULL,NULL,1),(71,'95%-99% menggunakan buku teks',18,'teks',NULL,NULL,NULL,NULL,2),(72,'90%-94% menggunakan buku teks',18,'teks',NULL,NULL,NULL,NULL,3),(73,'85%-89% menggunakan buku teks',18,'teks',NULL,NULL,NULL,NULL,4),(74,'Kurang dari 85% menggunakan buku teks',18,'teks',NULL,NULL,NULL,NULL,5),(75,'20% atau lebih berpendidikan S2 dan/atau S3, seleb',19,'teks',NULL,NULL,NULL,NULL,1),(76,'100% berpendidikan S1/D4',19,'teks',NULL,NULL,NULL,NULL,2),(77,'91%-99% berpendidikan S1/D4',19,'teks',NULL,NULL,NULL,NULL,3),(78,'81%-90% berpendidikan S1/D4',19,'teks',NULL,NULL,NULL,NULL,4),(79,'Kurang dari 81% berpendidikan S1/D4',19,'teks',NULL,NULL,NULL,NULL,5),(80,'86%-100%',20,'teks',NULL,NULL,NULL,NULL,1),(81,'71%-85%',20,'teks',NULL,NULL,NULL,NULL,2),(82,'56%-70%',20,'teks',NULL,NULL,NULL,NULL,3),(83,'41%-55% ',20,'teks',NULL,NULL,NULL,NULL,4),(84,'Kurang dari 41%',20,'teks',NULL,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `subkriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subkriteria_hasil`
--

DROP TABLE IF EXISTS `subkriteria_hasil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subkriteria_hasil` (
  `id_subkriteria_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_subkriteria` int(11) NOT NULL,
  `prioritas` double NOT NULL,
  PRIMARY KEY (`id_subkriteria_hasil`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subkriteria_hasil`
--

LOCK TABLES `subkriteria_hasil` WRITE;
/*!40000 ALTER TABLE `subkriteria_hasil` DISABLE KEYS */;
INSERT INTO `subkriteria_hasil` VALUES (83,45,1),(84,46,0.5296070795769015),(85,47,0.1515404539051346),(86,48,0.1282407399951657),(87,49,0.11669121673644427),(88,50,1),(89,51,0.21178188314887259),(90,52,0.18580955091954202),(91,53,0.174678551392686),(92,54,0.1684946627666549),(93,60,1),(94,61,0.21178188314887259),(95,62,0.18580955091954202),(96,63,0.174678551392686),(97,64,0.1684946627666549),(98,65,1),(99,66,0.21178188314887259),(100,67,0.18580955091954202),(101,68,0.174678551392686),(102,69,0.1684946627666549),(103,80,1),(104,81,0.21178188314887259),(105,82,0.18580955091954202),(106,83,0.174678551392686),(107,84,0.1684946627666549);
/*!40000 ALTER TABLE `subkriteria_hasil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subkriteria_nilai`
--

DROP TABLE IF EXISTS `subkriteria_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subkriteria_nilai` (
  `id_subkriteria_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria_id_dari` int(11) NOT NULL,
  `subkriteria_id_tujuan` int(11) NOT NULL,
  `nilai` int(1) NOT NULL,
  PRIMARY KEY (`id_subkriteria_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subkriteria_nilai`
--

LOCK TABLES `subkriteria_nilai` WRITE;
/*!40000 ALTER TABLE `subkriteria_nilai` DISABLE KEYS */;
INSERT INTO `subkriteria_nilai` VALUES (565,13,45,46,3),(566,13,45,47,5),(567,13,45,48,7),(568,13,45,49,9),(569,13,46,47,3),(570,13,46,48,5),(571,13,46,49,7),(572,13,47,48,1),(573,13,47,49,1),(574,13,48,49,1),(575,14,50,51,3),(576,14,50,52,5),(577,14,50,53,7),(578,14,50,54,9),(579,14,51,52,1),(580,14,51,53,1),(581,14,51,54,1),(582,14,52,53,1),(583,14,52,54,1),(584,14,53,54,1),(585,16,60,61,3),(586,16,60,62,5),(587,16,60,63,7),(588,16,60,64,9),(589,16,61,62,1),(590,16,61,63,1),(591,16,61,64,1),(592,16,62,63,1),(593,16,62,64,1),(594,16,63,64,1),(595,17,65,66,3),(596,17,65,67,5),(597,17,65,68,7),(598,17,65,69,9),(599,17,66,67,1),(600,17,66,68,1),(601,17,66,69,1),(602,17,67,68,1),(603,17,67,69,1),(604,17,68,69,1),(605,20,80,81,3),(606,20,80,82,5),(607,20,80,83,7),(608,20,80,84,9),(609,20,81,82,1),(610,20,81,83,1),(611,20,81,84,1),(612,20,82,83,1),(613,20,82,84,1),(614,20,83,84,1);
/*!40000 ALTER TABLE `subkriteria_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'127.0.0.1','administrator','$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36','','admin@admin.com','','suPo-mllp0t.uEXFBxuWeu01206297e748015fbf',1501472329,'c.JN/a5NatMoXrnk5WrY1.',1268889823,1539137282,1,'Akbar','Abustang','ADMIN','0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (7,1,1),(8,1,2);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10  9:38:47
