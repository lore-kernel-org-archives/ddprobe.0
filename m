Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300313A7F4D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779697954; cv=none; b=JxHLcCBXjnivrf26zlzBtlfxHpvvEweYGBdXmxFNcgoskhhky0fjwC052GknXFiFYawatmdtNFXblJV/34/JAylEpGm57qr2ysbgvOHCEllhZPqUe2AP+ud4zxO/xSnpAOkvobeMIzJxlBEk1+XlwqmIeBSw3o5bx6NnxsCHTDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779697954; c=relaxed/simple;
	bh=Zmn1l7I1xotVQRfgruvZDyTG0rhLlMuQTK+g8JpMrlY=;
	h=To:Subject:From:Message-Id:Date; b=CDOH88IM0t21tR7+9sPOpPfxBlcaVzC3MOyiWyOgx4CCl8bNxHya7hreAILjkRCI8HS3heqntLak8L3W/bwsE1+8fVBdFS3Ky/VONFtMImdHcNc/mSNWZ/Gw8CdOnbdLZUMabz+5w2LMIcDOzek0IqB3929JYF98tLkmfr/VuiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIlpuGoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIlpuGoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BC3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779697953;
	bh=Zmn1l7I1xotVQRfgruvZDyTG0rhLlMuQTK+g8JpMrlY=;
	h=To:Subject:From:Date:From;
	b=lIlpuGoWitITcd3mvGki4lPfhTcg0JK3TngFjcAI1GBVuYU3yu4LtsqnfCWCc3QpV
	 HrNL2VREFSK0U6vHiyURKZ6NF+VJEXl6ELoliYJRBiVRT/aDjwjY2k3nslIrQQwSzN
	 CDzVD6wf3GYsKraO3SCUa1nfXJlFCfoZ+KG14i507RZJaET+hTZ/rweGySjunfyEKQ
	 zEW+/2t5Q3PU9kl2d1kOQV78qJToqypYLtXrdqPkNwS31+P0rKxBXf2BF8iLbFycCL
	 plG2dh2jUIlcAMLJcbtDRTyalYW7jfIb5oug3t4De0ghhrOuS16bKYuEHpTG7y8t1q
	 ctU7//WRyVi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0115CD5BCF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969795371.25043.300054849736948080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b8e8cf4a95ceedce17b19fc9f68f154285f3dd5203ab3ec52999e9ec894755
Date: Mon, 25 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779697953
