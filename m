Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A9C18A956
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771290293; cv=none; b=lLZPz96sMTDexSXtgkdzHX3BSlT175BrPu+2vu6/ZV7GjM2MfVJcDycICjap8ftWcwk95ouITqSHsGI54vQevxyco4Th3xu6xctWC7kha/R9GOYC23PnioPzqJVqpyFL/WWdNQ0XzMz5lH5ob3CIJG29kS98yLQHzwU1CpAE604=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771290293; c=relaxed/simple;
	bh=xTOcy8BemBylF1DxZ+1gD92n8ux161VT4aqDCaQUe6w=;
	h=To:Subject:From:Message-Id:Date; b=VUhnT5TwMEl6gCpKCjSsM8E+VmpQ+B0EM+bSpcxjLfcREiwEq7rqQr5ZX++RvBmfOkR7tEqloTJQnRgNzSm8ogOq4VaL5PQ6jFx9F8Gm68a8pgX010J/I2jzmVpRhJbRey6KkynKKoctGvf8yMEVXxQwIkGfXDX8Y6lDxNZXPKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uluI4IoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uluI4IoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DFEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771290293;
	bh=xTOcy8BemBylF1DxZ+1gD92n8ux161VT4aqDCaQUe6w=;
	h=To:Subject:From:Date:From;
	b=uluI4IoVxtM3QbRRMNV0xk73uCvDEFRO/yJZQTbPwEbkn1Cd8V6FqfowDPqsW8M9W
	 UuMy1aiWK4yFdTVh9n6prIC3NQjqgY1R9MGzYIXpj1syhrBdgTzFonKXK1ct64JRt8
	 rmfEonxdJHPB6VnuRZgL/eLK4ZHBXEqph2LdOftQgb2IkjeZcOSB237Py9sWNUSKxY
	 Ykvd5FDPxGinKzfQGwhilyaRpAa051Afa+sXUkikvtV5BOn4R3rU8n3H/40FQY7Jg0
	 qlAskovXLSdjouu6yMskXnn4dS+WXWUdFom3GbzyRfCnXvsCeWRSO8BLVXZtnIEK9R
	 ZvIY+Q2BDaQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F4E8384B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129029360.23423.16512177670849579555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b655386dfebef6cf8ae67ac331ec20c4fa61f0a1a9915816efb66a9cdcdcc02
Date: Tue, 17 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771290293
