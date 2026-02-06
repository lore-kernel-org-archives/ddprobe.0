Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF9E3EBF05
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770358434; cv=none; b=ALzuwbX+CqB8ROhPZUhERBIJkcY2OV2PB356TorD2ZiU/jlUfGeUGHN83BCreaCFeIBcBeen/dXjXFBgXa7M9zdh50GVvgSOOdfdAYoHoJj30ft0SYAZX6cc5kSbtskhrjEKTksuiPLbRkDYIiZ5na4SMkKBxmx8vkf4WoTxh3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770358434; c=relaxed/simple;
	bh=Y1KnQaAjsf+q9Mi/dgf43NCFXwIbr9kAh/Rw2jrmyDQ=;
	h=To:Subject:From:Message-Id:Date; b=YE2zATi3z5eBfQ+FDcZ3Ib0L90l7HlgBHpdNj5BYZ07LDvxP473AB8cE3GlJtoI8vmX+p00QuwWlx8MhFzZEC6xVjqhhJG0thuUWXP3IXhiJM+2qYMmljR+PrELYgip0g8qvSe6gcsPybc+kUxfGOrPZn72lonBG3xQyoys8jx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeV0534E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeV0534E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ADAC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770358433;
	bh=Y1KnQaAjsf+q9Mi/dgf43NCFXwIbr9kAh/Rw2jrmyDQ=;
	h=To:Subject:From:Date:From;
	b=YeV0534EyvrtezCrtNj2VzS+RTBruAEOqvIjXDAqoaNHVdPRZF1R++6ZOdEYxdcLf
	 Hf6X0EYyqOGlQrDTNJ4uKFJD7tPGJRQ14fbHtb4+mCr9qc81pg0pArznyhSXJ1lI9Z
	 1TwjeGkf26VeghOKCbkqqWA5OOCCcfW1gzEgdaujMO3N6rfdLrvYgfxMGNe5w80sKT
	 niCrKzqXdiCuU8xdNuhThRM0PjUB3B1WjV8u8Ox8CmH5OVJNeWMQR87SHLxFO1CpNs
	 Gqo086MtdCrZYjNPVP6DJcO2epm6TrAt69F4E/lH/BQPOXzhiL6vYQVSfQEB9DGqED
	 942z+DQkfrZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C08EB28D0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035843361.16141.18009361308707551197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefa900766152819e02a1ce36962b0670baae56fd3231d3d54e402838dc433f5
Date: Fri, 06 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770358433
