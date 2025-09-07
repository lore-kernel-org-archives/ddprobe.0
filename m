Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7541A76BB
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757252995; cv=none; b=YdMhPCOoqTu1M3iINmSk6Y+X0j+XetPKuw3ERgLsdItIYID1/xaES41Mqpl4z4IoHu7G/bSE/ZMBGxNyrwiCb9218Wef40U6EEsmJSDFWYEzk09fDLzGX7P8UatTvMDq4szYN+5tvG4o7SYLcERp05/9aEam3/bYg/YuFOK6G5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757252995; c=relaxed/simple;
	bh=xObcB6/BO1FoFZi4/mEDHbrUfHibPBzYPBP8QdqmtSA=;
	h=To:Subject:From:Message-Id:Date; b=h5fe7ttNEMci8yeWkA5zVB49SRMNQt/C2nCVHjU6qYgrj0hBO+aUP9qJVH6+r3GlJRNniDcQpigHKFmdMOmmbE6DfBX3s3AO1JdJvQM1Xf8BR51y/KXwbUvPqvbuCbupVU+SNL1NTmijd9brsvDaGzlDq2+v1cHMVrUv0Xesioc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTmPPHU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTmPPHU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5171C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757252993;
	bh=xObcB6/BO1FoFZi4/mEDHbrUfHibPBzYPBP8QdqmtSA=;
	h=To:Subject:From:Date:From;
	b=NTmPPHU4XFLQ2179J194/ci8I4Ep2SUTbyHjoOT57gUVzcHk8pu8MYj6EvRX98x6e
	 JAX8Iq+imv4gH0exuda0Rba/ecF7YOoUAPBeUQ1Og5AJffxmj/Pee1GSdjfN/ecQ3e
	 eqHFuQ97eqGpmJpuFu9Rw7xb4dndFUwJvz3x0K0q8bpkhlT3/InYM711/4B04w/o4m
	 FuQXLecbxh7JJf55xp8UTlzUXGlk/I4uhnSO18FdPYWHtKo0ab1fXQS74fL5xRCE9h
	 xkFfugdjyuRSiY6wY5CrJN3wLiUwyWGB7yU5BZRZN4i3+Iu1oDGjUwWRJ1a8kjoXyU
	 sVlO8HBCO7ugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354CCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725299357.24944.17456989902815030281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f0e530217d6a6e90ec723e6a7d3ec8de934893846894a56af8b65eb802febf
Date: Sun, 07 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757252993
