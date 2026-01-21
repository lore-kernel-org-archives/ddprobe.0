Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A2E3E9F89
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769031234; cv=none; b=ZFM9SU30Sk4u2hgMsxtReBlx/iRKvjESmsfcX4WMgdeyIxoCMKArY997iA2sDS0+1X3XzVcHz7cGXRFYdRCFEJId5Bp0qM1hRPbjiBXmw1Pb+MnT77oZthCWXgGH/j6Z521kc/hEwhEyg5eJ3yYhpNYbiX5hnJPv1+bgLp0PgMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769031234; c=relaxed/simple;
	bh=xM7rm3K3dKAAqJzs1XKLd6HW1VjFAdy5nmlS73i9TAk=;
	h=To:Subject:From:Message-Id:Date; b=JPzGsByPEFn3Gqk3UMaC4MT627UUnQsgn3XMl4YKIuByRZZyO7EFxmuXvdz1ifhDsxTHlwr+57uY5dbmjE4iiybWj3nAzplZ7BfvqlQGo1+kJXPe/aztQZkSsDNlC+fIAOCcIofSmonNCdzN9MO0A3ihfpsSLS9jYcniiuGs9x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4ifvkKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4ifvkKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE26DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769031233;
	bh=xM7rm3K3dKAAqJzs1XKLd6HW1VjFAdy5nmlS73i9TAk=;
	h=To:Subject:From:Date:From;
	b=k4ifvkKp4+YTgwjaghzgaADgCq/XK+TCwq68uE0kvA2UfDh+qeioIXppaJDsPKO78
	 M1lj2+3WXO75dDRpVPUq1DUghbgLf5aDa8lH2jDln90kYLm8oyCjvupy4CxlGjQL3g
	 bgNM/7rbaxa7Tv6badw6hxMd3RIFU2V258RvboYdGt6EDPtZnZncCDMBf2jpDvTvNr
	 yB3GeBTCLqNGrlCL+monwujiKiG3gukKPZvfTIIPpVfMMDPtx7zL7fyVwX4/boOeui
	 CkkANzO83g5JXkKG4jWto/kZNRE+vWI0a6f7SC5G6iubhFO1N+BFkNHwRBtUjRdZr6
	 sx3tQEzd2ts1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969F3C44500
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903123359.32030.8699486831886378453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f1b6d38b38271972e6aad6fad9389ca021de9975a1760bd08f50e3eaa8927c
Date: Wed, 21 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769031233
