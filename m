Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C13F3EDAB8
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792354834; cv=none; b=Bip3XsyHoHlXq+p4YXYbRLsPVrhwHC9MGcFMwWquBcBR4up7w6O6fzkCJsxyCQ/o5eL/NuN5hT2ftJgjgkSHdKlU3HEKdr9nLiyGVjn9Kv1odie9fBdUlWkhKtrNOdlM+yTmKW2e8PlWvYF/yDzDm1pXiMOxwEsiwwaGw1FkNVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792354834; c=relaxed/simple;
	bh=NekOhNLENC0pjCZ9Np7TmosAn1aYaUN7kcsPTCLj4Kw=;
	h=To:Subject:From:Message-Id:Date; b=DHtvSMN7ClAfkNxBF7v4oOKZF97jKfepUTwxuEo/3JofZf/CD7M2eHnMVaCRfuEsEJBbaQvNLNnInRQVZsKg+DccHtf5h64zyWQiLVVx6S9uJufaKfHLycZ1Zwc66nVmqiMm3rSYPgiVTFLqifwCudTm5+VLOpgYyEPhlvTwayk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VizP11g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VizP11g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD69AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792354833;
	bh=NekOhNLENC0pjCZ9Np7TmosAn1aYaUN7kcsPTCLj4Kw=;
	h=To:Subject:From:Date:From;
	b=VizP11g8ffoCMXPLhIF+7HxJnN7AS9hvG/IKEafGkV11xWUX557wqgz2T12ptBQQI
	 fYCLrxZCXJbl2U9cGKc5dYhncujg+sPVCSnmPhIkZ1dBP0yFem3Xs4HLU1bdio34xi
	 uBgJeYxGYewtghsD5VX9ftRU4mQd0IG72CLcADSeGnKMS63Vt+T5zo9JqHX6NEBYQI
	 XKK/98Pwns4h+15tP3VM5VCZmw/e2bvtI9oggZgFQk9amqYQwktl7T8vhlIGWY7lh7
	 VKK0nFnRmCNd3KfHxoKGj1vexWy8JK15vqKrNk6eWNta1svtalBpGd9VJG5zwi7GEq
	 mPmbowK7RNlsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBECCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235483368.25648.4170146114797072848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b227bffe5586fec6c16e1bfad0e2d1623a6ef4ba2abe7bbf56a9ccad228383
Date: Sun, 18 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792354833
