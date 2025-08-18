Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2C5322A09
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532194; cv=none; b=UkIdAl8ZAf9gW6GNeWp/c1Xyeq7JqU+55trqvOG7WrbqB8ngfKiCIp2TgYj5JwL8MZZAaGyby3Bza68K7uLp7G3Zo0RdagZe1wB0Fe7U8j2YfBk+7UY5RtDBZ2ev0tL6symhykilmut/inhUw00cjp/YHWDzpxPiswbxpec3X4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532194; c=relaxed/simple;
	bh=Hzy3iWuOVxZWHWJn4m0+wqYh13iJah63O3e8/B9pe70=;
	h=To:Subject:From:Message-Id:Date; b=Dqq0iSm4DzQiXFF57NPVLNA8uBKUyLl5n69A9qSzLW7PMAl6pnn0Vu4Rff3e63JxNNDBo/2hsJljgOF9hoC0fyz18LbhDqHK9wUdRzfiYciyN2brkuEZXMCpgRQ6RHznyKCApk7/EWQjE8/gmYNx4ck/8uwWq94pHo5GkGbx7iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+hedvqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+hedvqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7B9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755532193;
	bh=Hzy3iWuOVxZWHWJn4m0+wqYh13iJah63O3e8/B9pe70=;
	h=To:Subject:From:Date:From;
	b=j+hedvqaDeXFgVuiO3gdER1MI3IKcZeAlsWO1t9UL5G2ePbqLZGG5Kml07wmSBfya
	 urfoyJJPrsfRQDYd3pnF6cowcIvTOG4ltgbMEVcoH+AP5ZInSZ4KwFe84TjZVhCFqQ
	 1vygpbDa9nT+u1mC7eO2DxcjIx8b8Ape3gGZpO+iB9KAQzOzbYtjoXv/s5Eod9u8Aq
	 gFb30yBBQhb2yhDLEI3Qeef+LPthvxMLLtI3Alvb6YLvJIRhUsT7VppyNk4AMSjr48
	 wKvnl8Z+oZN0uvJuvT0fpEYhV6baLq8DE3XjxjDxfBfvIQgzjAVTicqfzHBlb+C7WZ
	 y6E6DMnpi92lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEACA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553219357.28494.14765243401734766695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a088ba8c3d2de1a295bf775550faa4fb7d954b1ea1aaaccb53814f4eccfa805
Date: Mon, 18 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755532193
