Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB1A2D73B8
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764096174; cv=none; b=hUut0YBLMPYOSd6YkwAB5M+SdNfVoo/tbdPNvaxc/7BhaZUNtc+I59/lnhbhhx1eODlTIiFkZ7ALCmQa82vfymCK+c3d5MD3lhpNFtEozlmigsZEDq5f32BshP1rxqZ9kbD1ixjfppgq4QXOlcsZKIV6DsZZtZ96p/b9M4/+tGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764096174; c=relaxed/simple;
	bh=Azp7A++qISweZIH056gaygUcnkxwnN8yWrys+DnYQOg=;
	h=To:Subject:From:Message-Id:Date; b=AA0AtVarSt7fs79YeZNPe+9oCS7P5p1LpZLhw96gQjbCk9jUzhzOKT0wUy5gptRaWpYRYuRZld1hneoGE+u0bH9sLy61zRgw2OlWowvyvQPnD6s6DEtR8QmPlqdD3CCPD/m15QBzSVeDTZPCQGPoWZJInYarqdxI6kjla9GmHto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjOhhu8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjOhhu8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A815AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764096173;
	bh=Azp7A++qISweZIH056gaygUcnkxwnN8yWrys+DnYQOg=;
	h=To:Subject:From:Date:From;
	b=QjOhhu8ZutDnBHeft71Nk4OxMgwGUIsenjFe1AybJgiYzGn/5w/0Agl6tc26UDaon
	 tCuq/I16f5jaER+onrRq96G169nf60e2zTGJ3BObMhhwPXGCZZ7G365h9JdiW+TQf2
	 gKg6yf/kqK6QO04xLDKXTy8KXd8zYbAQ9MikPeIo7MDmoMfrcr+uzJWypPOO9IGNLN
	 kCqrs/e6OZECgddr2KkoMVpq/SkXhh3roSHPHM7IQFk0TOkximuQ5fIv8Tp3fOB0mO
	 GaYZx/qcr+7IuUVPXtGqoZkm81jWw9XZYPRA9P289Naxa8+l15d7hG13JuTs+MgP8o
	 /8OYJ271Kj6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933BED0EE0F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409617359.21201.13281292446367477263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8768390c33d3e36e9057f1b8720c0c09f2c49250d102a9dd4cc8b95d8358dce3
Date: Tue, 25 Nov 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764096173
