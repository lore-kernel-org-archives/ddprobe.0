Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AE810A28
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713565823; cv=none; b=bfTBrqhNJ2Up5ekHKBwo9u/fWAVAnjL8LDGfJ7Q206IJUIZCY5g1AqrSHuDsl3SioGrEol959En3yyqDa81HoczbzNVBjAaiA50k9xM+/qSBjAyiK1Bp5Nzfr3rk3pTSN71qiWrYNWMFNo1Q6EE5Oc1LUyuQ0g0uVf9xc9jxZzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713565823; c=relaxed/simple;
	bh=TakVPy9Q93K95okgMg9+75ncIZXwufr4urdDSgOHGWQ=;
	h=To:Subject:From:Message-Id:Date; b=X85QTSWIYYdHNxMK4Vrr9zeBFAIHfWx8K9UexOl6jnqutAIWj6drUz9bBgJiFol4lQ89vZ1KtUreaKaBbHR2pzdbXI4cKBho3z3Km+PLsdumFL+LOtdhNyZGt9yLmChIDy9icXSlnFwL6wjRkB6xUM1g4Uo0ABVep0fAeB9J3qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJZTZoRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJZTZoRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E934BC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713565822;
	bh=TakVPy9Q93K95okgMg9+75ncIZXwufr4urdDSgOHGWQ=;
	h=To:Subject:From:Date:From;
	b=ZJZTZoROLnjcj0rgMD1+Ja7ys8+Z3kjvggbLCdAr0SVKF3kDnm2RhMRWHQ6fO7V3d
	 q76gY2KeQYRxoz1CrZ/Z96pndeZ73JmeopZCAE5+BCq5EIGAvvStYgOS5vZRwraXyC
	 ALdpxHkeAnJXa4S39Yh9ag6B6n2N2sR3Wh4uSSAcOhETmcdk+lflT7adoofPaywxBC
	 RlmdSXJEP1X3smKxXaJmzslubLP3wFimxJyDMSunGLp1D+pl26qHLzFK3WKNtCluLp
	 4ZJ+q3Ijj/1BJXW+U5fjA6ahoVx+efL3VhAD2Ml46Wt7jD40WFDVx4YNgEW8zsXM11
	 +ksa2+CGTC0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF85C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356582279.27795.7368534111573286844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22684ab025c19fd1282367fb2d6e2c1a8ac3f31a64142a7316476f4d9c27c60d
Date: Fri, 19 Apr 2024 22:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713565822
