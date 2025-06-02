Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471A51B0424
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748867995; cv=none; b=GtvnORm9nX1y/xI7XLEadDTfwM4vYp89n8fB6NUzTW2wR/K9NXvJzptIIBsdn0z21HJWh2am89xxslQUrYMq+3WrXVnfldk7PSGw2WXY9RaMg9MihAgkwwbx4p/Wl+mFi4H70AeyFI1QbvllGIYWXu8Zvhs80b2teo61wY9zFNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748867995; c=relaxed/simple;
	bh=x7YrzsHrlvierE6Kfiqt+Ss2EydtQmCHorFolEwsqsc=;
	h=To:Subject:From:Message-Id:Date; b=fDkPZayCmBxiE5wTeJVizj6vKfSnLW1ctuu57q9LpSMc7muDahBNbDAx++4ImTAgbp/6PZIDQ53IW1KbAJqVDqiag3mkIhNVxr8hPmb7ihqqUU2PGegwStCi70kDRMUmFdXCBuqDReBiaDD8gYuCdrPgP3NH/lcnHeQgMKapRLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKqTeu0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKqTeu0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7485C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748867993;
	bh=x7YrzsHrlvierE6Kfiqt+Ss2EydtQmCHorFolEwsqsc=;
	h=To:Subject:From:Date:From;
	b=DKqTeu0zhhXRrDmjDp/7UoW0Nw1wYElnWndb2legkGpf0EXZDMmBT1f4yI9DWdu55
	 h4Mxmm8FYQ5cWj5d4FmXHLw+VhT6jZZKTEOnrGdr2GlNXD6KLnXVYYiWDGiaHMd2m2
	 N8vnIbWA3SsZgZfzMbfXBBuN3whZ4LGvfZ2xP7WggYt+DrSy6udeLE9ST5h2PLgFdq
	 bP2Dv777oFxcRTI43YCmOG7wSDW4kJcvLS8QMRXZNZ5FRh7Lfpn2/tI6rsl5X9awY+
	 meViXHSGrTSLmMhB09b7JIrEGMTfYlWdG/rY6e3mH66NsrgN3qwOCpS/MSL1dthzvx
	 hVN7UF76PTRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2AC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886799359.32736.6955429338204510956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13252ac34909e63dbba09c7d8055f6986b22b20099246f1198326fd717b1f10c
Date: Mon, 02 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748867993
