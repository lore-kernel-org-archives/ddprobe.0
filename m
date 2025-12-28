Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D76EAC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766885034; cv=none; b=Wbbdv+WAe7R4Td4klWsxD3j/Lcv0/9kH0N9l2MPEXNR4dLCsO1oOkCrPBJALVLf8WBblwklg6NH/eD2RRuQJHuHY8FwrJoKy7HpZ6KQIGxhCvutAQmZ64ZUgm+qoZzxEAm5k7Q1MFjf6DPB+Djw9yUBK1/Yxq2qL3XEQwmTPbDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766885034; c=relaxed/simple;
	bh=eLcO8MdSztIoCMWoF3XbZAjkhcU3ao9KAmm3fgyUGLI=;
	h=To:Subject:From:Message-Id:Date; b=Gt1fx8L5iMnBplLhkvRb+ZDqeOzta24Dz9HzcYXxfltVZof3iRIFFh0OFqzwRU82r5M5v9bWKx3zkKVwxhj2WX6eSiVzFmpiun56iF+Nzt2rZ56+eWDVRVgFEywNTgxZKji7JKpEI5F3XnlMv/521/0gtLbucpqV1qeerA2Z7S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgAN2dAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgAN2dAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF164C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766885033;
	bh=eLcO8MdSztIoCMWoF3XbZAjkhcU3ao9KAmm3fgyUGLI=;
	h=To:Subject:From:Date:From;
	b=kgAN2dAedVfjYy1LXbbCxARMIX7w8LMmeQXDwK4SJy6se3jBEngj+TjDKhJ5zyofZ
	 deuPeZt4goZ2sppIVSCa9PILNTU8GE77hZdO5lWidD612S3UeSwdG56jmALBMLvSMw
	 mpztGhyxSPH2BHDdBQz3TKKHmDNVPw66FNPhLwv77E4BmTsN+5Osm7lewZDvCiokr1
	 XF0hL4Xx2cUA6oTMnzHm0+uDp/UrvZjMr7lqShSbIYoMS3v9t3xM9jYrLELH2dNYiV
	 yMTGzmlnPQCXTM3t0xENd8P+H0BTNF4BoxZK1FalYg6yV+Kh332nlUmXGPYJHcfmrY
	 F/mKjpX3zpu0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAE6E92726
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688503360.24298.13608089931733674503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2d783265450949e1f85495d01f6539305bdc984e38022e975cec57562dfe0d
Date: Sun, 28 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766885033
