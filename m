Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECD230EF63
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778111854; cv=none; b=Pb96yEEeAwszg6T0eKrnD6m0WEhWx9+OcWNUHdJ9+e1klgHpm+5NXbmS0tIPSLdj4Beyiv/tYhGz59LbpxaMXDnZuA/cy15imQ/Wi5UNI96lbWk87nl3xBp/IL/T0unok1jWZB3TeJ0Q5X32xwserDtRxxcl4p6XRv0gSeNcSHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778111854; c=relaxed/simple;
	bh=nDPZUY4gGnYsdHA9ZtcBh2KSWV6mWa+plsQTmcZO2D4=;
	h=To:Subject:From:Message-Id:Date; b=UEC5iY3Oxz80qk8jkdJoHfWXm94UCNh2Df540cEbVIxd829NbdaYTy3HJaNgYGsxSnsX3s3D6ObVE8aA+sFUEW2lOlEYxyAuNcvDjtHU1TnMWDsCRj9XkXMX6sIh2+88Uf2DpTVECCNZ6woRHFl/z+sjEj2iQRvTaMsJ7i9KGI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJatxbCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJatxbCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA56DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778111853;
	bh=nDPZUY4gGnYsdHA9ZtcBh2KSWV6mWa+plsQTmcZO2D4=;
	h=To:Subject:From:Date:From;
	b=iJatxbCnWg5MXaPoGP3sIlMT4DiTrMKBSVUf8H47BpX+IiianVWhijNoonHO7/AVr
	 iLoYG/2y2lxn6U2TqiT9Y1cE655MHA9iBbQTavZ16k4/WEtKdfnkeU6p0jeC/M9mae
	 LC1wZEHtUSISUqXfrjgVlLVonuAUS/pklOSdsN4yx+kvTzrgpZOLsFejxpe9XMXYcI
	 UhbfGNZZSEFCIDbDliVboyAjo9WJVKm1DqtkvPEOz2gcF5Bal5Uy9sU1hTDvV76Kg7
	 r/vOLNlNCq9JJ9qr3Fev+qK5PeZfvpkc1DqzId5a6bf7vkgrHSALUdmepxBhVvYp+s
	 6OdwllAZ13zaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB217CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811185369.24269.1715629835104851429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e70902425c3d42e06378619f8ce8d1be647203630db8a5043220eaaa304034
Date: Wed, 06 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778111853
