Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B53248886
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762546194; cv=none; b=g2XWWgq1oT1rCE6mQ4hDmMEW6U3qTF6UetffLd9a+wARvfxIj/oA6QNqggf5IugkSakQEZvCvGXuP8nzsD7QLfOxpNeAOg14fcRjB7B4DHysV61ONIBtvotMhx5oNUVci65FBQNacBjT60tJgTmgrS5pj+kx8JmAiWN29raOoOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762546194; c=relaxed/simple;
	bh=uH1rb0m7qUu1mq/XHQ1l7DXmIhIBzuZfOwq0EwM3dDI=;
	h=To:Subject:From:Message-Id:Date; b=uArToEEWOQsrO5q+UxGGvzQ7DB0xzrTggg2cBhIudJQNQoAz1NDOqbEuPw5u1LzNBlXVKvuLeMVRO2YkmozN2U3sSixZUik/WQq0l3YB/2CnftqSXGwGyb978fo339x92Q4UGcmdzn4xuYwexthLUB7jrhrv4x6n76YepO0hGgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC3Qm3AN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC3Qm3AN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A003FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762546193;
	bh=uH1rb0m7qUu1mq/XHQ1l7DXmIhIBzuZfOwq0EwM3dDI=;
	h=To:Subject:From:Date:From;
	b=DC3Qm3ANmJcEsD71Am8JnrIh57dNVUYdsNeTCH3/ileug83XvUie8BzmGOL53XUy4
	 J6FrvrxXGj1wtFsH1S08y00+k0QR9QVkzhGgupZ27l5QkOZP9W4uHJAjsXEkyiQOVs
	 LBPTJWTjBl2M8scC5lGZW3iW0Cljdr4r5dVm9qaUA2WC3D6kQF17uf/pTDijoYfG0B
	 5lojWjEHlIP2+Qonp2BBTBE5053W+i6Pnp/B/byU/WDmuRfxGloTcjHxZo79wpgB1F
	 MiH5u9T+19s1KdnN4aKxMeUmOxaggW+yUw7BiygVOwKrr4XVKCtiELapK1ZZIojtKS
	 +qI93eQBsZE2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92504CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254619357.25839.17631940347702453698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af56da95f47e0630879ccaa645acfb3913040cfda2ced20586d49f104e9f14b6
Date: Fri, 07 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762546193
