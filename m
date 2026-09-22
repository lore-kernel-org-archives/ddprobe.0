Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C84549388
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790085634; cv=none; b=NmGVY6r1nulUkbKC8Ogv6jqFvW4nS7bVHEbRl0hCOPRz4Pdbrr466aGja9cawkQBCPcCZadvXHEbKRRMyREEhHolEJRYw35im3SkDDWZy54frIQVRgdphQJsRRvyDSkpGM6cno26syOALU8WDsPeAjsXDoLnYfpV1PKTS1X/bRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790085634; c=relaxed/simple;
	bh=YMBiSXpOtySXYi+RUMCFnI+gIVLAfQjQu3nKm7rGe44=;
	h=To:Subject:From:Message-Id:Date; b=eb11t54FisUlPE7KdxlN0IE3aFybRQEjkCM/2iEce2bdB14twrI20u7gW0eSFDwW3ZCbouQD0jab2CiZoCsuLEU9YS1ZnaCSqHL3YJ1DcDYEBp2lTvCEhKRjv/kLgpDzcjcvw7DX2vmrZg0giWQrzcOfXwdiBUYP38T1AAIa+BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG5raPVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG5raPVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D150FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790085633;
	bh=YMBiSXpOtySXYi+RUMCFnI+gIVLAfQjQu3nKm7rGe44=;
	h=To:Subject:From:Date:From;
	b=QG5raPVk2nO2+bHIG2baaVfnn/llMhbInf8V/bm0V3HoahlZBWXTQVzeKJkzqgUdQ
	 Cy8XbrsCufl4TxbU6pI8mU3ZIzLJTqsltIxPkA5DaO3nJI4W59eATicTvg2zb5ZfOG
	 tYuQTIk+H0DbhfaKU19c+NwnCULagQN9uQupjb3OQSmZ3Eq5iHhHwYdQRKVC8QMEHJ
	 /pBrZrkUyBBt0fPs/F3gelMq/A/Ngf4YsUfAW3vLxcx0rVwBu1rixyQs+4Hnp4srL/
	 GJA2CI+wV/krcGz6m+LEq66SSgW5+stxZSJjhwqLXfQJIzQ3dHmQw/bNHMC5lfM73R
	 zcCaCFI6bCnSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C0C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008563370.13397.15619539549302150252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf56ad875dafa51bf31614fce138b0bec5b40717eefeb848bd35fbadd8d3940f
Date: Tue, 22 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790085633
