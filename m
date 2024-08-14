Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101E5219EA
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723626954; cv=none; b=s3L7bH15HI+Xttu3Bnsf6cedraiuyMfLPXiIUC05fKU5TS63bgrIWTFmRVLEMcO5zPFQtPGzvjlxt5N75CGQHWzm/efRp0bjFeVECQ2axs9YW1mW/JwEjGrpCN3t+zfWm2XVnrwLz+rEYljYHrEhNWOmaZZfbpiYEiQ7UoaefK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723626954; c=relaxed/simple;
	bh=DYBvMFjX0ccaULT0iBhMuyE31Ae4WG2dzw4to/YJ2Eo=;
	h=To:Subject:From:Message-Id:Date; b=HUZ74jx0OEhBQUR3INBlmdnJDgn56onEoGC5jGTt6X3A7mPaHweEOTokMn8QQicpkwYyB6cDh9B4PhKKN4+Z+yseSKv1sWA7vFoVkChBYUJ6YKGf0Gw49B50Q3jYJrj63lUbaIFw4UQpCOOuj7BnVrltejpF3MXGJ2mSuLqFEqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGcend/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGcend/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D4C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723626953;
	bh=DYBvMFjX0ccaULT0iBhMuyE31Ae4WG2dzw4to/YJ2Eo=;
	h=To:Subject:From:Date:From;
	b=pGcend/25M9ESLBTudXoTpPwKhehdCm9UV7nOLq3+B6IEM7ja5IwnEU031mUaXXBS
	 VnqD4IUb7QGQV0yxbopsFcvlWvx5xcs8ZcyjkImAuMzMNbOuf8keQznHnm7XKbUpG7
	 c0SmRT5PIKJLOH6rVBlcL5XHV1QeWhD11HxjFM/pJCz10NbV9/EGX5uHwFgKy6hdEf
	 K78e3soj2x2u4NJWHQJhmVo8k0c+xUWLE1q36O60Bl2xYCV489gUStUwbZVv+GowKo
	 RdJMliEReUdPFyKr1/RaxJnjURQE5WOKyoapLmE2Xpea3xdO3e+YiTwJKLuqZhJCwn
	 P/9KOJRuUmJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431CC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362695359.9266.13844742738450519676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c37118cd4cc5c709d4ca0b4df11c7bd8ae106ae6c1965037203e340b6e6773c
Date: Wed, 14 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723626953
