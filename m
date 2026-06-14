Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A75572627
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781404594; cv=none; b=L9tPAKjdlJmvnvcjOHWwEzzxpzosAy7bbYYhQZF58FjpDahGNKcj5STx9GlCygU8ag0BJjepXHflLk3zTF2WXXIY3cPpZu9iYUrtu0jwxyKG6H6Xy5yt1CwRJ1Z4TiM2ZpZ6MMVhevOALzUWO8REOBtwVajZIBWIoF/EkC2YOZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781404594; c=relaxed/simple;
	bh=N5PIjl8Q6BY6gKN/PgjNFtxPNkwRpCkuXkgsUi/jl08=;
	h=To:Subject:From:Message-Id:Date; b=TTZdZFglnfXNc+HZCrLsvEOSvBXU4WlFs7H10sWBKVHvgF3pGgSQgXSyjpirKJdXvE9PJCHdAI8P0PNz42HmoOFylfVDNLKK4iSwaTigX6rK1PLQCdvLQQs9u6fTiI7DIBapJH5TJMqE2aODL1vVSGRSd8UH7n3mbHNxpkpq6F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1cqoiR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1cqoiR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C506BC19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781404593;
	bh=N5PIjl8Q6BY6gKN/PgjNFtxPNkwRpCkuXkgsUi/jl08=;
	h=To:Subject:From:Date:From;
	b=m1cqoiR3+Kc/tKG/3gmMqrNZ9mUC0P6LyAOVeXJRun8IaOnja9QaSN+Z4MoYo2Fnm
	 YD9RcL/oFnHEnyOanf8H/CP6cj1Mb3KSmLUOZouwmN4jEt8+rKuzfEp2JvRBc6WCe/
	 1JkwPeI3ozEcvtj7qVgyuQ3MXdTLuEagNir8/2GVsKHF5gFb1FnCwMK0piZO1z1X4F
	 IcE/Gm9hu3Ra0cpQj9qM+rEsq9bB4oHg71cjamyyG+Orko/uoCtx80lZl1UB87Ailp
	 ElE6btC7Ah3tECMGsC0E4ZAji1QF0MWTEbhNoUafXPZGUEZIVEzaw6ZoGlM9FvpST8
	 dSfONLHctUcRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F77CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140459368.16340.4388074928206211419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39029ca8c59a732f04e7a79214d0b002a205f41a894e2ac90eabcbb8f1765350
Date: Sun, 14 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781404593
