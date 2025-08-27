Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8FB2C2358
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756310994; cv=none; b=KdwJKVp4ANaM/Ib2caf93gnSS8Z1Cg8u770TynN5L/aSa/gg1V4BjbGWC//1R8oY50CQScHQh/14x7HnfKVnYyX1+yOZvIHvZ6jE173cBw5RrLxf4jjDqXLTlTQdOV1PvZKPE1zYKOsYuiMG4F/xq+Xx/5g0aCTBANN2wVD/SlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756310994; c=relaxed/simple;
	bh=xflNzjVpcBaD9v2C99uEsAG9n64u7xL9ZGhfF7R4c44=;
	h=To:Subject:From:Message-Id:Date; b=qNdJxAHhA1Eys8la5pnnOegJrE/n+poIU60qkKrKlkWDWl3RmsAj0dI3cX4WAGszZQcO15zzCN+b8dE+kukt1v2J8xHUcsAzpIKE0DmWcLONVLtBpIKu8nJRl1J47nlKxjRrjcc+IXgeGDGKi72ye0GOAHYHPSJN97/Nb3RuYlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6NvJ42m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6NvJ42m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E14BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756310993;
	bh=xflNzjVpcBaD9v2C99uEsAG9n64u7xL9ZGhfF7R4c44=;
	h=To:Subject:From:Date:From;
	b=A6NvJ42mHY4VrjFroZpzc1k6GYTsGO73OQhynZiYkOTnuxbWzDy2bkIUgv0da2U46
	 pW73MAVkPoD0FVFYXZQrjHsDOT1O1H4WUIO+WJfrFGuj8ORh8zS39hs3AnEP/+INRu
	 0PPbcvce8y8pr0zV0/ca9r/JLEJ1YVnGLeYl/5HlTkmeiQDLHYose/tMhbwCuUAe9v
	 KEsbDMigs4GNNVXlixrgTOcQ387+oJvA6SRaTSMb2h2E328/OjIDNd16R+eiTjx3h3
	 Jap9vqYNtCOh1I2UQoUXXWfIbILDkVCd9YqjipQ1MClU2sJcJNB6TAJ2WgC0C0d0q7
	 A8X/m3JZcgiIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FECA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631099357.1714.16001135830056708850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5607fb0aa69cef385c1d8b21db3103a8431e740c8b3b85ea2c49598290ee42d5
Date: Wed, 27 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756310993
