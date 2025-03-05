Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CED205511
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741189734; cv=none; b=SDBGwt5EYWep6KnMRjyYmLa2A/v9/XXarFH7iABhzSS0TV+LtGgiPhqSdIvDBtZSezQWZhMKlFOrTG0MDPso/v1h3Hi7cP4CMcIPTnCpOrfq2wqqld6uBH/eYLMQzz2XTXK5JXRUP3i0ofma+AQ3+z4Pjj5+lEO+N2D/XcKnKoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741189734; c=relaxed/simple;
	bh=+HpRhAWs+PsfRyMQ1JpoWrWjGDmfi+NzkbvfHUcyKvM=;
	h=To:Subject:From:Message-Id:Date; b=m4sv5nCifaB8EF90HnO5NVV93UpnoatYHWPMSbhYL6MY0eTqZ8aztipF/c5ylaP3kae1fyllVOS/S9eCxa9/hwWGN7Dss8kFgDVeIsI9zKL9/Y4wPl4r80H0vRzB3ygd94ij+Y1q9q/IL8p8obo7ijSMzv6fCyilBag4PJVT0ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYRShEjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYRShEjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6178C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741189733;
	bh=+HpRhAWs+PsfRyMQ1JpoWrWjGDmfi+NzkbvfHUcyKvM=;
	h=To:Subject:From:Date:From;
	b=YYRShEjkM8mu6zMxrFfSx15mdnvAK5fqYb/IxFyi3Ia+F+eq+lzb3SLlRQcZcDXYT
	 e8QEYXkDlAQDfy7l6IZym4vkDYuB/tGoU86P3/TzsMpmIrHPCpeOsuGEfxb10PgjdT
	 7aKo2WNslbTV9ly6UPVL6EpPzOKWEHJVqAiknj7ISP7bWc9l0IwjzYUr8ejNGsgNr2
	 zElbbAz0xgxFai69xSbk2U4InVd5EJVNd49ZRl0HSmVXNjf2QaufeFUdR1ujs5n85F
	 Ogh97BbXv2QWmu2anibOG0RehxuyhAYNDrQCKN4+5P03Dl6Jr4Mfo3Kw5LAumUogsZ
	 1MDZ2HQAD80Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40C2C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174118973365.31433.15105605465934822232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b130bf2026a0116117a6e60e8b2b6a762d93779657cdf25a7c7577bde0282a9
Date: Wed, 05 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741189733
