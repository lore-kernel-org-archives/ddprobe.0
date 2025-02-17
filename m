Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578EA79D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739756934; cv=none; b=nYaR5Yo4MGpGeOTz+Ky1tB8RNHMriErj3Zm0eS+p4l5ShvxPqnqDUdGUv5oE2o7Q+HaowylrObIymO/YHm0QBkHhqMT4RJjl7limeKi7Txp+86LGPwHPzFLL8D9gT5dZxGSGhnSOrytgHUDkpR05q8U61nqlKTvk7guQKrHdn+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739756934; c=relaxed/simple;
	bh=C+bGQbWnHiz4hbVMf9gNg9RmJRihkwuv6YWgtKOSumw=;
	h=To:Subject:From:Message-Id:Date; b=hUuTMTXqYUcIVdLe8BW07w6NMpLHd9rwwZU7JO8HMSw33Ulpt4/grwYlmTrkcHFeF2jwWK+xVSVFnz1hh0braP3B9e5uyMWiAhE7vvFPVpSPsyREKlz2auNAqGY92V516FOyem4soOTSpcfPkZkh3LOaHruwmNMPwV1C4avVH5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6I93pRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6I93pRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3B3C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739756933;
	bh=C+bGQbWnHiz4hbVMf9gNg9RmJRihkwuv6YWgtKOSumw=;
	h=To:Subject:From:Date:From;
	b=I6I93pRP7T5VkyBdfF0sgo92JDxKiE8jrKCCL6s6LuQD1O9dhuE2hwnGVG8b+hz2J
	 SjWmmT2XDyR/bIZgPfn0xCKHCv/kRbUcn3e8/ZFRWTTIOBRm9HKExom7BzrqzJXsEt
	 eKJ7X5kk2OxuQHWCZvyvDUtUpN/EeMXWol2PoU76rRmE2v6EY27mxEiJCG93C36xWe
	 dqA99vYF2QceWqs4LNARrw66BD68RYDew0SbEB1wvH5s+v0ap2GEyKWtIWpFwnEJus
	 MlQHjopDU3cZw1AOclsf25krSjJtyIcBLre2LPprPitqjy1mIR8La2R2wKm3tCPNBF
	 XK4Oz905LqC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D977C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173975693363.22908.9992324359363780524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc116f42c05a83f735473a90b6ee163eeef12e5ad453b298c1f41913e5a8eab
Date: Mon, 17 Feb 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739756933
