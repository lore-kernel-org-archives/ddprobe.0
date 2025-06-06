Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AD428467C
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749194994; cv=none; b=OuTAxLoN5SLN0I1nTwzVp0gYon08GbVV9jAFBBEA4pH1SKrh/U8Ke4czm2hziF8XKjiqj2SkROLUQm1L0tkhkJfTe622b/U40SHD78YFa8v1Zg/j5KGMxEojMTjY0Sp1UJNDKptzd/j1Ug5nrsjV2Q6MSaP4+1tpvVo61BxMvTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749194994; c=relaxed/simple;
	bh=dLim7Cs3PFxWByxSPWZlsAlXxlKRwnWWQpA3tyU8F8w=;
	h=To:Subject:From:Message-Id:Date; b=eKZwkWOdii/jeXn3aTAmDK8eyJg+4x87Cq/pgKS4cSOdtzDcLd1zAOk2qy4bF4WHy9liOXZT41VMxVLYqUZ6ng2ZLZ066ZYhljuzHfPARFDa62FHQekn/z8cBVzBk6Y2ke4tQ43edB+kyLZTWv6Dl7ZukEvmDFVlxit7Nij9+SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0dgaVHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0dgaVHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82CAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749194993;
	bh=dLim7Cs3PFxWByxSPWZlsAlXxlKRwnWWQpA3tyU8F8w=;
	h=To:Subject:From:Date:From;
	b=m0dgaVHeXpRcfpdWSWUha0jZXZErrITCEhDHpGukZL1UxsszBvuhrDANb3Nu6LhS0
	 YFsIO+ZGA+C4d39Ty/ugyY7ldskXYQLSVMISylYHBhVnezX/uzPV/Ga/2kfWvvgVHf
	 F0HsRIeAQIfjf0jijsVDDda7mEmE/wENS2Q5KwEwyMt96S3YhXA3/BvyQqZTWtTww6
	 ecPZ5rifU231GOlvC/60rUAiPXF+nTTxV6zP9HGDcbb7jX0QCh+TSQ6fBaMfZMqQ0x
	 72HX7WxHOz8KuO9zSI6gq3Od8iZ6S06sXacrx9sQLTFF4CZorjKJSW7SoHIZSsEgSS
	 atdzm00ZJPz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97808C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919499361.25192.5163635902359578360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3edc595c8cde84e0ebc0347deff44f676d69d895784b3bfcab5c01d1ec9fd7
Date: Fri, 06 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749194993
