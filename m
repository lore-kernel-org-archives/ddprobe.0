Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8B2EEE65
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790665234; cv=none; b=mdggX8UI9fLDdLOAA0I6aMNvg0RPOZvANG0AWMYevxwq2DFFNDGTawtTwTkbYDo/y0L65dLhy+Dfm2znXqTbFp36s7ZKOVjx7GeCN6MUQlEkpcZeKBUTr37n/ax71Oe/Mq1A28s1AcNthzod91ieZjfmurzZ2OIuyWLkgRNl1uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790665234; c=relaxed/simple;
	bh=QCfFC2T6j3iAQXkIHVT2CkfM4mVtuXt9dPxWI88nv6Y=;
	h=To:Subject:From:Message-Id:Date; b=GdmlVkYtE1v0+l5DV/X3y5HrSV18t15j909jFlW54FCM+mMFIkopH/Dxn7Ca3l+YiVzBsAcMgttKGIyxztnX8Ry+xiKykmbydpnRc5YAqpIgABa8LppEQ3Solju1XCw3KJWpWthVoymINONf3hc65Kw79VodCXJU/t2+CzhRQUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4MBEp/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4MBEp/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D303DC4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790665233;
	bh=QCfFC2T6j3iAQXkIHVT2CkfM4mVtuXt9dPxWI88nv6Y=;
	h=To:Subject:From:Date:From;
	b=Z4MBEp/YKNvr9ISbeeGqLwJ6gsZaV1ceUez6aRgfJb5EJKKC3nxHrQpPh+883yEa6
	 9psozL3ZtJq26sopcIvUGSp2d7BKvvexPlA1wb2lEb2P4shLg3pyyQsEKlRKDBvvES
	 LfpI62U1DpxxJIr5yri1JE54YQjQtN/DEsTDcyxtaJyg4rLsfV9J+ZYulu5DonQ1ZT
	 U/j/hCsNmhjRp9vnHM3hOQDRR3w3332Pkds9TaEifke+0YLqjoDAnzjJulXzJY59nC
	 jpzUDW7vp9moxkMJuBJ2xjUwfU/QhxqUU6PTTBdSxzh3smc9jA6FVMxChNGumoe5jM
	 4n3bmcimjwe9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A2ECA5FAE
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066523371.5011.15177161079157611502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8eb3e74e182692c4db6c41c58ca4a8db8e82ad995bc1cac0f01c433d5e40e4
Date: Tue, 29 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790665233
