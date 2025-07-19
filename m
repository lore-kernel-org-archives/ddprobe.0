Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259C01684B0
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752901194; cv=none; b=c9KyZKxIzLdtCpdISEhXKwMnYX7BvLDNrZ0/WgPbSMPPwatamw8T4s9s9VprYHHUtKfAtRzxZflPgbb4VH1SBTXBtpyS4RkYcn1DAqY1uzKUiDVjkf74Tvqzfkf5bFAehN5B9JDHQeJSluwtVg4kCOChmWAEiBs/lAa/kihNRSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752901194; c=relaxed/simple;
	bh=DchFSkXfjYXuvPxpLBq8XOdb808sVimV7u8tEijRPtI=;
	h=To:Subject:From:Message-Id:Date; b=PTWOV6JWf//JJ3JojjmlPn9mc3BMpSoon3Lq2MbdAZhIWJO6YMdrxBqYHZsjkjEpk6742f04gEuxcvEaD4/mNmY7tUn2Wt0r86iPjD7h5FiGmbPotkAkKKNxSCB2N9uH+at2F0iTNr8RWdAK2Ke+JZJO/L2zrLiHWZ9TTppEGNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZQYTgtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZQYTgtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E35C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752901193;
	bh=DchFSkXfjYXuvPxpLBq8XOdb808sVimV7u8tEijRPtI=;
	h=To:Subject:From:Date:From;
	b=NZQYTgtIJII/N4k04shEJM3D3fs3KwvHnfYvDpSUNemn5cpVcDtrs2jk5D3y/IO66
	 sFj+/UkFpgaMMoM2vYzXx2sgTt7bgt+PPH53u1PIRQw2OxuyVSuepMZpTWaFd3J7/f
	 NdY9FoKn1s+8rMFlnlL+T6T+be+YYsI7MsVAP4yS1FLFKD10jqtTH1hBsCdgExwDoc
	 EEh61wCXdtU8AWO8iXZD9+D09wHD73evkuNgJj8IY/SBildmz8vJFM4lwIaWvX7/St
	 hjbrn92L+tNl0vLMhrCmW4uKjbr5TyyJYA9qEvOFAuxuk3/LJTROr/D1HKZjrkducz
	 /guI+NGMy0oag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF8C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290119359.17061.17994610041531379543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653e6343b5af7d646c6722e58fe02a2e136020374a029bb098de5e925766c862
Date: Sat, 19 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752901193
