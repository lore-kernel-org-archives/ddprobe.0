Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3D75464D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769996634; cv=none; b=n3JSuKDxAAj0x1Lz4wmOzxQjlRMiSrTw4YhuzxtOfSHRX8mVNPZ+FoYTM7GcAJMuyCvloxBp5nuHrrJ+ITIbXfpZsHnWxtBbeV8bdcRJQyUvJgnLDEC0w3otGRNKfwLjw7O4CKXyjrh+pwl3tAihqIYKjVkxnjU2k+Jx4JQpXiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769996634; c=relaxed/simple;
	bh=FG86hV5RBR4Hi7QJR6klJw0PqFjuFBmn+9bhnr7DzdQ=;
	h=To:Subject:From:Message-Id:Date; b=mLmejaYHca1ZRDJmk2RHB3kuf1lZbbHSCYSZIHygw2CyBZEvMD7SLX1nQtoC8THv7Et1iKqciPeW8MjYSrohxStCc8XMBIgeVRyw/Qx/VDMddFUcAAk7hL8u1ECkFgRBJo8cVwhi+6IBvOwNTDcPUgPl1SCC38io0rt56f7HImo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXpafWgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXpafWgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE81EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769996633;
	bh=FG86hV5RBR4Hi7QJR6klJw0PqFjuFBmn+9bhnr7DzdQ=;
	h=To:Subject:From:Date:From;
	b=PXpafWgp8uW9SitnsEWkIxnDsQ09+Zb1s+Qx6oJE5Gs/l98X74XsenNBBLVEVNMfI
	 4lGcQ0CfTvVGuu+cqgmTIx+PqdHwJzRTUNQtvXeSLeGDAygTmOGXQ4K1QKGUDNW2y3
	 HYMfON2hoaOTRbhVmy3abnUuEQMZORB/K+E9A4C6uve4NY1eqNsSpIhFCmsKFmRXVG
	 6z53Qw8AKCgpEbLJy4y8i2OPJ2JOcPadrFoC+v2ZzdgcpPvvTTBACMG7QkQ4utQ/xI
	 jBh9G/znzIWtvo/JizrjeN7fAeVr4wlZSRV04y3qtwNR6lTUzgLh9xLLFgVW/x1reT
	 uiE4FggBx04bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4ED172B3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999663359.16907.16026694408783154823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cf8641d7025a53c55e44f13d5384a20b08f68d3b8899a22318060d83026c9d
Date: Mon, 02 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769996633
