Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC257CA7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720497383; cv=none; b=WTBytSWUUyAt3teH0yIrICdJ0pwtsHq3decfgz1Uo1wX+EhJCdqBTlHXHm2NR/g79DjWvV7q4jerXJWpAfitRaHXFA3xjaSSV8Qp6lzaiRVmLfoyr1kutbJa7QyVI4iSIhmgG+Fr/zgf60a/IlVuzURUhi/6tkPMSWgvQEqrtkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720497383; c=relaxed/simple;
	bh=0x2AvMPGDvZapOdFAuhlXr3R1Kp+74zlhWYzn+HBs+M=;
	h=To:Subject:From:Message-Id:Date; b=ngOSQjOdR4DnM4JnUDChY26f2JWkd4wI8L52GR2oGwOvSTS7brstaBccwGH73ywrr3fn0eKuULx4LTX1FIbrFxg5kYxIdba2B6qMvP068uECsvjIpImQH2mteV83tD6s48lAG1KRb4z48OTR8vn76Fp6N5sXNQHyVDs2/3P49YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1UmyipH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1UmyipH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB09C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720497382;
	bh=0x2AvMPGDvZapOdFAuhlXr3R1Kp+74zlhWYzn+HBs+M=;
	h=To:Subject:From:Date:From;
	b=N1UmyipH3Sag/AsEF1/sPSlAc/tAn+39PsQ7cZFSg6jfV6OQuZgfTgTeDghw6iu7K
	 juC9dBsVqsqVcUcKcQ3jXUbIn4o5aqxOb+0AqlwJCKVx29gn6JpivK3x1Rdd0DapWh
	 N03FHZwmjtWsU269432mC3UAFcz5IjtxSTWWFsCUrJBSgm1LBWYTof+dmhFku9pMSD
	 ISup0xPOG98XyEa4i5XD22omb68bCOblCXJRhbSgkCwMmAfzyegyuhckn7PdIpZr5h
	 belJ5wOSW/UQ5kgrgXLFx10sw4N01eZbEEKnv1CfZb7Iw+K6EotpkA7NcAbjpEhH4L
	 bA6oezXHGDJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA89C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049738275.27689.10387157968706995183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1b26fabeef507950fc520787f2896a47ba1c71925904fb5dc445c1b8f5fb1f
Date: Tue, 09 Jul 2024 03:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720497382
