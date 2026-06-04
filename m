Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190DC9475
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780531474; cv=none; b=sXpRjk4G7xH6TJ1lJJDfms7ZTtuRoX/+laJl6zbXXtA21oY+awe8d0WMA1TzWk9Hw15oM6btvNH2/rbrYPT7+8JW1A1O8OpVGJ5D3GmzgmZB3auUU+V/eeYzpsIuCqgz/ImneKbOVJWQhBWvLprbk/3fTSY6wEdo+uzvIJfexRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780531474; c=relaxed/simple;
	bh=MzQOU68h+sLC0n0mf7XSm2M5U6tZsPxv9sf8zG0PCD8=;
	h=To:Subject:From:Message-Id:Date; b=KzGpMLVKDd6yVoMm38ifUj1IKmZYmo5NW1Qf+lwS6t68cXLkpJ5cLAkySAeTzsKhpoAn9N+/rxdAC0HlPg8v5SrlmLc4xKXCcDzskBvLAn5g4TzzcsOmSYKJ+2UGFy7t3Nt8b+YGA47EA10wS9I0Bp+35j+i0QAA4SJc2sVUp7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyOSIVFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyOSIVFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2917C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780531473;
	bh=MzQOU68h+sLC0n0mf7XSm2M5U6tZsPxv9sf8zG0PCD8=;
	h=To:Subject:From:Date:From;
	b=jyOSIVFd0VnFsqyOhPaBmeoWHIgCInxRmLPxCt0pxqqENe8/OsKrqXj0wK/iP/Akc
	 g/nu465x1nZ3tSpN6XH4p/9yRuRWOUa9ZARezKBXG7zy+voPmYPTusHrSEgvfLIxXY
	 CMjTiRvjl8+Vz7ljqcdevGMmQLTLYGiTcmI1B/FxHKY63wfdAfQMsr1MxAjog5Y0Nf
	 4WeyAI8Kf449jX+rW13OsZFTlYhccjRTJ+c1MsxBhx2bt62qhiohtPD5odHds/Lld4
	 CBqJ5Yi1ppgfu84j1ucpSYnJCXjlDt9lxtctBRjTEHTHgwtWSQv54XabpjgojOuhTl
	 S8b6/TTSM0nzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5FCD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053147368.26458.98309878020079080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfde512acb805254017949c2fab871eeb5bf588b4794af9af6e2632b17af8967
Date: Thu, 04 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780531473
