Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF7384A2B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749450594; cv=none; b=Jb0s0j41PFgb//yR9jfd+0t5+NUU62xUeJI1Q01BuOVPZA/B0Q0DDx96xmstNBKpDrBdBbqR1y6n7DY1iws8O+l5ea1vDPmYT9hvyUzwHDJEMQLEoaWkQD2RKxFkJAuoaH8mlFPC/EacnG+3KTvlNogPxob5jFFXkF5uORB9+5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749450594; c=relaxed/simple;
	bh=gxgImLnH82SqHi0dIvsfMrt94PHmJJFlFCVJK8x32yI=;
	h=To:Subject:From:Message-Id:Date; b=ZwsgopRGldX4r1LUz8vFfkB6XCKfxsZo8z8vF1Pp+hauLHx0nydWTwgVGMSgaVpX5rNS6rD01ctgQc2HnMWaEHIabB3K9bU3YZFEUkZPS1m4qjvI/5ctodl/PqEZUWUJ1TCtD+52NDrzKNG27RMOpj4Ko4k5/Xdjt+GvFxTngfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgAUQYyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgAUQYyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D4EC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749450593;
	bh=gxgImLnH82SqHi0dIvsfMrt94PHmJJFlFCVJK8x32yI=;
	h=To:Subject:From:Date:From;
	b=CgAUQYyKmLbs4CWycmwmlnzhDNLTL68OuDsWXwmHFTGUjRch7plgxPHQB5reamcp4
	 73OCcijIEFCOz5K7Z5Mtxpzp6qvIcq4mqA7tBGWClb9iBd6JVc/rHarvHWZJv1dJLl
	 4TCu1/4eGLAZ/+XhmmVTb3FwgxIHSICb70h3DLPFrg+2V04v5Av0ep0beBvqhjJOAb
	 lld9XaNo1Adv6iaAOBv469iJSdwwtmPfXpfP6GlQU1iwAD2h86gkRfMIeIiX8UHI68
	 kWLDpeKifzJm23ZdbWx/Wy7RAo+jw/YGANy7EucNq5iuiFItsMwhh5lf20gLcbUOzL
	 CkiN+bLStNOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED83C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945059357.28833.7864968012805708684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d45601203eee5b3a6403ef07839e02ab4ebf2c5bdf8cada8c887238a2a7cc1
Date: Mon, 09 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749450593
