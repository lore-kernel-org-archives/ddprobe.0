Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFCE2D2481
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766926434; cv=none; b=qx/TRlhKzRndig2/jRAHlEbQ1fMyhqMwUc6bIBhGmHETXDGzj8wAxOPr0NFSu3dW4BkoaYE8ZL+sqsnDsD82CSBhfZNZU7bpaTxWBhjlKYRnWQS+dMIbQLsScSKLfGl5n3eN9oDBE4y1c2WpQb9grh19EaQoS51hYpvBX5hPefI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766926434; c=relaxed/simple;
	bh=6o/7DqwMSTW4su/QzVHIxbnQaJJRZoxifVBbPNezdvg=;
	h=To:Subject:From:Message-Id:Date; b=m0UDmeWQF9WF2nzevj54epMmbuzbTZLwB20WFhplYg3fiqtQQFZVCulXOVKAoS+Nhb7ZEsfcQJSChYrRdR2YygSxMQqKderM5182JyhApD9LrprbepvmOA4CsNVpbUafZM/nOuFTaOIU8K9ZQaUQXCNH95eIXqKPmW8EaKNhk+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRnV2DV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRnV2DV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2754C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766926433;
	bh=6o/7DqwMSTW4su/QzVHIxbnQaJJRZoxifVBbPNezdvg=;
	h=To:Subject:From:Date:From;
	b=SRnV2DV7wmLrIaUJWAghF91xiWyHXfny5N6c9uelmyg8IYHY7B9rVtQz90vxbtkSq
	 oWInVsVzJN7Vw+mv1sf6m/NY2qBw+2mDYAbFvL3iJqoV1vugxqa08sejNmMKXZXDFC
	 1me9Jx6xEZxTtP2CnnVZ1WPboNBWq0f+AYD3KKFrfIy2cNDAQtfKlDKYulBEsr9hl8
	 Pv/BFYnda0W4Sl1TbIsCDINBdUaEye3QPqSTSUMhniDO4++flW7kWC/3Ehk5Pn9EzG
	 Pjieuu45j3QIx+4aSQZtH7o9yfJlgs9mIq9rtyRBkvPgo9hOb15lAfNPK2fkrYPMcH
	 MXLF7DiIPwkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A08D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692643358.21227.1235113393640454303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efe2cb27f2e5bb61a0f9db65b58ce17b1349e260aeafd0e58522e697b42d60d
Date: Sun, 28 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766926433
