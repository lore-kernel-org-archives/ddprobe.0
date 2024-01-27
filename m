Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0D61DA59
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706363896; cv=none; b=hB3yXQiF0e/zLf6wViEdIvfkJuk8KQb6fBs3fa8Jf7A3/DC5cbgEtX7JVlr14U3dz9L6Ja4gkG9WUeOq/3LC2KSInZlrZ1sflsdw4uRhz+bZjq2zUPo6uDXSbgqH42Erzr3KlUNY62EmZfqNJgh9QfO6daOmmbLFPru1LeBj0+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706363896; c=relaxed/simple;
	bh=x1TzGd2YKXcCj0yVsxyAmKMC1GPzzpSyKr4EqImUwAU=;
	h=To:Subject:From:Message-Id:Date; b=ElZS23TmeL5oOVKZYfjWnJpEzNYb8VVxm1hkB0Ji3nZA/KmZ3FYHBy/ae33ituoxxwLoFaCBSIrjyaec6Mz5NYVxGKNvxkMPIkA1BYJ5uSnqJo2vXCUg4lp2I2lDh/lQUCGfMNySFvnvl6UfP4pyeGV7U65zOTSlHmoQRtRqQVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxRxNdTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxRxNdTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E828C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706363896;
	bh=x1TzGd2YKXcCj0yVsxyAmKMC1GPzzpSyKr4EqImUwAU=;
	h=To:Subject:From:Date:From;
	b=IxRxNdTjJMKX1rQjt7KVHsqH521p8VTCVRUnbNNNx5gH8Pa+dq5zA/xHMJfPC5qQ2
	 zkmWsL8nn4wGYmEf/IC+yPYQT4H8G50aw1IdSB93AgCj67myd0Xq/dmdbYO0IqslPy
	 atjwHBOcLk0YItMRmEINGG51IwqM71J2vTuhA0iNd6KxreItd3fmvuc0gIQEZWLFIs
	 0BALdKJYNSAyZjmNza/4zYmk3cjSoNJ/c9BCIxSGoLOWBC49oUoZXIokuit6ZnMdMA
	 BxI+VE8Yqj8UU8uwC+dvu3VjkVKH1GnLSWa5AEJYK8yAfMDA2SP21tYHxlzfsCAs9G
	 4zK9INDltHlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626B6C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636389637.8427.2148902463237769983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb45ca661a4fcba1904f7532e29e9dbb9134daabc5a1d3daf48d11634b2b5574
Date: Sat, 27 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706363896
