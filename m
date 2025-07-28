Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4300C4A33
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753708194; cv=none; b=gUfficDnP/YOpnu3wlqqqt6bhb+r9ORh8wjFLOeMTlVTv/5FI6vtrhnJxXkI7/05kRqdPzN13gjU2f4+mu22TvVif2QARQ/SEFB+Mxky7RRBVLJc5ywyzzJku3JtgTw3YfH4zogwAnbapUXxDaNVqjY2sckd7yVBFoq13wnkZUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753708194; c=relaxed/simple;
	bh=+l2ExHcOYJ+sMZDbSxOaaHlVzY0vLVEdlaWY1O5ljpI=;
	h=To:Subject:From:Message-Id:Date; b=QU7YfuxA2zy/kuHYUhXF2PxlthZCiOnPYdNFki1mplPLtTAXGmr53muZrfVyo91PxNT7vkUiSnwbqKS5nc82cujRzpR4920sty1Dg191MWvUvVXPVlQbjroYeGxXxrl9YBIOYyQLxBW+/ZS3vhCMEu8BCz8O78fBfqqlVFd+eBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDIhN7qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDIhN7qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E58C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753708193;
	bh=+l2ExHcOYJ+sMZDbSxOaaHlVzY0vLVEdlaWY1O5ljpI=;
	h=To:Subject:From:Date:From;
	b=fDIhN7qtXTWhWdsC7/PgxZ+HtCGvXc622x43i3SoA7IQx7IqpNgQjoTmUqF6NoCcD
	 BGaDPayJBU8nzpkiQ8wfSl7h1mloe+jKgGNui39Oh5WuBgPp+OnCaQLJLAsv3tz7Xj
	 pQPu3pyM2E6JyG0/XIgEakNWFO3ieTjTXAdxlk6FcYgFdoHkns0uWW90lmqkawXzaL
	 iSyLLD6HbzFgNAz6oculxztyR5SO2WuvSe0uoYXdjEJmH+dwFuv9M5qt8otePxY7KJ
	 dzrKwpdO2Qvc3BbR6PFhgQCC2CvrwabYYEZ7j8+2dkHfGw6P21R/J3f+jZ7Ft3JLac
	 l13jISiofD2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D7C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370819357.3510.10778011589981117418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f524f33268fcc267f395373d3bc2e26f3c99a314cae26b5246d72cf36148e3d
Date: Mon, 28 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753708193
