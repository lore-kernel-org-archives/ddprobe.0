Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462FF17D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764374574; cv=none; b=bQIOH6FvMFL0g5BppNaDnvKCzqf2TTwPzNdYDzXbIjfXnNtJ9elBg+wP00zoc88sKRtPAUI4fKLtJWc9+blI89JCCL/w0JH7mbIXjUehmKtSd46LiPgi1irjIxGZuwiHZx/cu3VyfgAMdJT5iIaj8dNFfZp/m+E9A/8tNSPftkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764374574; c=relaxed/simple;
	bh=0rTWoixmN2/iAxkmX2mArydrS75HQhOLT/HgRR6wctk=;
	h=To:Subject:From:Message-Id:Date; b=AHW3fYRZvED4hHL6tW5aaYgm2Z3tefhJ/KAvAfbJ9RO+KcSDpl6b8SvYvFu3zla2CfgXfsJ2vZumX0HYscYHa3+RLE6v1fWa2cpsjFPcSL3zLEu3S24y5YgzUJ4uW638K9J4wZcY/7oG6baiTxRPpR8Y434By89grKrWvz+97XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcCHccQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcCHccQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DCDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764374573;
	bh=0rTWoixmN2/iAxkmX2mArydrS75HQhOLT/HgRR6wctk=;
	h=To:Subject:From:Date:From;
	b=rcCHccQvBoJnelUmTEwxvy5k3SGcl13eyv6ZjVtgVBLiYKQWuP80/LFzootq9uVay
	 icVgyUzgY4K23dbehP+sNepCzCMheV7oX9Qe3kMgGGM7t48KMZI9a/w5CE70i/42FE
	 /9KpauKz3JA5/1jZ8cd8bR5U0Y/MtNIKbm6kLAAyir1EY54kV1eRtCWRdMwHUEBnI9
	 af16ckMsnz/MSX6d9PlW2xEOLKqE4FVuyeaN6wZTLjLuo9KPczcWursOwbQpBxMtzO
	 SsP8qXK/H27SJqQycWE4dw8X7vFf+TXMQHkT27G1X9iraVOHBZVeYC2pfcWyQdk/2i
	 ltFiCCW6jkGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64A6D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437457360.5509.16863866338152514646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25efcbcd4d3a6c77db68e3cef04cb771bdc0b0f9556c93ec33731b9e47dd1da
Date: Sat, 29 Nov 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764374573
