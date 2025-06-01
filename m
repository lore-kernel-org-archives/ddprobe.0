Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633F1A01C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748818194; cv=none; b=NUgZ0Md+YdOsdWILZgdd8ReulMMLGKtrVi9MG1F4Iwb9DxZeFBphEbMOkNpp/t8vJ9wX5xVp86PySpRJCmmALoHleg8vDnLnUPyFsDZuqyLCgZQYBvxTzDOA4u5AmRu/cB2XzADAsKFw85Y2DzBxb4CZs+VMYH6tB59KTyM3wMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748818194; c=relaxed/simple;
	bh=+1KZDrWw357unnOg6cbEJSViIqyj+SNOXbdspqStFqU=;
	h=To:Subject:From:Message-Id:Date; b=FvGqfUVc3z5aViInXhgeD70bSahdoU8px3/qtX2qGmt/RwUB6pEDWXMWEoOvh187BIB6XTtpRdksmu/lWm6QhcbRJqEg4o7D+qqz6gOOowo/okAS+0ecToO/+Ep/jS2AtHLG6BECN8ZW/Jx8XXk339mMsWxoDWTeoj/ulNb2bQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmdAtm/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmdAtm/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748818193;
	bh=+1KZDrWw357unnOg6cbEJSViIqyj+SNOXbdspqStFqU=;
	h=To:Subject:From:Date:From;
	b=GmdAtm/2Ftd9MdQqcnLRjMrBtEh3UZkYpm6oO6liMHmh563qMrzJidedxW0eAF1pS
	 dEFR73nBL8k5ObO79I8NGC0rav6mDDtyGIl/tFvUwU0hR9xoQ8iwDTSlH+xF0KstB/
	 MP/NMMFvBaGn40Y5k53uT83lCPfUf4H71qrACcOeteOPx10Xge/evHFzBogwAWoFjy
	 ylFtmPj7rbXsobcW/L3LNijcHOPttW0tU/ngMwtpoIOAT2qwqLd+MH0vgfaWuWfn2F
	 qKs4O8xMIpaIIWBske7BBkjfJLJMsnGlAmgymA6+w99smXxjJkHjbRq/CJD0a7eBSX
	 96WKOAzartgsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D1C5B543
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881819357.28210.283447256263074213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdc6c0aa733938d5cb29f7d71e525ae7904c12f0704cd15229bb0545522f733
Date: Sun, 01 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748818193
