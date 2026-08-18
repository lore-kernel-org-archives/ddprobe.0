Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552F041F366
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787041234; cv=none; b=T6DiQ3Q6fPF+I1thdqqad3WRlg2Oq6U/GxHOQ6rpeBKPl+kLHAprCdu9DhwcQtIPo7s+18B3daEiZTCUI0CYvezHQuN9JteUsXirVGynp+9IkoTbn575/3XXPswTIBTNs39dpNIX83JB7Z8EK0wUX8t+mivI1oQWBZFUjCI20tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787041234; c=relaxed/simple;
	bh=ZKsx7dFRDS9mFdE1/Pr8NK3xrjQ7J9zjq3RL3bBo1BQ=;
	h=To:Subject:From:Message-Id:Date; b=b+F3pTYsRE78IVXouHT2ydlF8G24ZLjvvMbj7Lb6kpgI4rmiyLmxk5izXvktv0fpXsO7EQjqde1G+GpMn6f0dxD1ojU7oGlZqKMfa4+ip/QWtWsaWUtPqaATDhXFUtynnNCE30OcIry5l6AC74teCdzt1EZHHW67UTUo3DEx2Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdnqtRNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdnqtRNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787041233;
	bh=ZKsx7dFRDS9mFdE1/Pr8NK3xrjQ7J9zjq3RL3bBo1BQ=;
	h=To:Subject:From:Date:From;
	b=SdnqtRNYCH0PId+jYMZDldHCGwGr55JQsqZk6RhIiuM4KgFL2mP5LwLl/Ky9zvuSd
	 mn7qUaTaH1zy0kvWugMompgX9rnD8o+MDdUVk92QJGsiEBOUvbYdt61ywTsNJbVzOe
	 dWqrd2vEzunO5tBBGSFDc/x46NIp2/VDyJEUoJ/O4GCwEQkZyZnMemhHuzjFgqgmOs
	 5xJqX2MaJpokce0WnaW5kTHsZ05fBUVC7BE6b3RXoXxWt/mWg/JKIklkRl2fnyF5+T
	 E5e7jYIJZQbOAaWuV8IezfOXJ6TqL6p0J3edStvDZvRe5Jn6t0+Z6MZD5qxmAvjkvQ
	 xk1FG0sNparTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B3C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704123368.16047.8696986793538769074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7b318f5a541090c475049a91e4a4fb6e4d0df06941fd1cf2ff3a202f30912f
Date: Tue, 18 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787041233
