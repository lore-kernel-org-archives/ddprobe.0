Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4180931F9B5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778104054; cv=none; b=gnjZOlv+37d0lN5drab/v9V59LdW8F9uADoMWcJfOoxK30CKwWbVhzlsd5FH27eHmDNWaut6bURHxNzt8Teo9ROYerkl7MskvlfYPFbmCA8TUCwaWpkY00x6dWP6UDjLwbAKVtXv44L/48ATv/RpK8V2JWTQ3SIqAIC18bxudhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778104054; c=relaxed/simple;
	bh=5cqqOmRfc1nq0xuxzHYLsNH0gK3ZahlSi5T191F4eGk=;
	h=To:Subject:From:Message-Id:Date; b=mGpLnn69mAwJPMiokuZ167YA4q1+dvk2FI7Qh7di2zHk9ZoqTzN0cqycPc24W4Tu4sCf1G3bwpvPv3Qsl4rNSOTH0CZBdSLYO5u/XKuikQXjwPnUfGvD8oCzcnot72N/fIMUPfLsBzNA+7ac+3zA0/OzzZu3Y623bJwNrlryogM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4933CB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4933CB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38D9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778104053;
	bh=5cqqOmRfc1nq0xuxzHYLsNH0gK3ZahlSi5T191F4eGk=;
	h=To:Subject:From:Date:From;
	b=u4933CB0EzYrGsJ1pBVH/dhYD4VptieIXkjP0gk3MZebJbKjZKLc0j/eTJ2ZfaGvC
	 XiAWmmVW1UwoZe5jZX0GL3VKwEKe4sb7/6aZbuefyNGqT4pE6ixX/mJKjUiAC68oyF
	 SR5pgRvloFoR9hOavL8QMeHA5AY8kpxzat2lsXw1LHc64+1N2+VHL7ejEedOmsWRPl
	 go7FzLif3T2CRb/ODGIJIsF8/CtgBrdND1JCMYbGvRjV2HtFxvO/cR0nZ1rwsRSnoG
	 dQSq3Xg2V+Q2l8hvevfwC8T6Cscql5HwqbcCwDn0KF2Tt6JdMdi5d/2IchYsisWoGA
	 P1iQALSnHZGzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE84ACD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810405369.28293.9377167448719494983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2e9b146895871a7243e779af1a6d63d29cea886d801541b73c6fa9d3588a4e
Date: Wed, 06 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778104053
