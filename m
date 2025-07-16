Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C9B67F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752651594; cv=none; b=EHpFRGEVcGrL9p7ImA+tgGLHSRbLFyvhBxxWDF2/IhI5lVwIU/2W7EgxWuR8/tFHejCaRmPfvuUtF5vyKlT/XTTC7gKkMcc/7j5p5LiAnzKjnZvmPyuxUYFwcq1T62GJe5PBe+oboAWMv9fnzGv7yTNTUzs8Oe+DVC1RNoalyuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752651594; c=relaxed/simple;
	bh=R+ikf197k0ojd7lilL7BQ+E5X/8k/DCcsqpe5hVqMy8=;
	h=To:Subject:From:Message-Id:Date; b=ElnIZrkXkVOL9clT25ibZeSqpC5RqLK8T1PL2gEUU/59Mw432jL4FbNbYlH2hr07La9EudQcatMLDs7+vR6+Z0RBTTcRumHU+mt+2vPpN7Yn9PET+yi/V8yh2Pn9qatHW2diX3rSRb//+w2Y9MYZ2fVZ25V8cqz2YKxspjbGE6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibsnMKJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibsnMKJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9EDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752651593;
	bh=R+ikf197k0ojd7lilL7BQ+E5X/8k/DCcsqpe5hVqMy8=;
	h=To:Subject:From:Date:From;
	b=ibsnMKJ4ow31MnC87eIsFT+pXXX7xePeMSf8+MX8vo0JD+agaqMxVZsEz28io7niN
	 kzjzFArh5oLV2bWIQ9IrbibUAiaGj7wybzDaEdnJEGIzTP1+ZpA3DtFA0zmxrybsHF
	 Lezeh9AFyksI6PGGUdDDVd36zJMokpb6VCGq41p0rtcuCBix1vrO6YWXJW7Fkq1LTx
	 044bMZw++ZkrpuGo2wOC1y+v2pRbHjoX4wn7EyBo3oDC0Uyvrebv/KrjJJYIVSd8LD
	 Hmbh8MN2Q+kfFudKGZgd22eVF95dvYrUmJWjaY9NypsptTAgTeKCFF/anhXjGOK5Q+
	 X0Bqc64EGmcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB17C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265159361.1870.15139312832399127864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6d183d9acf425f01ae58578f54b9d5762c4d632922b291c992df9b7cf23d7d
Date: Wed, 16 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752651593
