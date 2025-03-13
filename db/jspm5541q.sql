-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm5541q
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333998680 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-02-03 06:25:47',1,1,'提问1','回复1',1),(42,'2021-02-03 06:25:47',2,2,'提问2','回复2',2),(43,'2021-02-03 06:25:47',3,3,'提问3','回复3',3),(44,'2021-02-03 06:25:47',4,4,'提问4','回复4',4),(45,'2021-02-03 06:25:47',5,5,'提问5','回复5',5),(46,'2021-02-03 06:25:47',6,6,'提问6','回复6',6),(1612333998679,'2021-02-03 06:33:18',1612333899036,NULL,'‍1111\r\n','fdsa \r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm5541q/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm5541q/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm5541q/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/jspm5541q/upload/1612333821702.gif');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingleixing`
--

DROP TABLE IF EXISTS `dianyingleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333651853 DEFAULT CHARSET=utf8 COMMENT='电影类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingleixing`
--

LOCK TABLES `dianyingleixing` WRITE;
/*!40000 ALTER TABLE `dianyingleixing` DISABLE KEYS */;
INSERT INTO `dianyingleixing` VALUES (21,'2021-02-03 06:25:47','电影类型1'),(22,'2021-02-03 06:25:47','电影类型2'),(23,'2021-02-03 06:25:47','电影类型3'),(24,'2021-02-03 06:25:47','电影类型4'),(25,'2021-02-03 06:25:47','电影类型5'),(26,'2021-02-03 06:25:47','电影类型6'),(1612333637236,'2021-02-03 06:27:17','爱情'),(1612333644166,'2021-02-03 06:27:24','友情'),(1612333651852,'2021-02-03 06:27:31','科幻');
/*!40000 ALTER TABLE `dianyingleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremendianying`
--

DROP TABLE IF EXISTS `discussremendianying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremendianying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333922984 DEFAULT CHARSET=utf8 COMMENT='热门电影评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremendianying`
--

LOCK TABLES `discussremendianying` WRITE;
/*!40000 ALTER TABLE `discussremendianying` DISABLE KEYS */;
INSERT INTO `discussremendianying` VALUES (71,'2021-02-03 06:25:47',1,1,'评论内容1','回复内容1'),(72,'2021-02-03 06:25:47',2,2,'评论内容2','回复内容2'),(73,'2021-02-03 06:25:47',3,3,'评论内容3','回复内容3'),(74,'2021-02-03 06:25:47',4,4,'评论内容4','回复内容4'),(75,'2021-02-03 06:25:47',5,5,'评论内容5','回复内容5'),(76,'2021-02-03 06:25:47',6,6,'评论内容6','回复内容6'),(1612333922983,'2021-02-03 06:32:02',1612333773339,1612333899036,'11',NULL);
/*!40000 ALTER TABLE `discussremendianying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333804453 DEFAULT CHARSET=utf8 COMMENT='电影资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2021-02-03 06:25:47','标题1','简介1','http://localhost:8080/jspm5541q/upload/news_picture1.jpg','内容1'),(62,'2021-02-03 06:25:47','标题2','简介2','http://localhost:8080/jspm5541q/upload/news_picture2.jpg','内容2'),(63,'2021-02-03 06:25:47','标题3','简介3','http://localhost:8080/jspm5541q/upload/news_picture3.jpg','内容3'),(64,'2021-02-03 06:25:47','标题4','简介4','http://localhost:8080/jspm5541q/upload/news_picture4.jpg','内容4'),(65,'2021-02-03 06:25:47','标题5','简介5','http://localhost:8080/jspm5541q/upload/news_picture5.jpg','内容5'),(66,'2021-02-03 06:25:47','标题6','简介6','http://localhost:8080/jspm5541q/upload/news_picture6.jpg','内容6'),(1612333804452,'2021-02-03 06:30:03','最新资讯','编。讲述的是一名居住在吉祥寺的单身女漫画家，由于赶稿而忽略了爱猫沙巴的身体，导致爱猫因病死去而不自知。自责的她处于静默的情绪中，无法再画出漫画。直至女主在宠物店被一','http://localhost:8080/jspm5541q/upload/1612333795129.jpg','该片是日本Asmik Ace Entertainment公司于2008年9月6日发行的文艺电影，根据大岛弓子的同名自传式漫画改编。讲述的是一名居住在吉祥寺的单身女漫画家，由于赶稿而忽略了爱猫沙巴的身体，导致爱猫因病死去而不自知。自责的她处于静默的情绪中，无法再画出漫画。直至女主在宠物店被一只小猫吸引，取名“咕咕”，重新振作，之后猫咪咕咕陪伴着女主生活，一起面对爱情、面对病魔等。\r\nM馆长观感：有时候，小动物们才是生活中最厉害的心理治疗师！\r\n电影豆瓣评分：7.4分\r\n<img class=\"normal\" width=\"448px\" src=\"https://t10.baidu.com/it/u=4247456445,97010235&amp;fm=173&amp;app=25&amp;f=JPEG?w=448&amp;h=672&amp;s=D2846FAF42226CBE548646630300307F\" _src=\"https://t10.baidu.com/it/u=4247456445,97010235&amp;fm=173&amp;app=25&amp;f=JPEG?w=448&amp;h=672&amp;s=D2846FAF42226CBE548646630300307F\">\r\n\r\n3. 《小猫奇缘》\r\n鬼冢太郎是一家大企业的人事部长，他一向严于律己，铁面无私地执行公司的制度，对于不能为公司出力的员工毫不留情，公司上上下下都很怕他。当女儿怯生生告之想养猫，他找来一大堆不能养的理由来说教。而次日晚上，鬼冢在下班的路上遇到了一只小猫。小猫可爱的神态让鬼冢不忍弃它而去。但抱回一只真小猫的事实让他不知道怎么和家人交代，于是他只好把小猫放在公司租来的员工宿舍养，大白天也拉着窗帘，打手电筒阅读养猫指南。这间特别的员工宿舍也变成了一个神秘的地方，一个只有鬼冢部长和猫分享彼此心情的的地方。\r\n\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remendianying`
--

DROP TABLE IF EXISTS `remendianying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remendianying` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingbianhao` varchar(200) DEFAULT NULL COMMENT '电影编号',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) DEFAULT NULL COMMENT '电影类型',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `dianyingxiangqing` longtext COMMENT '电影详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingbianhao` (`dianyingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333773340 DEFAULT CHARSET=utf8 COMMENT='热门电影';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remendianying`
--

LOCK TABLES `remendianying` WRITE;
/*!40000 ALTER TABLE `remendianying` DISABLE KEYS */;
INSERT INTO `remendianying` VALUES (31,'2021-02-03 06:25:47','电影编号1','电影名称1','电影类型1','','http://localhost:8080/jspm5541q/upload/remendianying_haibao1.jpg','时长1','主演1','导演1','电影详情1','2021-02-03 14:25:47',1),(32,'2021-02-03 06:25:47','电影编号2','电影名称2','电影类型2','','http://localhost:8080/jspm5541q/upload/remendianying_haibao2.jpg','时长2','主演2','导演2','电影详情2','2021-02-03 14:25:47',2),(33,'2021-02-03 06:25:47','电影编号3','电影名称3','电影类型3','','http://localhost:8080/jspm5541q/upload/remendianying_haibao3.jpg','时长3','主演3','导演3','电影详情3','2021-02-03 14:25:47',3),(34,'2021-02-03 06:25:47','电影编号4','电影名称4','电影类型4','','http://localhost:8080/jspm5541q/upload/remendianying_haibao4.jpg','时长4','主演4','导演4','电影详情4','2021-02-03 14:25:47',4),(35,'2021-02-03 06:25:47','电影编号5','电影名称5','电影类型5','','http://localhost:8080/jspm5541q/upload/remendianying_haibao5.jpg','时长5','主演5','导演5','电影详情5','2021-02-03 14:30:44',6),(36,'2021-02-03 06:25:47','电影编号6','电影名称6','电影类型6','','http://localhost:8080/jspm5541q/upload/remendianying_haibao6.jpg','时长6','主演6','导演6','电影详情6','2021-02-03 14:25:47',6),(1612333773339,'2021-02-03 06:29:32','1612334087','猫星人','科幻','http://localhost:8080/jspm5541q/upload/1612333688606.mp4','http://localhost:8080/jspm5541q/upload/1612333697660.jpg','90','胡继。胡月','风大','该片是日本Asmik Ace Entertainment公司于2008年9月6日发行的文艺电影，根据大岛弓子的同名自传式漫画改编。讲述的是一名居住在吉祥寺的单身女漫画家，由于赶稿而忽略了爱猫沙巴的身体，导致爱猫因病死去而不自知。自责的她处于静默的情绪中，无法再画出漫画。直至女主在宠物店被一只小猫吸引，取名“咕咕”，重新振作，之后猫咪咕咕陪伴着女主生活，一起面对爱情、面对病魔等。M馆长观感：有时候，小动物们才是生活中最厉害的心理治疗师！电影豆瓣评分：7.4分<img class=\"normal\" width=\"448px\" src=\"https://t10.baidu.com/it/u=4247456445,97010235&amp;fm=173&amp;app=25&amp;f=JPEG?w=448&amp;h=672&amp;s=D2846FAF42226CBE548646630300307F\" _src=\"https://t10.baidu.com/it/u=4247456445,97010235&amp;fm=173&amp;app=25&amp;f=JPEG?w=448&amp;h=672&amp;s=D2846FAF42226CBE548646630300307F\">3. 《小猫奇缘》鬼冢太郎是一家大企业的人事部长，他一向严于律己，铁面无私地执行公司的制度，对于不能为公司出力的员工毫不留情，公司上上下下都很怕他。当女儿怯生生告之想养猫，他找来一大堆不能养的理由来说教。而次日晚上，鬼冢在下班的路上遇到了一只小猫。小猫可爱的神态让鬼冢不忍弃它而去。但抱回一只真小猫的事实让他不知道怎么和家人交代，于是他只好把小猫放在公司租来的员工宿舍养，大白天也拉着窗帘，打手电筒阅读养猫指南。这间特别的员工宿舍也变成了一个神秘的地方，一个只有鬼冢部长和猫分享彼此心情的的地方。\r\n','2021-02-03 14:33:34',10);
/*!40000 ALTER TABLE `remendianying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333913853 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','i02xestonvlwjvunvh82g0rkhv2rzx81','2021-02-03 06:26:53','2021-02-03 07:26:54'),(2,1612333899036,'123','yonghu','用户','x35rib914y7ncdn9rogzjjpumsl153of','2021-02-03 06:31:46','2021-02-03 07:33:57');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-03 06:25:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612333899037 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-03 06:25:47','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com'),(12,'2021-02-03 06:25:47','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com'),(13,'2021-02-03 06:25:47','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com'),(14,'2021-02-03 06:25:47','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com'),(15,'2021-02-03 06:25:47','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com'),(16,'2021-02-03 06:25:47','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com'),(1612333899036,'2021-02-03 06:31:39','123','胡月','123','男',36,'13612613633','56565656@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 12:14:09
