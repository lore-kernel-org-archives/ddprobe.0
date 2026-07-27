Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5051F42A789
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785174034; cv=none; b=ZxilGGly8j8nsBNEaVVC7twm/PUO4nZ4c+QfRYruO3b7iCYInCguIQ8+Kht4oAGF8+suxCGrJZLKX8vj4Z6aTUmCzYJapeAZq9oDXKuMmzA21O6E7gEOvwFpEelYWaXb1mEzESwuakPqBzJhZ7XM5Gq4NQ/N4d4AZX1hMrQ4JOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785174034; c=relaxed/simple;
	bh=Ws3tjUg9m4MF0CWJVBdcoGQN1SsIXHyA1KxbgCJfq7Q=;
	h=To:Subject:From:Message-Id:Date; b=o0rJnqTK9dKNDUnCtLZxT57dFzB56w4m0m9DymByKxhrWMloL0WRsFagKYDP+hvlcAyKILxZJlXUwRxs2aLxOa9LmS4vq/06ckQQ63P4b9Bn0W9xHaNKlBgXN2pDBFRSTWdn7oz34M+GxTrO/T7YG+fjrWAKCOs+5F3lAP8eTeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjUN6rRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjUN6rRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC3BC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785174033;
	bh=Ws3tjUg9m4MF0CWJVBdcoGQN1SsIXHyA1KxbgCJfq7Q=;
	h=To:Subject:From:Date:From;
	b=JjUN6rRIqaM65VTpCkjEp4KvcwiN4bp08bw4d2SLrFZZGu5bh8KfpYEVrRmscCWtf
	 /PmA2HUkA5zJF/TwOIYnow79yPSMhsH+eQkuPDJs0yl0KRTRykl62C/FeZafbU4hrG
	 awdAaIx1hLs8S6fEjDZkqEq8K/2qT/8g4ODnKn+m3N/qWCJObWn0bzqxPX9FPP15Hq
	 TT1ECza9ouR3o6sGgsFmpwOcH8TrKFrbvVvQjqvBYuXkvttULiPa1M3wcA/c7vZU62
	 sQYEdVTRqjd+8dzfCUpE+3VA4n1C3/zTbTK+bMq1WGAXnm7PgzMk9wCimWGMCgdExe
	 auVZs1HzyCX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9485C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517403368.4875.17315572082347517857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6409ab18f64d98c781f9d160872623163a076104e737b8e7a512321b556272b
Date: Mon, 27 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785174033
