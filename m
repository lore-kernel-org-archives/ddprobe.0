Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3591928E8
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725689154; cv=none; b=Dic6Q7634j990/yU2i+0mwlXE+VC5hClcrHT8VdXHypUP2NSZlq/Yap+r9sGKsm2odMJ93s/vGjvGT9/vTzCfRwdJSw3Ust6KkLY6XwSIyBjyJExh/iR8a06dQi/03ZKW4VFTPXF87MiliXGm+mH+y8j3OoVsoXGSNLXr7sFtkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725689154; c=relaxed/simple;
	bh=t0tWZiN8KduxfVtIA+eVMAagKSEdfj27l+H2N3QbI+Q=;
	h=To:Subject:From:Message-Id:Date; b=UyacngNH2cMQ1V5jmfEdU/5e6redOV55+hIrG8YvVEHyyqq/XW6hrbP0I6wrGhqx580EJdfLP6wgoOBoEqFY0+fDsbvmUHAN4+ptd5xU5cP7EPx2rGAFDG5Dl8p2aXc5HqDlyDiAsXtXggpeKAtMzaMxCEtwDF0qICJdi3DsaaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuO+1fWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuO+1fWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD698C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725689153;
	bh=t0tWZiN8KduxfVtIA+eVMAagKSEdfj27l+H2N3QbI+Q=;
	h=To:Subject:From:Date:From;
	b=QuO+1fWrO5QL1E6MIdgVccAeysnopZIgU69tW/XbOvHDAeQy5bSMJcrkLo/dLz1Z2
	 Gb/UX3vg9ieSgm2nW1SrLlGso7/sGDblalnFAyLySNktBW0plvBaVjBdMuPYeC8OLO
	 ipZZKz8/sDwlE3boYG3dvXgY7P7j9cEoaSM+8mlYYd62PtEYIQY6zfyaWPpibyUDkb
	 8Y9sUgn4/L909fscw0ooOtu/ZEyVOToN9X3pLCyNM7UUV4SXuO+Kf5KHO5RyIgViuV
	 ErA0ShoduS+wWgDf0qJMxJ515uICNaB3dhU1hXPkhJlxSHvnQwyNbnC+I0EOv5/X/a
	 +d42IivsXRf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94498E6FE47
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568915358.2251.4054095756185612595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180f421493ba896a5eba28ed07acf7da2d5d4cc2150bd85c30b636e53b9d7083
Date: Sat, 07 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725689153
