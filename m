Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293761F956
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749132595; cv=none; b=WJ2WrnWFyV/1lfua2i42wlm2GDPSxHUkd2alQ9E0Tz4V8KmDdonyMzeJCkKCtxIozbwrQG1JwtDzMW9XlO4vi/jbB2aox1CXkfeYEoxkAbupd81OidknhqIZCVCR0JGcTs7FISu6kKfnVs317q6DYgx5Mu3LMHFd+qC3tMfGHro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749132595; c=relaxed/simple;
	bh=G79Vv3lgKnVGb9XPsaRkr47HW8WST+gpHnukUPmvcgU=;
	h=To:Subject:From:Message-Id:Date; b=Uu4rMqEbOEsKo3yYuzxqWDcl5Y/ZrboBzqexKUe1xUhNmgoVTy6YJxi4gglUl1SkF+FrgolKVjq37ZkrxQ9Ysu6Pgt9ThESQkZtNpNaNkIJ/Qi/aAO31vjHThPodCQ9kEBq91N02pItJB/sCOenFSKgnOpkYFohLI/jp1uGLjnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7vbdTmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7vbdTmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749132593;
	bh=G79Vv3lgKnVGb9XPsaRkr47HW8WST+gpHnukUPmvcgU=;
	h=To:Subject:From:Date:From;
	b=s7vbdTmxR3vyYRdb9cZAA4mpyf+0y7sj3a5RQ6gEVL8kAyHCDlDAD0zs9uhN4FyW7
	 O4WwhtGPiw3CyZwMdiQGNzf1KaZ57KS9m8DSP5o8JL/zxORETKuRXVI7hANzxyVXOU
	 ht7HPs2ULnhghuUlyWxOGtN0muOhDKQSqrzay6A173AL7ws1FLGwCtAWpdSXCbbcja
	 7TMlnrduYPtpmr+Rv/wR9fPrXI7PhIkGrZi8Ds0UY44k3shL4SGcLy306Fr81ClirU
	 SuImls4aAGvEfFF6lygMVKSr7FDn9CyA1AkxrwVvmpfabGPRRqMTynSIFiLe/JEmum
	 fcxDHIsh/1Kuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F088C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913259357.9717.2637087134841949374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b804ea43dec44cce6231a9aa941f390c244efca178c6a46b11f429d70b25e1
Date: Thu, 05 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749132593
