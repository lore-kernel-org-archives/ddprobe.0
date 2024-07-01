Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647AD10F9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719795263; cv=none; b=HGbMXTQLF9Oh+15/XHsiizK5XcxCSq4UfSYyQ+MBgqdhZCtHHYTP8rGzL+uIOizhKW8FaE5qxqLHgR9hmsg7ueKLTVko0hwUnL7RK2JdIkesDazWmdzMncECztah84EOvpOAUnSXhiH1HbzHXu7iNx8PgF70R+50tUq7iFGTZVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719795263; c=relaxed/simple;
	bh=O03O3t6cndAUIWZqVFSENcvUJMqT1RXVDKbdpvHW210=;
	h=To:Subject:From:Message-Id:Date; b=XUH9TDfxg7y1nwzcX54789qG6Bb8/PcGXMJc690jxnKtI4nZllKvysWN/cfNyEcomKHayG548tyClPm6wyZoNNsfbeDQQRbw9vc20H1uWpcCoyBHH2LU1mmxVNjM0A8kWpnlZ0uBsMbDyKxQrj6jg8tOmrmTOGNa2KddSguI1eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZS23j1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZS23j1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8AFC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719795262;
	bh=O03O3t6cndAUIWZqVFSENcvUJMqT1RXVDKbdpvHW210=;
	h=To:Subject:From:Date:From;
	b=mZS23j1KSI9RD0EvIQVHPtlk2YJu+bBlYWrOIeEUb37o/gSv/T6wkbSV5Wopdjf+8
	 zpVTTtLPFBP1ecBYUijTQt8wP3S0QLs9VVWH1LfGvNmE3XlqgGeM8uCplSM5HAvT0n
	 ajqI8ojZWVRR5PAdMlbobN6w8DxrcX9O58rwUGlmKb77w8Zx82H7tFxVZamd1DC8r9
	 QT9yx0ZDhmniCA7w0zM/bdtQ/sLWcGmkPB5+OKIzBeFXi6/my44noJf43AvHIPhtx7
	 48LTdqXKmk1DrZw9+jy9JzR7YgM71aMfRXj23YmOhwAYJeVpK+yQ/bvRKLs9JQqCzV
	 HUFgLivpNZEBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A95C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979526278.32404.12039064285600628382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d97113f451ad7025b3024227fb92f1af85498209802213c8566e926c71c21e
Date: Mon, 01 Jul 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719795262
