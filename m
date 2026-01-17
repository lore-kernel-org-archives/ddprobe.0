Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187763595B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768623234; cv=none; b=VrMt04ddGuBKBbLocWPTeu6zivsuXB/5BfJGpavmSrhx1ewrS0jkYZk4jz0MBOjVpForwIxNob5wE/29O6EpYAa7Gf7BPpgv2XTC/cWpEa/31jfJBX4n2ELGDVvvnqHNLFfKe1soH97+V2xsPfAmi7y2Q7tnAmSPZaHDessz7qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768623234; c=relaxed/simple;
	bh=0HXFk/w5beJ3I2btd8JKo6lbK7PE1LqI69xPsqNZWx0=;
	h=To:Subject:From:Message-Id:Date; b=Wb3diBGOg0bTlKV12zp+SfDWjliEezl2HFiBH2/VyI29K7Xj0xS0gSbyLGniUz7UBrBbjcj4AmL1yC+y3BubwcA9u0j45KYIxywrcm0woOF+ARd511VN0RRPsDk76VCijsFG6aseQA2KOXHDS0eBQfnL8CIOllhT39bwmCQbkYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFFYbUx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFFYbUx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD215C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768623233;
	bh=0HXFk/w5beJ3I2btd8JKo6lbK7PE1LqI69xPsqNZWx0=;
	h=To:Subject:From:Date:From;
	b=ZFFYbUx2ihnVH9FMZzEiE0FSN5d6HQmY+aCY3xP+rBXz6te8Tby8zOwg0hn+0+X+5
	 Mb7mK2lCqP7ggGloLCo7e+njMAg6uRnjNUg0fFuMjFPe2JSbuUWis6J13EjvK7yoGj
	 QHyrW+e2YHLxPSkqDaVIb/kiL5B9jTxSEM+Iih3InR8NjPh5epGf2jrHg7/JF1aysd
	 nNpOMCWgvq+OJm8rEBEhCdxYOcI+/fcPvarmd9lmZQ1raHB92UAbWyBdaqfVh3VWSs
	 NHimGtG2ZGWYfpOhKZ103v4U9fY6EOvoJ3+s6dMTREzLSbbLsfh3WHEehwP3+Uqgg6
	 45BK2L/q0uIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C066C982C5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862323357.23091.8321101183219757036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d25d2513fa163347fc08bbd499a2b0efb39960b39469a2e41aba6704ee8834
Date: Sat, 17 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768623233
