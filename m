Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6411DB356
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764943974; cv=none; b=dJz6zjhQ/8AgwzO3uwP/WV/n0yFD3OJgpGm7KmSWrO+FBMvOpKUgzWi9d+kPDtFxS3Dzjg9BwqMF9gRyreYEhFfYjL6JpDJMedX7/N9WCw3lIFNPmhhYeC3zd3DqwqZw0/M04C5q1aUX/ks9+gB+yDgmpEkJ8Tf9uhspjNPaTYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764943974; c=relaxed/simple;
	bh=XJw/4oA1rIHFBG0qMuIObiscPjKPH8oJXQELe9MOMHI=;
	h=To:Subject:From:Message-Id:Date; b=GZJ9Kamzox0xirhtdSaPKM3IidEhzvnGtlzhXx+g0ualESEcD0C8gm/xez2pGWkByxwqXAk3iOAHJjyxct43+W6BtftlHRxfmXByNpGNYlYQIFDVr4S1xCxd9iDTDqBGf1vlek0pLBUx1qOgwbFYN/m8ZX4zcvGvKd0WKBtGnnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk2cEF7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk2cEF7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B87C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764943973;
	bh=XJw/4oA1rIHFBG0qMuIObiscPjKPH8oJXQELe9MOMHI=;
	h=To:Subject:From:Date:From;
	b=Kk2cEF7CRp/2KFhNo97y21Ww71w6/3a28tQ8NkrltfNw6vm4ASaDYZycHCJV5KkLI
	 Zxh8+oE71/bl9ZfaSFR55r2jC8i9FD6q+AbDEfXKs3L5qsxL2ohYmy9sQl/eb7od4s
	 kNE1M1pzRhCzGErMMUcE9fmyMTSRVICmszAqw91Lt+kbuPTanM1/tu0tCVfa9w864v
	 E7JVFGI8Xmc5W/0A5msWoweaOJwYi1skhwDfZZMx+f2ndCk7bGtFExJv3aymZ6kHf7
	 aRQw0S1JCb1moz3Olf80ayzY4uQmEUmu/OF4UlSybeiq/I4OMy5LDQgwUgannmZ+ws
	 C+7//S9iSuMfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92249D2F7FA
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494397359.12153.10302711009999062076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d599700c5d7cdb36ba6e5b567ee35618a922d31c6592ea0a6c51e6aea5f3057
Date: Fri, 05 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764943973
