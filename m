Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C4B1BC58
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751171394; cv=none; b=WOnQbBYTUocv+KBEZxD4y2yPzmlM4S5s1XZYF8Gf3mpEroDG/+7EsHkjFUD8bd9guwpGf7hdd4QJfJFHb5wODM6CJi7ru8bOawhEwVnmJq+djDWmwQhSr3CO5NZV9Krh7iYxxGlCEHBZM8jd9Bg4+Nt+1aT8MhwvUbZ3nfH6tZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751171394; c=relaxed/simple;
	bh=jM/nFuY5dicJj2zi+K/uzOOuw1RkI1/kl2Pv/c8ujzY=;
	h=To:Subject:From:Message-Id:Date; b=rCon4lW6AhkWzgoOAIwPb1I9dIzmy1li7TitXmVJo2ZVDLfDEuYYIv3gpe5I6RiTjZdGmTGQcqlUpGnTzAkqQrjoC75dPPp81/CKAXCR4ygrp4tch5g4siPXIbbTtNhGSzLjbbdNs299ysp9AigoND0MEAJoHurcvjRCXsoKvy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSDRRMg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSDRRMg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A463BC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751171393;
	bh=jM/nFuY5dicJj2zi+K/uzOOuw1RkI1/kl2Pv/c8ujzY=;
	h=To:Subject:From:Date:From;
	b=TSDRRMg7JUhVBkH2q0u0QFtXMe70kpxWDHzM+neCNn2+SRkX56eD/4VN0UYyjAs+6
	 qfJyO1Gi263oSCbocbH50jiL4RbUOCANdvlcrAEJyHBqGMAzrhVitlHUmUJ7GRnh3b
	 1Bw9fJFgDnt1oMc8lFR5pGLrJtfiJmpBwxDtsxvTPFpuvxnYNQjbTzM1NsV+25713E
	 8qj1HmKdLa0VanGCvnL5y4TyCMuKuX6KYlPCjc61OxjeqAAirE1pEfPaiszowfb+vJ
	 ZBRL5HeH7ymbUWNE/XWajRY/Ed6U2F+SXa7lhwos2HAGn/7jocOZDVDopPh+csoh0U
	 d0dDG/iju0R3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED81C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117139357.15596.7485470641333153253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9446718578f51307dbf06375e13c0a6d2d1e4f9321d7a84d343e6bc17e31deb2
Date: Sun, 29 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751171393
