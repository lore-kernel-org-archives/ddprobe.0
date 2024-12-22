Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B4136E
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734878754; cv=none; b=SnU1iwUTxMxnLE6Lt4YpV3RKAt7AzKo7ni4fPCsbib2sk6FyA6B6Krx3Q2M4hc1ZeSE/Z4cUyBhLun7hSua5Yzo2UVA1SWLDUvUMratIMoMLLm3Zt0dnPuWl2Cxefwzf1wa4LhFPzdlxgZOr5Q/2/4rL5/dPXgYPq7O1fpbBkEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734878754; c=relaxed/simple;
	bh=+WQe14E/SfwMG7jNFQXF9QADWRbBKIh7fmTeoL8ibnQ=;
	h=To:Subject:From:Message-Id:Date; b=FfXVToNH5St4pp/VLlUiaBbyEzAs2uDbwTooxyFO/LinzAsn++fwYEOaSE4Gd4aWGlN6UTdOGQSBCXlPIF8veaFTX892ht5Rgua2ALCkJPwH6UID1vlwVW2FtukhSD6Z06blyEO+XJCeXC96UZpHtxG4LLb8bGI2VrYv5K8RJ00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMZxezLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMZxezLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA4EC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734878753;
	bh=+WQe14E/SfwMG7jNFQXF9QADWRbBKIh7fmTeoL8ibnQ=;
	h=To:Subject:From:Date:From;
	b=uMZxezLXTpCm+YikSOQrhRkv6E99rOgn0Wl7F8TU5ror/xsGzSNUJAuk381E1UBnx
	 2cW4rkvk8mPMgfLW4UtSfq82zhZQ9Y+05qFNGhPWIn3CzOt0WfUyNcR29S3agXYGfq
	 xFFApx2MS8UCOxdoiAyTYG87WsfB5Qt+5OV64ZgM094R//TBFDeJ4ATw6D6ExLkfvH
	 Q+Ezn5vuzIzuC5DyqPnWXropV1iLxpTIsv1aVrcBANPgaS206UbpN0lPBEdUb32/w4
	 ND3srEM760i5sS26dwXzz8QH46JNTe9zQm/PTCK6XyV3RrzxKoi7sCtNhWO/z23Kja
	 hwId7Bl5uLDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99081E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173487875359.15970.9721937283090856605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fef62c0d07dc33c3cec0df3817812a09c94bbccb5a8215d9c44e8226329de3e
Date: Sun, 22 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734878753
