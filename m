Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AF02FE048
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770576234; cv=none; b=mfPMK60RAtLruS2EIE0RSd5/RKlhr+IXmehS//dkkCBQCBCXe1bcbLWwoRVuyvaem18p0wo8f8X8L132VTaTZtd7JW1GUJEjcXPoAzEz1+kfkbyXhc6gVTW6lfNXY1b8SueVN2+EfXvCnhfF6l0uvolKuIy9UMOCdpClhflgHos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770576234; c=relaxed/simple;
	bh=ijX1X9xu2zazwLLpFnRXLXGzAKDCD/bpZXyqjDN8/D4=;
	h=To:Subject:From:Message-Id:Date; b=b8f3FxZNqA7sQqVbp8baCABm5JoHWXu4fjnRBM72cXYFgzvixoC57g34kVkmpeKgmBxgzpZP0niIqPlZyd5p+HYqDEUQ+1hxuLH0064WfXi60pyYHAQAAzTMN965HtnLbz6V3ZsTUOxEnGlyxqdCl/EOAcSKWzOBtqBFzUXV/mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upWLyBI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upWLyBI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35D8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770576233;
	bh=ijX1X9xu2zazwLLpFnRXLXGzAKDCD/bpZXyqjDN8/D4=;
	h=To:Subject:From:Date:From;
	b=upWLyBI9O7rjAtjob3z+NOeoRwdj8wCCgRzhS8aV/9imUs9X+y9wjQ2VpkXgmFpVQ
	 xUugvyzrM7fkXdSPuu5oo1/ZtaBksF29PYEeEBLRULTCC32idVe3UgIwZXAQdSNJu9
	 PvYXaQIX/3t2KuYyRvxC1lQlGgGuPFBQTfa0TposVg5VYzRQMriRS6iaKzw6bG3SsW
	 nj6f0EunZjuAg/bGFAy6UK3gOmnMhmozVsL3zK/oXk0yP3cwhfp5SNO8py+5ZQIegG
	 Jx6jNOmh1KFfDMEtjjAIfyr/33T9RxyLvXLYBuyC6BdYlCVP3D3/Cgdr8dQ8/GvhUq
	 +jblCXTzdUSDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26F1EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057623362.16207.8005513642271588559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2372a4135840fa1f019e4b18258f8021c10a7503423ce78c0c660f73ad354f
Date: Sun, 08 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770576233
