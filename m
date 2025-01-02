Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA851B87E5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735860354; cv=none; b=qX7lc1CuSq3R92NxGCiJ8Gh0zYTNtvq88qWhdO0OQq2LiJie8NL36DyRtxLoKx+uLWUvpfY3w4CDdGKGZYowzNAupAb5/lUbN7+iTF7Vg/GOMjDx8rIdcpeRcP4AZx1Sg1LNMY5QcpP5KTcopEU94T0fCpbtAR3CGE90FIvffRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735860354; c=relaxed/simple;
	bh=lSmXgrPIkF24oiOn+PQDwzY4CfzK234+XCrES21JT44=;
	h=To:Subject:From:Message-Id:Date; b=oKpJJzGMG+isS0xt4zu0+phiXgEhHdmKCvdqatnAnM8oGR+VHLsQNLfj2ww2riq6Q8DUilUVzC5F3R3Q2W6zfzsG0s55Hy3wOwrTBzKPX4DJzBeL/mgPiZ+HUsGrF9HUygqd5znyoLRs5DaRCt65WWHMrOSzAL2I58GMPpKvcIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtvmsdpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtvmsdpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF46C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735860353;
	bh=lSmXgrPIkF24oiOn+PQDwzY4CfzK234+XCrES21JT44=;
	h=To:Subject:From:Date:From;
	b=YtvmsdpWUoVQisX27Gm731yvDTj4izj4FcP75MaJ4+a/fHc+4f0EGnGY4kL/iEi3e
	 +wnrQMOBV1Ai535Xq3YCptsqUl85OolR43cvAprOZV9pHvxI240yj+jRv0tS2fI0B5
	 dmRwCPhE0waLfdKUuQNiJQxm+6kb39a445oyvZyAIa9HQBtTdAsF4pEk3tL8RCBrQ8
	 0WY9jg9VtF1dUBuz8KDxqNuFKBksyTC1sbjIAbQV5mTpiXjVJmVhCWHNB18H3Ptv0m
	 eqvWmnImXrOwWOE6awtZWY7AyppyMah3BJkEziHeAlVmmU9UDDm8PnBusGfFPyxh0N
	 mk7WUx6q+J+KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB29E77197
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173586035363.12368.8363387152701155633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ade5703bbe6eab1043bec73619af19d3847892883d91727bff64c5ce93824d
Date: Thu, 02 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735860353
