Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E284A33
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781967394; cv=none; b=QozyqYWQPZeAPEbjXUm2Tct2r08/YTcES6QFeX2axyfXrseUq7E1w/8BTNAabpiebY5HYgu44qCi8yRaualp8yzzwcmCfigN9g3ufooxji5/JRoboPYEq0kVlPzg5RC67hzLsVL7bSuYEmmq9u4nsbOHMqDvjpORo1yfPVWAogk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781967394; c=relaxed/simple;
	bh=MIfUvSXguP+7fH6aSM7blkemvOOcFjBREh8c3HYMsdY=;
	h=To:Subject:From:Message-Id:Date; b=dBNX4DFPgLj3cw+jYwK01jDme+h6ehX+/z7ag97FOFx//NeKDNLt5EJ4eYTY7EDU3VA8F678cyLjRrIC3ICbVvn145pnn6Eu3rz9wFOeVBUz0yMbySY4CbpuezvM7i1/Yg6NNXBeD6XlSf+C8ww3CGqVHJL8VvDpe1VTT2Tf+bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbQ/MR+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbQ/MR+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB71CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781967393;
	bh=MIfUvSXguP+7fH6aSM7blkemvOOcFjBREh8c3HYMsdY=;
	h=To:Subject:From:Date:From;
	b=hbQ/MR+PzaSp8T7+3cRd3FOCiooy7oOm/TPzeveUDlX90YspzhKyMrUp3gq0xsTSO
	 j4excBWj0XpRX+SyLJZFf3mXYuWLOFSGP+Bm50B/fRudmkdGTDux7z8x94Xf35P5DB
	 O4e1nKrFPcIMinN+1Lr8rwjYCl+RQILn6yypoxHQCP3los2BOLhuyDzH0Dvq4kasv3
	 iSRoSLW2wLbXYzdheq//eXJ/v7+AA7R9PH2Ejb71CqfMWhImCQaZaQovlsvQsQtRP/
	 gD1ULK9LarV7Hs3ooZbOiPuDMhJmNIO1rpRuLDnXnm2hghyTjN+iBHMPWaDkY9YbjP
	 iqbIFoO3WCKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F67CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196739369.14214.9943415360303382597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41115a9fca729c17d204a9e1f7d240fbde9e51f6b5424d00ed33677c982e05d1
Date: Sat, 20 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781967393
