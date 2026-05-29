Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B99A318BB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780086754; cv=none; b=aJZ730WTJdR+Mt47TxwXKUZxDJgFlSmK0SCZiNh/+NQwoxgH1pU/2XRFLZqV4qXdMwAqx/7xJy3+n2BFKbiezHvk1iZmcpnEMGPftqe1jBf4MfKDzjp9rsCBKlYKcW1znMIcAEVpXvdtK1jypk5GHEceNh42WKT9HCYlsXCo3r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780086754; c=relaxed/simple;
	bh=LVICZB9tXHLQPksFuKRSFNB1HPWs1kUVnVKZOYURLu0=;
	h=To:Subject:From:Message-Id:Date; b=IEyflum1dLU5GbbH3tDaOt0cmNb2+untji6mI/zaMA0HAHkSxGOW6bcQd1KY+lj4vLflXiW20CKZ8CyBJuSUz9FT8LEw1/qQZ3gn/iwge5SKZC2vWfzrv59361WgVgMdnLyGwrC2ZrTOSXn+IUQDY7kAXjGOyNe8FNIWZd/YW6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG5ltofv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG5ltofv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7531C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780086753;
	bh=LVICZB9tXHLQPksFuKRSFNB1HPWs1kUVnVKZOYURLu0=;
	h=To:Subject:From:Date:From;
	b=fG5ltofv2jIzIDL4esT/ZZA6PeRzMVdzfcYMM2PxJ8w50nSDBBW8bB3mmVlFE9tfO
	 n8zZzVb44s03HcZ9C8sjHoDd5TSXDj9lbk6nO6olGWsivoM+IQPXUyZeuNzlsP1uUc
	 Y0kb6zU/8i1wUjXBGcf7OzviLtyemcz2KEMtR+uPxoEF7+j3cRLe1Jca96ma6j4oRF
	 KfId2bFFdIeNTbMM2xT3LKKMyuPwpQ1i2tr7dDpJa8WMELknWZoZl6p/l3/xj2VfeA
	 GNW+NBje+B9aJWFZIOwBEnARaH3rUILpxHwijuKe8myjXAOyQf2o+plArcwEWdMHA4
	 YXlkL5cW4Nwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8143CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008675374.8124.16459599172901632712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f33223a2f4cc1bf89fb038d9d33788db3bd662da7809b49810b05ac6ec47e51
Date: Fri, 29 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780086753
