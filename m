Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811C25B1FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760182194; cv=none; b=obm0hA7g/XzI2PLvttxkgobHDsUS4RWRHNUHtI/AEIhgPl/lUbhzvCdWS2U1pul1gYmq+SkMoz/LfJLCbs/ThlBARHK69igeVHzIBDgaR+Hml7dsOuPZ/8UW740aioWhfh1u2owPL8wpxiPA2eOM9KrpZjTCJ9LKOSp4UyY/8eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760182194; c=relaxed/simple;
	bh=oa1LFZcls2Jkk7PFGtk1i/8mdBU5Sk+nALbXkGsfxvA=;
	h=To:Subject:From:Message-Id:Date; b=WbRxFxy11gIwg3cNeQuVg1dGcgOjmcMkZG0b6L4BUSzX/oerQOkj2LsQ110qpPsFLXMxbt3RkLkyPJt6ow4FarNWz/3jBk4TaFPL6Rxfteg3H4KZ7/lV66vlZD2Dx7XvizugFTzv/5e+WaZoZquS4XuAmFeULeChhyB1FnVO2wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ7sLdM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ7sLdM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F354C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760182193;
	bh=oa1LFZcls2Jkk7PFGtk1i/8mdBU5Sk+nALbXkGsfxvA=;
	h=To:Subject:From:Date:From;
	b=LJ7sLdM+7O5cXf3i/rOPjTiGG+hmRJwq1ps5ZEzFtWyw+neB9G5QXzhZaLnyhv9Gk
	 ZBmJo/7Bx1d8qyIkUFNaN2BTbJHR0lDi6tEkunIlR2EifyGDK1WWobZixweh4tFVRX
	 MBTiVQH4iC88UsKr34c8hAalK881fmId5Qj1dCHhD9sjrtQrKxo0tvFYdPFFiqyPW3
	 hg6BKAryVnXHd8GoUPgv6cauBCOhKAeXjuUvckrPVXr7qo0rFlsm2fcCGEUKBM1RTp
	 8EwwEYIfES5xTYaV14JFuvWKlEG5efdZN8wEDvnC93kK2zKC4YtSgj1/C1VPINsvLy
	 Mk+PZEK3/nySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE7CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018219358.9167.4383856398185000384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d32c80fe1bd2121582aca0297cd0d3528e6690111ed53cf416a452a805aa9ef
Date: Sat, 11 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760182193
