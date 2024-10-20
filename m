Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7531DFD1
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729460154; cv=none; b=DPKWI6h/BbBMlOQ3xMKwoRiNiLGx8jio+hxYXmxBgmE8w1cvsCTB9NCJ5ssvC1yFZn2RedtBTTObj8A81FtpKqcDkXb6P9130QjIHlq0zHl55L++OImHnY30Em4GSjnv9dpFpLfXFkNRQSCHrgTeF1oEn1xVP1Y10RHUVCCnDAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729460154; c=relaxed/simple;
	bh=Q1mKi/AJi7+KC6JGtyGHIjKz/TyDWv8K5tV3CJsolVM=;
	h=To:Subject:From:Message-Id:Date; b=uhBzkXTAz0/Ikg2DTuE8uZuxK8IkIWSmcJQMb0QFfGN6MHNhBIZgrWEbbMtejMTYB7N/GdiDix3vdXQcB8nRkfPTCDojAIxihdns0QO3DlXUB1o0RuKNc6EnqPbA27HfBFXetCcVjx1Ed6bBVKCjaxKaWDVnqHA+5Vy2QNnn6Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7f9Yjn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7f9Yjn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F9C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729460153;
	bh=Q1mKi/AJi7+KC6JGtyGHIjKz/TyDWv8K5tV3CJsolVM=;
	h=To:Subject:From:Date:From;
	b=p7f9Yjn9Jjd4C51jSQ1pstXWocCIHjvUVs9x8+i2soASlbPxVGr3+mI1k+YV07BBB
	 SegwHmT+lLb1Ixj7YlifNVRPio/r4QtHAKn1KgR0yB4cO5+CK8+qX/jjJiKCBLCnjS
	 ZT3Rm4o5IVgi3nO5H93OlGgH9lpET58kqlYApKwD377aHhr/6dxVmEor1e9wlBIFrX
	 NqWDB3g/EaVx6fRF/7lzMS83q/sr2+NkaCf3gLVnbcdKoJqRMgYkx71hiaOTQqjnV6
	 RWZZCbmW5SyKDQdROUj9rAhaKvvALTwvqd7588Lx6Y5qOMC7CAJVRKlUB0+eXsCceb
	 8QqZdUAaHNaJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93111D3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172946015359.22869.17958651990256633609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc09cf5f337ff81a00780db1be4a71c031ddc9fe034596f5644296d236c2a122
Date: Sun, 20 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729460153
