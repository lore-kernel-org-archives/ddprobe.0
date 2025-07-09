Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3997F2236F4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752083994; cv=none; b=ux92RyoFYPaNvK/KqmT3nSwMZkYb20N74Isfu/t3ouk1liDyistFpwvHkEotlvbSLZRdHXZvjrBEVwp6WoTGw2QNJIuSVfLHQ3REqClooO/NqJKNvYP+69QSd1RIRue6xuE0NcJCbCs8o5D4e4ba17ZGxKn6CzppAuZB3bekaCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752083994; c=relaxed/simple;
	bh=5w9Ow1u4k2lDjqD3+O7YoDY2pL3gHVJudPnixYo2GlA=;
	h=To:Subject:From:Message-Id:Date; b=g1sgW+YL9xbx0sJ3zBIuSWLVQUDf2WiP7QsCXchH3cIRKhqq/AmOGhggtXzk/0gds21yfbv5lAdN0aFXfscqRiUzohUtpH3e3vuM6jyT6spi7/5W6u4CNzfqb3AEP1Ba9Eg4/4+KCRtEOIHYbhYxEv3bB/LgC9CUxKridk0xh+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYQv0ad9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYQv0ad9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86DC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752083993;
	bh=5w9Ow1u4k2lDjqD3+O7YoDY2pL3gHVJudPnixYo2GlA=;
	h=To:Subject:From:Date:From;
	b=KYQv0ad9FSkSJUkZC3mjkXuak1SZymkx6vU9+Q2dkvOA8rqOHg7HdKslYN779HxGh
	 CFkvMClaFbxinKMS9H2XxGByxWi98PLUIqhVXlTvwPtL/7qwaomZqiM/6ROuCtItDp
	 69kUCImJn6GGACjCn7DKznIm2TXR3rFHCjRrGD4/n5V3y7asc5+M3cQ5Cu8tQAx2oj
	 /5DowYZDi2QJW7W9ZNB2IUCITmfndcT25+np9o/npGaB4VVkcYrkRfcq1wjrKvlb2G
	 ji24H9n7EgRpJTTwjMbuq6NgpdMf9zdoVJ3vftrKxzZSGHjByjC7DTVrF4XrJzNVUX
	 mRcpZ2hm/irdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C86C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208399357.6167.16262492357281435275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326ca0f99645849ea7e47c9c73c042d39d49067630f8d02d27b569c6635c440c
Date: Wed, 09 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752083993
