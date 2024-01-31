Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE73D550
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706678897; cv=none; b=kWcizhDuxAuGmFJsYT5FjY0HviaQb1Ea/BAxCTtWkfU5eTlfz2uboaRXFNqEL8lpWgU1rocleE6P2VwrDKZ4/pMqxTf0JQvYypTzd+ikBZYD9HSxMeNL/Fpj91PPmGhsJYEjxXywB5YtZJSkxlc+hGBSO1hIVV84MuyRV2Q2Pzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706678897; c=relaxed/simple;
	bh=Ym3pRcN7sOCg98cfuxNEnaDx84KPCh3yfs8Uv4O0joA=;
	h=To:Subject:From:Message-Id:Date; b=HzU3U1y5Rb5tgiduWLfUCUy9IeAHbzLOuTGCLYQgkuKgs+gcFGzOjzLbd35v1eeOVMXvIkx3tR39BHlLFmQkzQ1n8IPePenuv1zdB3vTr2JAcR9Zxsx9bTIeUCUfPrts4IJYlz98H0yddcdmi6BvEr3qM1AvcLlz2QjG8HxjdZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIie9jq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIie9jq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E08C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706678896;
	bh=Ym3pRcN7sOCg98cfuxNEnaDx84KPCh3yfs8Uv4O0joA=;
	h=To:Subject:From:Date:From;
	b=dIie9jq1KoAU3zpI52ZIwMKxl4Ro569LR/ZKRzMOEofFxmxrZ4eG9gxSs7UjV18KD
	 49lNKFFgnagY0t129Rq1aouT+L1VcgEoY84q2COtSGtBFBFNwgAJxXSsCE7gK+rQY9
	 t7ZB6txpO3hNbudohLiP9aaGGdQwt2HVMpmyDX6mE7B/RM3wT7eBmCoDp7MCoEuNSU
	 s9c9qudsG24mnp4TTBydkXE86J62HD1LODBv+GMUP0EzYZHUkEFFDrzwy5zDXgeHNS
	 AqXUUwPvMCkEZk5tVIfVFTLgTt5w/jOxxPtPZFGaklg8Bvv2pqVxfftFwFzWysA+NN
	 cfmYG2MRvibkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E44CC48285
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170667889637.21849.4101498973596987108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e9386b67d2423e57dec25b56aa69a7183189a44d2988d1f04dc271af15f02a
Date: Wed, 31 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706678896
