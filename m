Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE0B2309B9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765950234; cv=none; b=QMk4BBW0ZumAskEZXSqwsspXJDMWqWe3wqLAsEB9Rns+QSVGZPSSc7dR2s8LlFgqqJVSgLgKOqv8r7Voa8oD0bf6SdCkDogoT+EPXcdFJ1XZB70oqofDBs8V1W+PkE3miION86IDbhmdVypaJN5eQ31cpoukXMUBzTtlUB9gl5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765950234; c=relaxed/simple;
	bh=vo0MidfJoikt1C0YjroJ6mnx9bkqOHVMyoAN0BDGwZ0=;
	h=To:Subject:From:Message-Id:Date; b=qZGdFmEg3rTpHV2yQSMgyXfJyVQfI8x8A9pefDa024vH7fpTbwY2uk9TZqCr8dCrNS2Rau3LdbbSn5RlYj12Q5PNLRFSjh6Qkqs+5m5oVGbhqtrou9muWVT8L1o13mX0/lsMurBdOQa+dkWGprRn9IrVrkhigWbmlCC18bmFaws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcso2L+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcso2L+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE377C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765950233;
	bh=vo0MidfJoikt1C0YjroJ6mnx9bkqOHVMyoAN0BDGwZ0=;
	h=To:Subject:From:Date:From;
	b=jcso2L+XjjMA9pppFXvgRE7vn20Qb+KRTABL7qJ/LpXtmhBuwn0Qr6rcOfB6OUC6W
	 4X1mo8ETUlKSHjjvWHQmP3aZz0YQ6jNFw7oKZrlJxDjxCUNZD3+QPtYjUyWoErdqgd
	 RHnDhtEhhNEYC81w+4Buwnh8igyFvzAPbmvW8lWjfw95i+vN2MTKWbWMPm/GIglbol
	 TId4qalaglz5ew88hMW5/I8UrvXPNVB6mpo6edYny3SUIGKnbp+xVT4dH7psDzmW4k
	 crYbnWuC3XPcyc53FK+YcsQX+qltc/gVDx7JkXbP+WsXksamIGxa1pgSXmPodb2nAs
	 b18861MfDMlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B03D64078
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595023363.12432.9424880222485400477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f510c7a964d59b4db48ab2025c0cf59e4ae871ed68eaaaaf1214a4a44335ef43
Date: Wed, 17 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765950233
