Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E2B5228
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723099554; cv=none; b=KFCa283nn4YiFTQwOIL2pOcnvMi387xqzyWDsnEimPX3Kyr0uOyRNZlGYt2K35ICzgySHqEomzPf6aMYIvVoBMqa084S16k8R1c8XbPJ/0hO5oopuY+EIUtN1MCufHbt3hnuDflSRC9E+4zsBdh+F8HxijT2Ne2wX6BSeNT4Qxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723099554; c=relaxed/simple;
	bh=KIOo/nS3XdcK2jI6HG/zPrGidnlYzGxrYBb2byJDkGw=;
	h=To:Subject:From:Message-Id:Date; b=r0bmi209Z8SYtzVKSRkwgv9V3q6zxC7VfTxP4NL4CjwhHZUe0iMoh3gWjneCzkYLyUI0EQxdYO8CdSabrNfmyW/r+Tc7DMA+Wwici6Rs7UrQbJirQgJwpeJPY321fxnuMTG+HTVzcPRph933QCPNn/ESSbpDRL4vhAkguU/f0Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUf+TYE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUf+TYE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F68C32786
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723099553;
	bh=KIOo/nS3XdcK2jI6HG/zPrGidnlYzGxrYBb2byJDkGw=;
	h=To:Subject:From:Date:From;
	b=WUf+TYE37Ov22UA25VbSz0BIWjlTqJxUK0lEm6i8s8+4VdWH8eQZn5U0eC95BuouP
	 CsIh7W++WVqpv78TzSGjimChE8JSBWQwKb8z9CK5ho5M0GTLHjif4NyMonOwKdbVL1
	 Fw6uDC03ptCy1Nl9GGvm6bqkqbIlKlNaNRCpedETrcebtSfr/5r/G686ZpOuXMbJJL
	 +/CgYoGytGVDvm7JmeMspkCsZto1nv8qL5CWAfzOCz63bGDqes9MlRIfABrEwSOGze
	 HXUlG2CQcc9z5QewZqLiV8hG++6N01Aw9cvAqK3aMd6Ew7M0DIoKvHahIxEDUntNsr
	 Ak+U/98rxo2TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E00C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309955361.21575.17859452216167120588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc1073bf968851cee96fc5b745724ed69206b9bcacca5c3a2affa6f89d8ba6e
Date: Thu, 08 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723099553
