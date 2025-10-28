Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0772B1F583D
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761623994; cv=none; b=QQPAb/lkZuSebJAs3lSW3Ihk5wg+yaYZV9W/T8JFpQf7qPhCS+akZ9KrQ4oFs9JxJk2D01a/p5XczujcfarfPJ1fs9E7kt7qTbS3K24eP3WFFRRxZiH4r0oY0dCAorP2RA4U4DmMbV8mjoCdx+CKjtXCNU+luXCWrMYdaEuHuaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761623994; c=relaxed/simple;
	bh=ylZdb+m79w5fi9Q9BpOQJCBuQ8L4cZzclEJG6MtvDzM=;
	h=To:Subject:From:Message-Id:Date; b=QzfKc9Jd1ZVr0RR2WR93QMdC5DZw2VymtwVk63o86ySsqzf8/lGkGs6pKq6IDuwWcStDOnprQgCEgFFroVEEr+FTUj+gzL93J2VCX9tIDrGQ76BNDWefJJA4iYS8vxo13OmcZZADNx9NsxMqfBjqjq4EhqyRdnfuSU5Hw3aUP9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEz3yc8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEz3yc8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A290CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761623993;
	bh=ylZdb+m79w5fi9Q9BpOQJCBuQ8L4cZzclEJG6MtvDzM=;
	h=To:Subject:From:Date:From;
	b=DEz3yc8RexTplOvi5ZFBKQ9p7CfiMoE8UR6tC1r97l9xinGtOiCgPtwLx5DX6HRBH
	 iQgVHPqtVvmGEqbBoag2v0Jxecav2HtRo/+BVXcljpD9W1V0N6UwPsWYl7FhOPyMRN
	 WEVHlcOdLHMn22nKXWPAFbWpPHv6qW7bkbh5b8CSlsBz1EhAP3D8tPhajqWGcMHolC
	 RcmfbgTH9JAWYGAaCXGRBBJbzgkrsz9ciEsKJRORENzaaK91umm/fM9y0k/8lLiX8e
	 sxLwIhTEfNlrBBCGKt0DeXjqkc/XwW5cmUAHiy0oWB7vQk2vpn6vmmsRui+2BQMb/3
	 peWJmpOzvnowQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9ECCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162399358.19612.11573206741836142544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd85d4b91826e0fa8c0ca1c1be0222dea44c5da019d91f7ece42a3ee202489a
Date: Tue, 28 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761623993
