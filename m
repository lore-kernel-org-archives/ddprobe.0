Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2668013FD86
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750476594; cv=none; b=V5oTpjwlDo2ggiuZ38JC6N5QXivDt672fRtgdbS/jide0u48T8QHIVFBbuRHVcO9EVDbypfxivRLbkPUPQffduov/3Jf50HSxevUrIRg7XPKGFsgMJn04lPkGUSnFbFTpFROKFMG7FOnYa4FOxhTD377S3dMy6HIEzMM79gkIVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750476594; c=relaxed/simple;
	bh=DrVlP019oFAtFZvwIDJrNDFELBCb/K39vIAQ4U/V5N0=;
	h=To:Subject:From:Message-Id:Date; b=up89f+88EAwCFux+bxYH77pxQY0QF7Y5NwLe5cfj5NDI4IgG3758LZWJIlGDNfTFi26695O04iJj/7pjeMoQAwGOuYLaD/q6TlJOGlFJWdHPZwyvmb1LV//YrkAtrsZwx4DTgjASaW5jEXUIqDI5jlG3QHsWKJmfWhB+sRyMh/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0eyhWG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0eyhWG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750476593;
	bh=DrVlP019oFAtFZvwIDJrNDFELBCb/K39vIAQ4U/V5N0=;
	h=To:Subject:From:Date:From;
	b=Y0eyhWG8AyA2cVZxnvIMaTDIII/ob7hQQWw6+gyStqsrw6tBiMf5hrcPdtIs9GLxq
	 pNmAyZgrbv6VmnHxWkdq2pgDvbmo9qBEtoCDSvaBkqeodv4cOn864kCW5FWYqZG7bg
	 of4j+IiqHkFmn+slHIVm+/Ow1qu6kcg1flE1VcPSmK+d1ILOKBEOf7xJ8AK+lXW9Lr
	 2/YcVNVWKUg2fJaxZ4WN4/dTvarTpQttuLZ77OKBM+Q0BzVWri9zktY8NyjUAO46AQ
	 Yi5oN0AyA0u794VVdRefKAeqORdoLXio8S9No0L373Lp0H32k0XDa8jbrE7cl6XfTY
	 JYuWJ1Hr1zbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94046C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047659357.13443.5472564244371618684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74575dedfc018b4ee0fe3979563b61cd301540246fb7d25ff74e57fe4707aecc
Date: Sat, 21 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750476593
