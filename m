Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47070328DB
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719736463; cv=none; b=X9KFMCB23v7uwFiLv6e+Gr2zDR+1zBIG96Nkpch2fQkK6OqqXZPv1Dp0fVmt7GJB4uOWBdtllmyAWYTUUK7NSO6GzZEO5U1XCUoYDgkm9yxlNyi9h/6a1fZt4jBmFO5UENkkZRdMoC4EifgTShCYK+z2WzVvms0rUXOOg/x9Id0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719736463; c=relaxed/simple;
	bh=GGT/THrsNxxIF5QDe0sjQdrW5qUWl7QMJOfzZUu869E=;
	h=To:Subject:From:Message-Id:Date; b=Uu3La4B0yzX8/vU39ft0RZ6g3pYcFVOsITXobM+WUkiZIwFruWi4YzroIsJfMqp7PTDh5bonP3wQX3A2j1kKENJS3WNAHbyFRZNtOLlesrRE19oDjeEbNP6KM58x7RrLGPTO1sgQJdHHs2ngN3mWyXum2Bc+qY72+fodZXKqZYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xcs+8XFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xcs+8XFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB3EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719736462;
	bh=GGT/THrsNxxIF5QDe0sjQdrW5qUWl7QMJOfzZUu869E=;
	h=To:Subject:From:Date:From;
	b=Xcs+8XFWKdv2YuFmRRm/pbfndHbZtwEnW3CIxIzkkgghw7qGS8+VirPIlzf0SUkeB
	 X8BHfhNge3JowI2Bqvu8Je+c6NC3nUkgl30Mhhl2q8XM3UGPuVogEtcS32bHMewymq
	 CCbS/YsuBM2FSGP690lvqJjoC1Kiy5lUPFlqfNpRq8WzeMPPxL02N5EMpJt96Ey3lM
	 gUQBKwWqDyD5BcF2nLYvUp1fAdP2YKi83kKo3YJcp45LZthXGeuM5GN/TF/cF6z1CD
	 rw1jl3GmzMF2a06pxGuWWT5nSCXdjVitBxQkIk3oGy/wWxBMLzlvUpOs9y0BHfJgr5
	 zfMATCZkWfObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1D4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973646280.26608.11143683914196574355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d79442ed6bcb796260a2dafc7648b807e01d3f170cfd8ccfac83d57ff9fa45
Date: Sun, 30 Jun 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719736462
