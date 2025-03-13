Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457F32E3380
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741842534; cv=none; b=r5RMgmb/2z2sWhMl2HOorEi5W8h1cKtih/8maEqbhGnR/wjwhEsQwEK4Aek4sG7CF6wLtynVyoM4/FJ0mP1T97LQSfr5IRskx0fa0+qDMCUEJq3ZPzGskz65ZNgA1tsXKCX+BQUFskeUvqtQlanuInJARWYJKeG32z3Gomn/yRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741842534; c=relaxed/simple;
	bh=chGU4s0eyzpf+BlodkjoGnEgLgRjA/rDkp4wb+9Hsvw=;
	h=To:Subject:From:Message-Id:Date; b=uK/O6plt9qgSKjAc5DeciKzyh9ovG7ZFhH1p9vaKZJaabQ8mTbpikdWFsJ8xWBKEGNE81t7JUmnzI0wznKxBIjBRA1aTpiXkcGwkyrzGLHSHvsSY+4lgxuZAVk0+t5ww+3VX9atrjGwZb8669Pf/GqtoBy1X2J7YJtqaRhZ4rCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxtriaLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxtriaLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C2EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741842533;
	bh=chGU4s0eyzpf+BlodkjoGnEgLgRjA/rDkp4wb+9Hsvw=;
	h=To:Subject:From:Date:From;
	b=OxtriaLDOV+ZxkozKEV+ig+A9Jay4bInAFwIXxqBFmoJScIJuswEKYUo7MBe+kDau
	 1cJbc9diLmmwsvlsUEZbDUflBTPVwRqvbnArT5dvI3JeZNeM9wVct7+CI93+wcctGr
	 RooybKtwDwF5f5l1yGwEN61kqlCjI0Y5vbQfa0s20L3+gNdKGntpm5q2zxOICtb6ZW
	 MLgkFcD6f2nPq4xkQoFVq0+/unB5AGmauk4kA24Ala+hQ7iokw2JWS5FukLfVKBUry
	 0hYR4HgnfOKIEqeeQaVw0e9f0ssKxYYYKt/HMx//FxJLlYuMTRv6aRnrrneIVsg5Ds
	 Se+8TfO5RhUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F68FC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174184253361.12587.15264054992906529350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07fca6271f5da1c612bbd5da196890f0eb9213779688fa82bf8b01df1aecb07
Date: Thu, 13 Mar 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741842533
