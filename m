Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AA940F8D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769010234; cv=none; b=ZGfVEut8wngcLum8JyZiLNk462EMs4GqsopFlmVEvGNOu6v+TsAu4Q8dH0OJXQarCDuzzAWFFc6gm+fGPAbQCbnY50j0JM0DZVeGFfzcA4uDexBqCrvq9GI+/d/yVIRnKafQM6cL2LzIMgw8LhWcsDXTWDrNgnhm2l/p/h+/zh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769010234; c=relaxed/simple;
	bh=Ri6RC1Xi7g2wf8dmH27lbksc9JCMTdWrqzRkB+ZuuQY=;
	h=To:Subject:From:Message-Id:Date; b=N6nDvJifjGm1KxLw8xbP2kvDeXxEjJRlWmtNElpsXCeWLsSr76xYVy8c0ca/uyRfFvHF/qgjZ0zyx2D1DGBjvpZ2akaA2mN73RysJiqyV8hgMGuPIeRIu0029uKlB5l1PepK8uUtaeba5s7rXgMpCL+7CQFjPFF4AFsr0Bm89j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVcmZ75n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVcmZ75n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F884C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769010233;
	bh=Ri6RC1Xi7g2wf8dmH27lbksc9JCMTdWrqzRkB+ZuuQY=;
	h=To:Subject:From:Date:From;
	b=TVcmZ75nlCFupsSui7jOYlR0b/TajiawnhR9yCVt/JX7rFNizkgIRTRde6OJu0PzE
	 DggkpJ25kdBAvjRWVexXxrLgAyfZc31ORlTUDdZKxGRcp9wHlWeOK6qyzRL1EvofPP
	 De4YCtWYIBIJuHoK+BrrvA/diy7NF2Hf9BqgzLOSp2GOU2YRxC7U5OQATAfpgJkJNd
	 vzyc2+aYcA1viC09JlAiE3jEGC9Z7P8yDqssxKIJhLrL7ea6gc3SsReZKf3r/0b8LJ
	 2yozYRDnncxNxYMAalqVQCWjIm1Enqx3pUCApIQG7RoOGSyu1aPTRequsKP/W1xe9j
	 pUW5yla9/y74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A2C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901023358.9104.10214718890426458627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290b6ff18dadbedac638704420f8e15d590505c63be6fb3b8c71c36cf300f892
Date: Wed, 21 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769010233
