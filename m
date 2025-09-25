Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153B71D63CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758812394; cv=none; b=ekj+vwrpqwgu/sXRO1I8jECBwberMBRdJFxhd/H1c8WuAPns4K9X1fN4gAK1jTjTVzBhDhxjHVMwqrgFx6IfLT5Goru7vIX5r4Xit3AxaL/tgF0GOY0mswcRBag41GO+2lPtOaWIMNYmYyyiYb0pLN7UX+zG6fKO8RIzR2vCt4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758812394; c=relaxed/simple;
	bh=Q/2mr4N+aA0/sFhxi5SBPrbl5aYWBuidS4OxlOafPJ0=;
	h=To:Subject:From:Message-Id:Date; b=n+SCfBiDDNXP1LzXBLd2IVtBw/4kzWkk4oSFIFw09pOk48i5eYPAMlMUojctMDnA3bFODkUgbqcKy/kgn/3ZOMj/u745jXng0GnyrDtMZjfWn+epyfWilkr2IPcc8FnKVG5gaFs3nCCqPOwfK/cU+6uncOtRgH7LEHnvzAkNZnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZYNi/gH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZYNi/gH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B60C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758812393;
	bh=Q/2mr4N+aA0/sFhxi5SBPrbl5aYWBuidS4OxlOafPJ0=;
	h=To:Subject:From:Date:From;
	b=ZZYNi/gHSkbuNMe5r7FMlTcdDwADuNICMpMQMVLRieKRcBanhRPTpmLpXDau9PfMh
	 X2aTgsfrevEhfWnLzjPaLL+DjvNAJ0RRzpnvrolsgda0H6WtEAZOz+oZVLGJTPp+ZB
	 uwYcesmOi4Xfty+cxsR7BI8Qi0Q3aqbKYiI7gmh9rHLfjd/YdmC8N/9RdeYy6h6+0u
	 DQMJWt1pSJVAaGEV6AkodyyLicqDRRn2Fh941oS9jd4FFMGjcpw0ybB7t1tSPi2EP7
	 2+l5Oe34brM0vA/z7M0pX9RYWcVNFjwVXWHlxQGp3qpD+MdctvHPYtMto0mJqD2hkA
	 +M9Ok+g5nEWIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90547CAC5B3
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881239358.23172.11302906210119795863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c9178eae29429b5f863d2427bb0ef923faf35c61e68a02cd8a1b5a1c8c0dee
Date: Thu, 25 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758812393
