Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339DD1F12F4
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757280594; cv=none; b=Ahg0mODnR+mQd/YtTpQYNKD/k97EbVBYjA8FgpLHoPuJh0GxOnnjFXWpchNDI1+6rhYmo5srYz+3WHapLPbS2q2+I6JZ1Wk25dHWo30b6WCgx3aiUaKVin/VyH93pM9yjF4pvOk82hs7G9PoqCjjY8g2Sl4tcqi70+6FwfPrGNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757280594; c=relaxed/simple;
	bh=q6UB76NDiPS736FTPE62QTK0rsCa3UhfrV/XwNOCQfA=;
	h=To:Subject:From:Message-Id:Date; b=SOKnzopXqIQIn8CiX/5gU2FE8NuzoACLnBI8LbGgxNTuZ3LF2kv9jWbGLDI1qm99pZSsRWnH5MazFV54NjDt9OqnOZ6GEYVNODLyd16pbTMwjPYC8x2uFMpJxZS7Ql5XyWTiDFg9lpe98kFHWmwNHz0m11e75xZEU9Se8Y0pBlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGB+G02K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGB+G02K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F29C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757280593;
	bh=q6UB76NDiPS736FTPE62QTK0rsCa3UhfrV/XwNOCQfA=;
	h=To:Subject:From:Date:From;
	b=TGB+G02KRwl8fXV0dqN4nvN9JVW2TM0bPBSlGUAwLF/QDtOcipbUvLclQXKpRE1/M
	 FnlUBqCzfCFSV52+4AayYfqddWXs8r7a9XGTC24yIdmOLZT8PXJwZK38xTVl5moseY
	 dZQ4wVuWIeh3UUrHoiVANa6dKzCvnbCFVyq8TbViO3BT3lLdO+uLybapoB+iPGU6N9
	 O+0ukb/7zhWbsZa971+30BpSH3dlbSZ42RXmXsOeJU+BrbUt4YGRp7jSkHBNm4hR2G
	 qIfH15xKmrBcaH+QsDqWcgWtMygDyurCO6CeXdQ8GYgwYNBuVP9LkHwfcgbLzBpST1
	 MI3401Our1OPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9278CCA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728059357.10015.1118861458555129880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b58d16fb07bf515a5c62aee0480fd46bfb1f0edd82a15d98a94526e0b20abe5
Date: Sun, 07 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757280593
