Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F23C1B424F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772425494; cv=none; b=P3oQZeS0g1AZhc5lTlrR8QU/19czY6Sxb/TcsTiqxLcAAqGtVCW3mvNJ0K6Y+rEmk5h4tIMa5UCdXJfaFq6ZPozLt3jAUluH707OalVoX+Km1Uq8m4pb4CvQ3jTx9jlMWWnJcw09VkpZA2CfT2/Gra4peVVAzKWns5VjHaryRj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772425494; c=relaxed/simple;
	bh=pxRYwRzWGi/64d7bepiigCJQRaesmddLREaZ3Kq7qu4=;
	h=To:Subject:From:Message-Id:Date; b=EQ/oYyT5wMb1jAXp2XHONfT6+6ZVBo29qr2ejES+pZIgOmombEuFC1j6mwSzYfMBHORpqwK540pDfzG052OfWN0YJJuVHU+UAGTeE+qt78/kQjE5eD/xZK97JxK3tLo+kKCCdsJhfgUTtW/AfOhfKhx13+dkXWZkRxmwsx+i9SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL3Jy7Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL3Jy7Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB36C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772425493;
	bh=pxRYwRzWGi/64d7bepiigCJQRaesmddLREaZ3Kq7qu4=;
	h=To:Subject:From:Date:From;
	b=eL3Jy7Vad/UJIPIIVGumJK/LEnXB/UYkh1wrqpNEjacsyQG17zAS2NjGxXmRSYA59
	 aN0RZeo2JO3i/giTkCDMU8LwskwoAVgy4hTX8viWCYh6dgC8urMWcfKYBig6oSyEc7
	 TGwuW7WqPV2VGBKulSrYP6zMEqRq5WxBPdQYA1PfmrU5ql0alHLKCEiHzCw8OpB8hL
	 o86IuBZziZGufM2wDdvoRo+nHUsInDhIoHnKB2jPmzEjVYPXW49+N+WFQtYyR9PsDG
	 UAW0ItmQ0GAJVvmtVkPnwI9r16+EpxRPAf1jaxKcjhTGIKlTU458wqLgZoBgCR3TkH
	 Chp5OTVKcZy6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A13D58E4B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242549359.19497.9372368042253790900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcc59488810983c35c3ce2b5344d321d2259d633b95d03c7f67c82787ae7f32
Date: Mon, 02 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772425493
