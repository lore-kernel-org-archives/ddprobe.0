Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D0C30567B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785604234; cv=none; b=f4P6/pO4FU0oHvbtj6n5bFLToEWr7fk0vTvgRlcmg06MnHiQ4x1dfXME0pXdR/AJj3RkABt8tDazyfx0+i0SnHOGxNCyLNSzsmt4GZxSD317cSfRfnh7WLypi9fj0mnPlFwnLstwEW/zPFMJ6oRvOylgu4OAiqUz1SxH4aeg8m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785604234; c=relaxed/simple;
	bh=oLyZ+345YLmq5pKAr9g1kvfC2/qC6IROJknJfnPrv4w=;
	h=To:Subject:From:Message-Id:Date; b=L1mQt788b1URy4HnU+FyQDnHrGcp+8CZU9V8aGAJx5zCSpmbNed44Vi7UV1VJJ4ZnW/5FNWvoK6LbDHBBzh3R2c5EdwQXFG/mkFtrebAmv1m2Z0wRkbonWdG9hg4zwLoN3eYkgCXUvSwbuffee6uhr10EJkvnjgvqoaBQDR8Rvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br0cCbMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br0cCbMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C56C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785604233;
	bh=oLyZ+345YLmq5pKAr9g1kvfC2/qC6IROJknJfnPrv4w=;
	h=To:Subject:From:Date:From;
	b=br0cCbMV8rgXOHcVcPIaQhwHTjCaG8etcb/agSt0b4yzzd4OWTAv02tsWcBqc8SJe
	 v1B853H3CqZyrWIw3JcW6erwEGmkwT8Gor/7ag5E22+CFu0Ff6tLm33CjpFP6LV+xh
	 oGrkKlFjmBEh0WQDhMOZU5x+O4zOVMG2BAsOEVYoiCCQ5oUSBA1lCB0j9WG/2kUAvC
	 7lmExcxR9ALaz3SkiMNKJNnwW09K0T5ELTY5trMg2A4COchUcz+edqZh5iB7WY5o4d
	 Wvx2sbqQDhMubaCLkoFvPwmi3KXxEmdRxLlcFqoc/x9iheaVxZcjbaXcamOJlndeDg
	 piHgv3EyhM2jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA153C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560423373.12079.17141474280643861634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e6ae8142acbe77c9c54949febf4ccf5bcd341c0e0ecf3a25926c216b723915
Date: Sat, 01 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785604233
