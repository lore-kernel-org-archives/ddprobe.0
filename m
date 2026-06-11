Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBC8EEBB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781182594; cv=none; b=Z6SgKOYOIaEKESwNZbKQzwmNrpSuGSOhuN8U2gamzjkOON66IWFwug6v4tYlocx1AfwfFv/rFB4MG3tR2nMtWtM/xQwRa3tsKeIbUtOUeoqCr+aT5AxpPE4q3GQb4rsPYD+qJubMu/j2YuIaofthTeL350LuHv8/N5W02WRGyvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781182594; c=relaxed/simple;
	bh=NKwZeGBcWRogUyGB9HYU6j5TnkhisdxImN+XmwtqtcQ=;
	h=To:Subject:From:Message-Id:Date; b=P449PKftxnyvGhlfO3hE1TBH1oLs991x2TxDrq3J6qXxt+NagHc8H84EfOZYZ0qVlgl0JKYy9CVQuqb+z7/MaDd4gRQDdQPXFq5wntVqTshI6w4mCFhakczaMjhtxkKLWZm06JErYIBlRRXaRiW5PP4e+aHniWTU8l1zwelLeO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzcgR09d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzcgR09d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD494C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781182593;
	bh=NKwZeGBcWRogUyGB9HYU6j5TnkhisdxImN+XmwtqtcQ=;
	h=To:Subject:From:Date:From;
	b=SzcgR09dMxlz8VtgNfvrhR5o6GDEQzPI1Io095SBWLZpfU8Dey1PS9PNocsxzlSXP
	 T+wuP/uL3+K0xLwDZjJsMSnMQUwWLbkjZKnIc4AWCT6hE2UTQQju5DqMKhH/4BZVOC
	 /97FXLV0oQNcPbDeKCpSHWUxGL9Lj5TfsNV0rlTD+30ElcHNi7cKia7eY8n3hbsLDk
	 ytsss+jbYGVKgVwNvlYNPRawzxxY14lMpFO0nIFJ2KBLhx5toWkBmxoHhxgtIjHj/G
	 jF6YxXsHtD3HtGyL3Kc/bmN34pG0rhF9sKRvAq4fjQHrjWSncy5S5aUP9clQcy5SyE
	 o0zq5Wk44j40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B717CCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118259374.26388.7836577953372624787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0857f543bdc650128e13a99f3fe2381762f5a48522e5fa8bbc6f5b473944526f
Date: Thu, 11 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781182593
