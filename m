Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB52F47255F
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790249434; cv=none; b=hIKT3j0Er2Xmd3aQgFXwskZ3u3dW8Yxt68iHuFa1v75NZbtQKWb99u/vvaqjEfJPISgLPWKYo8JbGxIuOqBbp3JoSNGvAi0t5XMl49DWHzpkBo1qgXbxDpvQGHqLUhqmc+us41zs6LmcGbU1w7LvwTN9+K40pM1VMJNpvTN/+XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790249434; c=relaxed/simple;
	bh=3nJKMtWPmXaON6Ca72heaUnznCc0UbV+r7jcf6c9qZY=;
	h=To:Subject:From:Message-Id:Date; b=A2l0HopwUKC+IQbWv6qxXrkzgUtFf9KWV/1RfLdjDBYKcQvR3YYoS8vLjKA07uxS14D2fbmp3FoNBq32Jgb3KANEjaueSiNWOyVPN1LY1YDLhv2A/ixnYnf2BBDYo0nvudmlNwPKcKLgEWaBpdczznMwosSIKnWewzMf7lxrdVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzrtYpOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzrtYpOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD97FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790249433;
	bh=3nJKMtWPmXaON6Ca72heaUnznCc0UbV+r7jcf6c9qZY=;
	h=To:Subject:From:Date:From;
	b=GzrtYpOiITcUNPm2xP9ktWsSOzVeaUPOky/3KyPrinc9GEeDzHlGH2qXIU2PpZ9CR
	 67RWBeXvlAeImUlPkLtIIj3rsuaIgiej+SqtK7bM1FrUSzsmf7ClSuUidc0v78BkEk
	 Fu3xzpn/nHsvPiycC2fR0YDGVe/A3roZChWskcmy77revY+KDjjd5hcJJMlgNySWg1
	 ZxJYP40pz5DYk0LGOfqKGuisMz+ab7u3dKEQrLwasGkPWNUwmxJ3+l3uQH3tZ6YX1P
	 JiVkGxuYFOmeA+NksNj6j6tYyxVWAuRY3IuMxjSemieKA5huCI1GDwyJqqFGwC27Z0
	 RArlPc5m6tcTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43E3C98317
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024943370.19025.8262001879380221304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ef4418b653d3af423d0239937b9871dc275a032c1f4e302bccfed6781efb43
Date: Thu, 24 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790249433
