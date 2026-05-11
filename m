Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D2E4ADDAB
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778533234; cv=none; b=dCTOV7u/2uT3p8fJuqZ7DAVjyNtDn4rd/8JBGQHYKWkA4GSJfwfWKiT/a5sSMqpFq2SZ10aTfJueiKUY4XO2a6ZKolR1H0onFH8EcgIQ1+xvCDxMBS2D00sAH1JFyEfBc1L8CFvBv4zkYltLudZrcY9DV/Rbtke6LgH1sOVHkIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778533234; c=relaxed/simple;
	bh=cEuWPrxkxRdNiPuwz/VrJxUsfRuBnKCokPUZqy1h9kk=;
	h=To:Subject:From:Message-Id:Date; b=SrPxDVHSJMKz/qUK8DybV9iElQ//2CY1wqBG1q9hPlMpHTvIpPjOzXsq8AGFYFTOPzyNK2pvpr7nNx2fRfsRxzmp+QFgA/uh0jAVLDc4d/TDnNFYrIgL2FtgY7eoUTKaKTnm6tawy9NhdUUeIhBrr8k4FsiLi2d3KiXV2j7SIEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM8DixC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM8DixC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE72C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778533233;
	bh=cEuWPrxkxRdNiPuwz/VrJxUsfRuBnKCokPUZqy1h9kk=;
	h=To:Subject:From:Date:From;
	b=WM8DixC7lRb/2HPjD4xqfqNiFS4MI3QLS3KXyGbJfokW24DC67l7cVkrsNfz4X+f0
	 +VdCN64jJDN01km/VaBh7iqINs6X8IqG4tJDBQOxDJ43gWsqFF+Ry+l67A5gsFFpn1
	 Bx6c8dyBpvqz1eeA/wMem3nDoCt8H2znlXYabdxVnRJflz5TuKGdIMJir8QIHwjXwD
	 H50BLStXGi/8x4XxB3slq38kv5ynPqLq9xW8OlBVhZHMPudWSK/ynG9le/Av1yFsgI
	 VLSPV3+aa0u1d6NDwvAkBcKBnabI7ybkEBPvBOZlt7Y/Ia+eQ+Dqu0p9D/kghHkkAU
	 Rxl0iU8Vc5G5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE287CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853323369.26347.3709151454088914701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0d8865f656c0faf162e381a726e309d5f9945ba2d568602b2de705cad49d92
Date: Mon, 11 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778533233
