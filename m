Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C94618C322
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754941794; cv=none; b=LobJKpHwQTdvHS6y08KiCk+XFSXFvJgzi7nzTM83L9g686Tbdx/9OYPjH93xReB1nYeMGSbP79KBvKK21JqetOa99FeGbe1o8QvN1qGcqvwVO8iI0kjwW/i7CbqMKRY0VczvdC/0sd9aXGmHea+pH35t8cjL7gJ4ntVzLqqg24c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754941794; c=relaxed/simple;
	bh=cJenzX1uaRmj0GHC3y6dITRCqim3nxfRA2J/oSpk808=;
	h=To:Subject:From:Message-Id:Date; b=nTskPO2UgIMB0f6rfKmICt46rB5VZqg31eBD9tRr3REBT56mqymFjBjer0iTGvfvYke4npXoCOA/i8Tihr0Ek5lBpFOwQRVTPeWdIef9J7q0MZihWHg3D2rZhauZ4IS+RS6aZvguqKliA2JSA4iXs9Zatgf2Rf2q2IYQ4QDdM4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3gFSmtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3gFSmtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8EFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754941793;
	bh=cJenzX1uaRmj0GHC3y6dITRCqim3nxfRA2J/oSpk808=;
	h=To:Subject:From:Date:From;
	b=h3gFSmtprZuZPOlwb+C4Fyg/MBpvCwJ+r5fik2XZWHFV2lXXsLVlfsHlPmF8BKoaq
	 6uPo4oIa09t1jv2xoqZu4/NABbzqs++8xs5855tloLc/DaczPvuJCAQ+KAU1Y1oyGb
	 vqMFzikfkoOC1rEyHfp/q93YkUqf5ba9rbZFZ+gD3/SmqYjjNw4FLnn4RhQ382qmjY
	 RxtHNR0A1EnzGzorp/+u3gOLEr3AyWPrclSU40SnYJYKkFBA/bAztp+AcN890kN5og
	 ApMhZUewZjiE+1zidhxhAmaAQlYaDq1+1+B/2wK/wsjvYxBEuwAd+iSARO4PuUii5X
	 ZT7+Dltl6YNtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D24CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494179357.12117.8056300001899495071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b650aa77e32f023b9e74b5c2fbbb7507063d17a3f68146cc19a560f1c2ccd80
Date: Mon, 11 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754941793
