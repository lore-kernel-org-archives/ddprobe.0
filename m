Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505F1C701F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756165795; cv=none; b=LwBXdcdca7DtU8gCwAdTlrulKwo/sTIHAD82KilGfK/K3/BMaBfIn3gV9NWFMstK82V2PsOudE1AQN94ZowWKOt21fNiwpL5qorktLLEunDbXSL5KmpzfMyVwxoVbYswcJxiJGYfsuVn52zWgonq5k/khrg0+y78N8aQbSmVsaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756165795; c=relaxed/simple;
	bh=eGvM8bsBUIq5TQ4wo5Ac5tPhPgGF6cUw5aMi+m94SDE=;
	h=To:Subject:From:Message-Id:Date; b=VwU1Jf9DRwexSDSqm32zlC03fii+vu6jSRMB2fhH5RjJZk9v5xLHbRD0quJM+7NrEi7nANg8lmkuDMcVOcEKk8WH1gfQbRJxkoYzpQBz8PBeZuEiNIDlBGMwul51yHhKC1Ve0lxJB3Qy9J319Gd/lNx44uQNwU19zwVyNMBQ7DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs5wsnwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs5wsnwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756165793;
	bh=eGvM8bsBUIq5TQ4wo5Ac5tPhPgGF6cUw5aMi+m94SDE=;
	h=To:Subject:From:Date:From;
	b=Zs5wsnwJmFuCSuQDzjzGS/eED4gtK5VfPLPTJ9QOYwgjb7l0WE5dxJWGjng3+IPTO
	 WvTynxPJmNITkRclrswvqIYi9q7/BBgd8Doq0qOykBq7WTpYNG0XqHUevakKG/brjj
	 97vuzcaZ8VpzleNPItP2cSrbiNJ8NgTMD/eGjnP0NTYWwDUI9KDZ+pF4Nu9G9KjmsN
	 CNX2qfXZ8qEquOq10QLZNa4PDu/GtQZUujifBr2w6ihHIssgGKM0gBddUsjbNXSuAM
	 L4sNQwcpyxMrxoIhDME/GjRY9TYOjIr9HwTCQa2ZBmSAyYlSQfoqNI2JXglAwLxPOX
	 Zj/Dqx9+fsX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F345C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616579357.26979.4146648278838658145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68836e87fef06d1744c2972633d2dc12b91f0ce1182a639b1c4dc33ae1f7f5f7
Date: Mon, 25 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756165793
