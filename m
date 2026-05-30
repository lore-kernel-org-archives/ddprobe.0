Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3834F2E7394
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780178674; cv=none; b=Z+g3e93NeU7iv4hgA8YeZp3/fNQCrKJywoyFeZLD0Z2XzQ7CpSyFIf8GZEJSSGjYVogrAf7QcXx+jHVUcMGDzHxRVJQqNvWqNu41/Ou27Jv2jx2gp1R1RvQeFOj8DWZR20Oncd1/O5dCfzIFMXz3Ttj34y8metr6LXUbAhJTG6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780178674; c=relaxed/simple;
	bh=145uro56yA0ZLnninETpOhlC6Vm78eL15/N+esLnudU=;
	h=To:Subject:From:Message-Id:Date; b=m012iKg3kA8ZczpWA8Dp9Z24RQ2hjLQBW99fYjpjIn+CHVh5oe99gncFop7cSgpgnP/rzI79rPb/1hrlOyo6rRMA8+msyrSbCsIGLr9utiLzuj/hVUHzESlfR9BshKkW9VpH/tEIMmPsmKxb7cLoMEwX7HEgvyHA+wF0iJb2eOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAtOkbzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAtOkbzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D43C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780178673;
	bh=145uro56yA0ZLnninETpOhlC6Vm78eL15/N+esLnudU=;
	h=To:Subject:From:Date:From;
	b=PAtOkbzfvYA1kLMG9O0LvRPFkcJ1+G/2dj78/2aOLE8vNQ8TKQAKyNv34Tlf2ZmmX
	 u7VQIX3Jd6Quw83T1OTvR8Pn05Zib3qMjpDfJp7lLodiAceb/TL+dvYPLg8IHgUpns
	 8XjnCFMWSLVgUDL1N5S4616ASfnwZJmDSueYPg8sGEx63jE1tl/3O1xJ0/tArL6v/J
	 kgFkNTHw29ugVY59SNPAqjDRHl+QamtbBS3ASvSGeZJ0xxjLRG40QBtYgn7swvBtXY
	 Ce68Rj+AbcFXFpb3fvl9q43qAssktYzjrA7udMiO+Fcv9gIcMgrWNZRrhkoXqvZSYB
	 SFaldG+D4oj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E1CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017867368.18457.16060011136666800305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e81c13aa630562ab0b4bb04db973625177355c34e753125e6b121c9b399462
Date: Sat, 30 May 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780178673
