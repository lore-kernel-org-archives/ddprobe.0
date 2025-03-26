Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EAC1E1E18
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743004794; cv=none; b=S0JCy0vU7SW03z9RpPTxV4zmsO954IA7ErTJrIm6Tr6c/DIbajb5BVxtXr+uCbr2KsGPV1tePwUngWiIAyz7rnyaBvSAFhf6yd2Wr0mtO3hYGBrME9rkrzkUA5oJVHT+vtn9WvnviZGlvtEBPN5S8Sa21blD7igt2M9pooftzFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743004794; c=relaxed/simple;
	bh=w2SkeOzWlpFgRc6XrfoRLIBgc/kGAN8HvTFLItIgHbM=;
	h=To:Subject:From:Message-Id:Date; b=hbiYn4Jd0jirpR8Ak2Jo3P8DZcm3sQJlnC4IMXcr1JEeg/e71IJaYgGNmtTbSWhPERwDsxup3y2qMh9Oujcvhtcs5MOkCbeS/iJBh9MJgNXFma15I26rESt24ntZvVMKaQOOyi2ia8u39tTV5sKQ5LL4Qmgff/4XxkSoNWe70WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzYRU4x7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzYRU4x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADDC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743004793;
	bh=w2SkeOzWlpFgRc6XrfoRLIBgc/kGAN8HvTFLItIgHbM=;
	h=To:Subject:From:Date:From;
	b=fzYRU4x76BLR0ey5oxC1WFbZ7QhdSlB95CJp80nNQ8XiFAK0ENPoYgsDgDhKpMTPP
	 qGDFg9lrdUuK6H5rA80YbAbFh/RmF+hbagE/FG16vvCD5DcJgTzA5MAOAigla2WVAu
	 CLvtPSacRO3Stv9JWGzFTAmRlsDIdErB1DQCPfVOf8AMzBbZX73IeWl+NfEHRJ7kQR
	 SAHfjzxZJ+IGqaDBpqhguCtNbjSyajlrJNX0RHtacpswixAXCGInSaQeoH6HkqGKMn
	 95fEpkRv2k/Q5J0mMlEtZIOWsP4VnT6cRBSjRKENV/OZ+o6H9Nhhev9B8ljFcieZ0Z
	 TbpjoE+sfSNqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938FEC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300479358.7156.2471512040177878310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3f47b9c4ce5b5d59f1de745e468cb4119eaa6dec046fd0b59fdd780171f267
Date: Wed, 26 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743004793
