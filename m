Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459FC2D9EE0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755685194; cv=none; b=spsH5NBx96bXaS6S5GnQUQxPGrxUJ+iWlH3OLoo9BgnQBnQINymnIA3InRu+ASFKei2Z2979Oc+++hbYD3/sNGLCIuqinro3lprrm3Pg77h2wT4DMyFhHJNT4CVsfbV03RIkXycipLjPNU1amn6EpPS19dCb7D9Q3ehWbHpVnR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755685194; c=relaxed/simple;
	bh=s6hvpkJCTGYqY6xlmBXdYL5gz0xRoBR4PbCMER9votU=;
	h=To:Subject:From:Message-Id:Date; b=Y+0CucF4aSCM+ewwaGteZJ0ibWzceQXvZx3gVtdSuL9o5dfx/L6KaWYqCs7yi89/tlxd/YPmfuBNgR516DmmZWu3HfaktBwedIpbGpm8ilOVaCkvKFPlgeBF66VJ0FDTwKKMhIL7H7nFztQEKu1cH4vm2eqAAnMIvQiQGFD40Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRjFXNhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRjFXNhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC42C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755685193;
	bh=s6hvpkJCTGYqY6xlmBXdYL5gz0xRoBR4PbCMER9votU=;
	h=To:Subject:From:Date:From;
	b=gRjFXNhH4JCRUTBhO6EGqD+l15cnp+Fc8u3YjpeEVkrBIlKNBtgistcECdu3+JDY7
	 WVndS7B+LPKKIlmg3vT7QfGIkpWDc9FWre1I5wSiC5InVRqpihwpiKdjSAIkqkb37Q
	 eA+SroTBAI7QcOSiWsJ2kXDLT5a7L42Cf6aYOGNlkhMylnFaKkHrFZO6V12Fg9yoeS
	 mJkJyb3twwfHiNpTTcO7SvLDrcBIPkVj1FtdCGa4Ysne0ceatx0VV05z3wi+npY1Nf
	 GWJy+T/Z6VkFi5GisAU6PyOQuAkFGynK3uTdOFytA5hZqvBenu7OJcC6vELCXS5Nj3
	 RaChbL/wbvZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E992CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568519357.8535.1641894238861920910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae67835de15c5d44b4046e1dc18f61155891d6310486028103f39d9198b9d7d
Date: Wed, 20 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755685193
