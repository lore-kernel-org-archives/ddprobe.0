Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBC7188580
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750310395; cv=none; b=HWR7sTTwxIQzXaR37+u1LDVvS3VDLcMX9r2VUdvaP7KxwN0JGZR71UJy6UaEGTdRqipGIBKc+92tbLM9ESEINGurH1opG+P2j6kCCsXyYGYItGbRp9WSY2pMDSElWG8VJRyNVlfeU7zjOYqS+B2NI0HMSU1fXdDvKxjAJryuhbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750310395; c=relaxed/simple;
	bh=4xNqTlA6PLRykhbzXlfVWED200Bm/NyPL6/cKpIQBa4=;
	h=To:Subject:From:Message-Id:Date; b=QVEgiMhquk06C27CQ65AanAhMjAFmbDECA05+Vo+VZJGs/etoNzVaHjEW17QjSBqM13CzIJiBMbxCQstPIXLYFmmoK3zXPL++O1oz1d2NCfa5M+hyp2SpkgCkYE8jV0rHKWK43ap8iY1ipkWjCZ4qwn3QDE5ax8EG26JpUytPGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTQ0Ujv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTQ0Ujv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5591C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750310393;
	bh=4xNqTlA6PLRykhbzXlfVWED200Bm/NyPL6/cKpIQBa4=;
	h=To:Subject:From:Date:From;
	b=GTQ0Ujv2XNEdWV6PbS09I4Cemb2+QUl7qwqvK3ogfUwfbWEUmsAyO0+6vUiok5OXm
	 ffuxPV5lzPaMzf2epBDzouNddw2PCd6tLSXfjOLizySxMjkIKYglCKW2yNAh6BYrGh
	 /oKKAuck1pi29Y2g540F2LJiB06O3n369gTjISANvelKnPRSvqquLQeQA4z4Gtxv52
	 bnmhvmiBTfBN8pIfc4Ud1gSowkiXsL9FshG/5jZDfrY6KMIvup+tYugp1BUGGYrTiF
	 U2bLdzcctT0StSKc9zqrQ7nV+71BmAZ3TR/7HNANWImrYaoQ2ln/xNy+x5vdI6HmM0
	 mDWod08aAvLeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA6C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031039357.6045.2537636877998920454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5914ea5a37afddf87af5b6be525c7ac4ac1326531b45f0470b3214cd39814a
Date: Thu, 19 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750310393
