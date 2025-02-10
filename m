Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEE7249F9
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739230554; cv=none; b=raQXP2r54SLvR6PNr+5gQ5gekZiSMrfkA8U4duhV/7guh4+nDoK9G8/YNkVrQKkYGQnbS0+tDfuuFysqp1wV0sahLzx7q3eUEvoz2xzkVeFlx+7aC0831hqM3+sG4rRFdGEZau5fewjPOiYDPCH/3YNq9giZ00hFFXZruT6DtGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739230554; c=relaxed/simple;
	bh=Vd3EeHSpT36e8+RxXzjaBTn3/YxN2rUFaptlEX6xbgM=;
	h=To:Subject:From:Message-Id:Date; b=S6uEGCmvOhgx3VPAqbvMK1ZWlgafVS6KLOXnxjJH1KrSEjwJzmwZvmYKnmGO1EhEkc2mIE7cZzu6kIRK5rplvu8Wcx6CDyUhIflq5aVht6VyH8gkV8/DdGP80Gs8/uRqh9Ui0LSjdNTdcRNCfFP0u34cxVrY1lhIoWzfD13MYgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSOtmgUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSOtmgUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A6EFC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739230554;
	bh=Vd3EeHSpT36e8+RxXzjaBTn3/YxN2rUFaptlEX6xbgM=;
	h=To:Subject:From:Date:From;
	b=cSOtmgUgB82I7R8k3XIZW09CqelBiflkRkOSd2LPfLEi5ALlK5YSafTOUOdyJp2sm
	 MMxcFcA6n4a3id11eTwXRbooSLEcA/IAm/yoyRrTuFqer4LRGNf17Vc71MMrx7Ox5K
	 Lm/i0lAG2Co0xudnXX/rTtqCiTg7WLshyDnpFHjhukA01e5roqsdtIHF+x9MLeFion
	 KHaJ85xv+KBrkma1X5godPEu9gwnOH5EbZnbCwPY8Aur7OzgJko4T1DuBkbViO5OqK
	 gyAVcQPglKvsHE5FQp1m+byJ83gI6Cb4uGG97XrHEXElaBSGgYCGkL8WGzYtsXOvEY
	 JfUQ7DcbH6JrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C242AC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923055375.18877.11252203798869026823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29af3dcd03f5c3a0f872bc16cbb62992b7a4d7afbcee79f27ec08420402f2a61
Date: Mon, 10 Feb 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739230553
