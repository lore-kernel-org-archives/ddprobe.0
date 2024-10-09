Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703C1991CE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728487554; cv=none; b=R2MceGSN1pijGsPGIxEHZqPmKqxF1iS3M4O9pht6rh5NMwFDXSXKFrqLTmLLvnd1aaR8Ejwu3xzwsGHAUOkF2TkwYJ1YXLotckxe02HCmlkmNIVYrgq0cCjmQxZ2K9wwvOISPEx25We8oO5/lnJRqXGnAMTPAePG9bwGuoypmZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728487554; c=relaxed/simple;
	bh=vmn+JzccBV01AhV7hnw/AbKjH2evkKsDKk7tSHfdjUo=;
	h=To:Subject:From:Message-Id:Date; b=AFRECZvtc1cRcZAUF3/hb5dwNnSJsbYEUTLAJzGPPWW7h1/SdO1Q7oXLjiAVucHb3QdHzl7RrH/zK1zwzRVjxp1Sfmimc6/zt735sfq9v3tjhHS8bu0hAWH5H1Uy5ofIGlLDHbM5t5sM1E33e6TC2MU8bBNSbpBbSqF47QtYBmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5nZYq7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5nZYq7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF02C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728487553;
	bh=vmn+JzccBV01AhV7hnw/AbKjH2evkKsDKk7tSHfdjUo=;
	h=To:Subject:From:Date:From;
	b=Z5nZYq7+slN86EUghXxAHpWNpFVSRszlqcI4uLk8Ef5dx4JDfHctFdrxuurEEd+i9
	 9bSCSllh9eMvZpsKE9CIZDU7Jgms8rhHl7kniU/0xQHlyZascEUIpdGaaCNdXBT6u6
	 FLFLmtxwHDnKF+tPeaLzsIKAnfLkEDcJpGf1T8loiTNZSlv1GlidL7M+Ip1HxuM31b
	 Yq63IaZpgWIij/lF4dTFnL/c6uL4aLish+Ad0ghiLENy8q6tRl//guJMaepqGmKSEZ
	 JKwf8CyjFIAhihTAQYZK/q4fRiyAohbu17OteHtYHUso5/qjJfNf+fmnbIVBf6NeoK
	 2/aChU7aRxkuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9650DCEE320
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848755360.3110.13423180583270635224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca91daadde2478f9a6eaddc8c58547460dd4ca8773b4952af8709857ad3a021
Date: Wed, 09 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728487553
