Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE6C3C1986
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780388674; cv=none; b=RahDertYM+wmsqCSIqNk4Xu6h/wBIE1jrsHTFGEgVfp5DF6xa/vCijzkodqeAJ21y5oodAFFruFgf329wBRYwzaisjWf0OxhX1ibJBI0Hv10QSunP4T36XTyoaWhecMe81csHma1KMpsA7eX3cCDWosHCsv7ghjy5f89e+/w/GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780388674; c=relaxed/simple;
	bh=m8J9BKB4oIdnyPSHrh8Tp7Ynpa1/4Z6aYBlhADiCG9s=;
	h=To:Subject:From:Message-Id:Date; b=TWiyhhDO+QYHGrAD7nIDTCkPJ+7/p1A3GbnxyeSUHG8LHpTtt/gZ2h2PvVMDjgyslKSaGqPu19g1FrHaAV8PW6VFaJuH5NQE8+iFcIBW486CxHV7Pyc5qMRmBMO3eVL64UsZ15NsW0jS7Jy5Ps9dChystSkkI//c9nhlGXZALkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3ywAd9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3ywAd9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D89C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780388673;
	bh=m8J9BKB4oIdnyPSHrh8Tp7Ynpa1/4Z6aYBlhADiCG9s=;
	h=To:Subject:From:Date:From;
	b=Q3ywAd9WcUQlDwhcMH92g7MEUarHVDXMPKdEEIxd/4QvB+uPlMz7hM1ssx3DgvT4J
	 EEv6qDDyhZ39sy0wEO9KN/GBKZUUn3UFILJ12q61jYywYXhkeD367JboWi3yRc1Fji
	 pqgJwh25AFO3e2oYCa1RgK4KyNJKr9LpTz0S/kZYE8s1+A3RPPMV0Mr6S1x+g2PDc0
	 R1FD1bjEl8vzMjJyP2e4mfzFuJLNBvzCLMUPU6rfcYERIzesFssuNIX6OjjTfWUlea
	 87iHP2syZgwGirZI227tyqmuqDnsOcEfY82u0jZ+BTxGnep27EkWJii/ENxQTyW3ks
	 7C1BVA61JFshg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A3FC5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038867368.21934.14928026688232224859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc2b4ab032a79d06fcdd0062b5a9c9b3318ae1eab148c7c9b8e949f806bbdce
Date: Tue, 02 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780388673
