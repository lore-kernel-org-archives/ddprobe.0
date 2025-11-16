Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A053CA52
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763260254; cv=none; b=ittW5QStECJLn1HJ/6/91Ry5NbzgTJmpUgtO8ybk+K2+yTCwsFoc/D2cWOj/3shdE3GDLZTHfnjtoZKpxL3o6zd6dy84QZkdcvCC3pwxBE+yuPziGpo6K/fHonSgKKbbSOTJtvW1Qf2/eIdaRLndH73fa5SVx+JjfkZvqN4gL0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763260254; c=relaxed/simple;
	bh=MYSpSIni8rH/8NSK7tLEKx6zJoLs5C9cPnEIOHSJ7bw=;
	h=To:Subject:From:Message-Id:Date; b=T37nFy4EOmL4jDOwg+dhVLZ3Ot/CIy6J0HTWwYD2xxCndv/0ESaL5HhYYDMevAhZDuvRiCSESf4S9z/Oi8mGFoMUvSLjCqskt18uGbqBfsZdC6AAr3yOvAcxseCiy8c5+4m0/d0e+tQrySJXenvWEzHuQC7KjFPZgHUkv6WaSUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qItKwz69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qItKwz69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2007C19424
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763260253;
	bh=MYSpSIni8rH/8NSK7tLEKx6zJoLs5C9cPnEIOHSJ7bw=;
	h=To:Subject:From:Date:From;
	b=qItKwz694EgYnjDgjZ3ioCkAH19Eeyw9Ck0fQ6xQGBT2C3LkhMemtoBwgYeCZRwTE
	 OgYzSAEncDZlqM9ukLl4pHz7DU/Yu07BFzUMjk9wm9AKAYO43fkNk3CA7/s4uBubck
	 H8UTlE7UZfpayXy4RWpBo9vwXUr+P/4+ZRMRos+5rG7j1Ap09ldEN2RG8ZT0zf3g3q
	 Xzr7d3MS+EBtJSsrY/UYHOvXcaz6YmIm/ddtBmQU3Nl6AjnEPYj+wv+mUTw6RsmLBG
	 hu4YuuFXP1lJ8/Ik/oknE62GGBccR6+JF13fVy/c3SIh3u7t2k4etwkLhXw0VAsN5Z
	 svstSTpcyhBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C4CEBF88
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326025357.18035.11892926748531908984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b76926d4f8c271a11143db0a4a944a190aab6b93a187dfc72f28dca64a1409
Date: Sun, 16 Nov 2025 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763260253
