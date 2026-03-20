Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149AD23E35F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774038294; cv=none; b=g2/lk+dt0jXpGFtdTdePPl8QdOhWbxw5tyiOD3Yva979nVNgQFpbWbvjB0CK8iSJsyYIC6V2jpmpQ2s5ObAd7b8kAdfZ2cwPsaEQfD5nel00o3dSJsjPMlav6ux8ZnIVVHtL1MeFBHi2raW0jW5JYbP2+40XPkKBb0fw55Fbgs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774038294; c=relaxed/simple;
	bh=GPmf1oVD9I6ziE6NNrowmNfeNE0Kx/QuY/L6jLker14=;
	h=To:Subject:From:Message-Id:Date; b=Sc+4m5QDPgmPoGAUi5+LRbqIpoeBCbDtf2VDfHTlHKsBIW6MUjhYdybYN+hTMnDOkOwIJyNKf0sOER2E32gNBtpWgFeJQOwwr7s/HPA4o0CwtCuxVlMMXivVErpztf5894wntO8IttHMGL+Ou0mIafMSquw5s/n/I3nHZ3b52MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ5NiLdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ5NiLdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CECC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774038293;
	bh=GPmf1oVD9I6ziE6NNrowmNfeNE0Kx/QuY/L6jLker14=;
	h=To:Subject:From:Date:From;
	b=dJ5NiLdY787uWSp17I89HeAQULD1iXWukFYkGvO8gUYIx5BJYf7/Sbp96Edu51EQB
	 Ll7Pstcd4F1mDf/NoGmtQM/UEBY0wMC+vnALJnHcRESxKgUdebZ2YBInlgmvTa/hj8
	 dM1cW2ke2XAd0M2heAXkyH+72pS4oQlBaQoQUl66w2dF5RyM3/VAwxyOXIIDF8pRm+
	 pd8fh4FDi1rZeicz74Z/4RF5BRd8SjWKKKbLey7cbKUh/T0BEyRDagJQLmfH/Sv22O
	 IhDMq5nKqRqEpSz1QiByRlo04lm0HgZwY9gcbQcVXUM86VXWPqrImSNaNalmx1LJo+
	 0NPPYQmp2edZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059F1099B3A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403829358.21895.7202941608426115736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8abaf3d34c51785dadc4d5d426657728f6aac301bd7e7d791734cb00d871758
Date: Fri, 20 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774038293
