Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572D635C699
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785418234; cv=none; b=XLvLgRKI3dh7PrWpvZT85i9JlTiFlU7nupY5QEzpJn9RphHeMVlIxJohrTVfm6IW05j32zybG8bfBwZQFh+rtiFB968z+sSgBal5BUaljjJ0eBlpuTEFu0CJQ9XPLLI02tKOes4AUQne/lexKN64j/agjaIHUowiFVpQItnYIKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785418234; c=relaxed/simple;
	bh=TpmS6JvPHQ37dQGzLOKaheMLGhgL0CbcunScLzhjZnM=;
	h=To:Subject:From:Message-Id:Date; b=EUbBX4TAljsYEveKwEVAEahPI6606Hgyr+/M5TurcUsoyxXvvFvUcdhBLUVyFsXd3XDiySxpJrmlmXFSeRzpx+sa47aWBMmvzG3lQZFUjk8AbR/8lTmfSqzcLSAZNh/llO50wLxTyBSxHqBzjBJzyYTYoddJubbyIPVy8cOsnoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4mjZzUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4mjZzUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78E6C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785418233;
	bh=TpmS6JvPHQ37dQGzLOKaheMLGhgL0CbcunScLzhjZnM=;
	h=To:Subject:From:Date:From;
	b=k4mjZzUt0RmlClDjg8U92SopmxQtn75l22zKzYAuS3jnl7Q+ASUeZQYdY/dtAbI/9
	 cLW+nKMhTIPbS6mtWKXeWTyH8usEpLBD12DefoqEQSrZ3Xvvycc+dLhCq4Y/k9XVMG
	 TO+8QqubNeZfInXSlMW70zFbGl0ssCLono6sZfCK8HPovHiZlQxsKl+gKS7vad1H3B
	 LPDOjfW6IUAnWwsRN495nfbRTbvR4bjBQs+/It6+hBU1C7Qfli6avXp3u5Q64xrBtR
	 Nh/WrGeCpzfSO/sWlp+QNo56c+RO+JgY95hNIYVtoWqcfevLleqCOw74ZDVGVVXg0l
	 sXhF5oDpPhoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C7BC55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541823373.5097.402959496062635123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221040eb4daa505154de033f3d64d260a471bb8f5d6fa4fbef930694ad61d771
Date: Thu, 30 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785418233
