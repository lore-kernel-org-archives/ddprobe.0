Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139588BE0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721609754; cv=none; b=GkrlZqLDo40vJwPaq7zZKCKhYECzval/pDBUHJtiA8+UJRgOagizc+D6brIJ0/cMpCxxle1+YQNIDvJmxr8Tf8QOzJYhcfn6ZNRKFC0KXEJixgOCVq+hQpKs5PrnkxHSSFBoED56tbJfbW7YP/BZyfvXWhE09DCdJnZ7Z/HXgkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721609754; c=relaxed/simple;
	bh=iCA14LnQKJSC3BSAnSdM7bM7auGU7YQEnh06ggiMb3U=;
	h=To:Subject:From:Message-Id:Date; b=e0VUyejHxhfnC3FjZ/UJM2tX0XQKSPrQNzbsgnBIEmBX9UBdnRaU4rfo8y0+LCcbjYrD1V9iCa0R6iFdh6dU5e2HFdq8ad9M17c6+2N0inqlJd+NyPmnRBps8BGAqeqCVZY5TyVmi96GlfCjcXrSGLOpX54sJ6XmJgxMNIwAEd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hREymGZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hREymGZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA313C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721609753;
	bh=iCA14LnQKJSC3BSAnSdM7bM7auGU7YQEnh06ggiMb3U=;
	h=To:Subject:From:Date:From;
	b=hREymGZJYf9knHfkL8pUxkTf8CDgHVZ/kvRmAbWgVNm1D+cDGWDTG1xYqSwH3GvPd
	 gRTcw6kmlHNYhSzSMUu/5GTskLn3hvmDy2PGBdxutRR+mGVhGJkL8tqZmZu+CmN/hU
	 JSlR1cPHw8rpEClxtWpvUnoMHQWa0j+SQShHMZALAot1sr4o0huMcaBopaN0zTeRkt
	 XTYI7KcZEoHmY/gznEUDB93GpStPjaLAEbV1unxSVEaaxIlvJ87PXF2PF2Ksux1RU+
	 kWvpnGYwPTCojHa5FCbWQ9rN2XqZXh+ZoejLcrOaKaA7iyOMc4P2QePjl+Z01uY2Ty
	 wPCDH5g+OPnMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92639C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160975357.2339.14451163019623007419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b057abcdf78b137a31ff74328c7602f551a76e4036446815bf9d77f432aaaed
Date: Mon, 22 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721609753
