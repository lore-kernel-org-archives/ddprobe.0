Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122CA34D3A4
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762114194; cv=none; b=qbTcuEV6oX1JPGjuRZGiroFfTVmCP57YteUSAqM/eDOsWQsZcv2DAnZeSESV7ttspnZR1Kb9i5GIFin8vQH5nGOWzNlz83Yy6nRN2e9NfWWe6HYqS9q2GCbux3Lj5S0feUMPaUufoWnnNGeeeFo+Qep8g9Qr8fttvYEEGhctM44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762114194; c=relaxed/simple;
	bh=CkZWQvpz5iaojVcHW3e0Q62FBnuT5EhkXzHT4ZNaaAY=;
	h=To:Subject:From:Message-Id:Date; b=azN2CrrWv4HsgSL5TTm3QseR95arqEIxmsDlIg7NB9hztkaKG3OiXH8RF8b/D7qrTsr2T+GqI8q1FfZWCBKWGstm2+SbPSE640aBIM2rlBKjFOeb8+3O6P/DFsfuCD6qpnsJ7QvGP621MXcRxl/zKkix1YxEso15RIiOFif7+aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAbMh/JP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAbMh/JP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762114193;
	bh=CkZWQvpz5iaojVcHW3e0Q62FBnuT5EhkXzHT4ZNaaAY=;
	h=To:Subject:From:Date:From;
	b=tAbMh/JPd5/fnfW8aqxagIegP8a9zLOS4s2NaBCTtwbr7Fl/5ftVfr1ilmIUbyIa7
	 RXk4fQQf2Z1axVEwow5NTC9CmgjCMfmGB++1+q75BArq7NZwUBsFans2e/tRDGK7lm
	 j8lhrjTBi5+Qlxf0uGS9ABbAANOriozg6zoIzeTUKXtT8SYYNHI22iwre6muIzFxfZ
	 R3auhDUwZFcm+93cpSh6caYNbVpjByv6182l0lBdcGkmH0iZfiwbufd+W9kxA0P9WM
	 adsir+gcSiVneSJ0ulH8bWYmVe+ReihEBbHtzswM5JPtcKeRIuHUwqaFBcooQSGu0v
	 b04vWPMXHmtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D56CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211419358.14321.13159799709219953718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8fb61a26f04d4b659b7fe21494c56242a6f6057780700efde55e8d5ecc7bd2
Date: Sun, 02 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762114193
