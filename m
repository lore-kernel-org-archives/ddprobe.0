Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CBE26980F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756755593; cv=none; b=Z7Jwr0ZY1yno8L76wOACTRC63q2egX0tMAZRgCEgq8SPt59FIpLfOWb6517rSmE1hDpMfIzoWNesC8Ha8L8mhsBHpI+gkK8fUryEye9EZjF+D+g++5GcGLW1n/eFbJSYqRGVPzE/18/gWMi21cHX4kvpKfC5SvNnEq1a6uxL1ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756755593; c=relaxed/simple;
	bh=bOXUjfr4hGSD37O6sVP71SOoaZ2v0vEpZcV0gO3FouU=;
	h=To:Subject:From:Message-Id:Date; b=hNXC0kelNr5hRAGWHHMLzGIfyG6NWkOL5DOmvzMmMqU7Yw70fwuZ4Uw2sDOUvfE3ykhO+VXPDbTWTbudMPkmTAsXwJJ0CJ9f1J3fxfPe7Qvb+KekriN7hoRIMe5y3oltrTrM7hNSx9gSDWVfKk2+pPNg1rCg4gHHC6jLZoekoy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hkqzwnnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hkqzwnnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756755593;
	bh=bOXUjfr4hGSD37O6sVP71SOoaZ2v0vEpZcV0gO3FouU=;
	h=To:Subject:From:Date:From;
	b=HkqzwnnjF+rwUEuBI/aET3z7i6ByJVPsbypJ6nO9B+yJTa8RUOUCRqCpBMOi6R+za
	 LXLPagVbiUOwBf+ZCBoZzOg3TmW1cmtl4hvPKPFhU4REhoFxJKX0po9pNblx0LFqkf
	 viJ6y7VaoTMbXP7OI7Kdf3SC0fkbWGzID7Sa/lvAajR2rNJVEaRGeh1UKXW6VBML3J
	 2pJ4kpRfbuy8yUnr6TgVJ1haTEnJ0qggZldlR2ehLrIin/5ySwotrdbhoFhJsvtZEK
	 lpPAT/0PS+E8RNiJI1mgi1XvRuDoA2yzFXv4FX1Di7OenNfeNuvmXEp6D5UtO/Iyjx
	 R745Vs5sYr/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92458CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675559357.24356.5583003299164130549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5592170073586ae741ab0f8498c1ead93d30a630211b627631104b4a77bfff2f
Date: Mon, 01 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756755593
