Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7BC39937E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147294; cv=none; b=TdPvSGQHAxuEfZixlrDMpX7wa/tM/Yv5DpGie/klPTqfJFSYIfBvSoCndXEz8M8tmJulEn3t/fznhcf27Iv7d+cx73+Yl8VU8t9nSQkPCetPMqBV0X+QTmAT3qrdH5MhViESX+s8RlT+lel9nAi8odRDlXlnQF8a2WnnnCTVQIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147294; c=relaxed/simple;
	bh=XxpDFp0XVuKevjlbpylMVKZaov59C7cY3kpwXCiYTcs=;
	h=To:Subject:From:Message-Id:Date; b=P1wZX8B5RII1bM4mcOsvHon9buP0Ab3gFC80r7ZBgml8tzN5hxeqiDV2CgogBF8fegF0te6c/Bi8pxun928rCKfJ0LzSkHWMiAGbPGQH9r18k10lOH//F/pScG8uCydtAgQvI4R6daAaN7KiNhjs3Tc2kXz86nqQ+Da79SIOvtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elblXlTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elblXlTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAC3C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773147293;
	bh=XxpDFp0XVuKevjlbpylMVKZaov59C7cY3kpwXCiYTcs=;
	h=To:Subject:From:Date:From;
	b=elblXlTTsUK1Mf1vkt5M0tJldcj7QoIV21qTA22sCZRng0SvfKzMJfXJ8F/xX6jd9
	 nUFo03MeFllLXB2OMp6sB//iPRTc80fhSiJA28d0ifuITyXXTeHYlckLT6tAmzxhVA
	 8rPNmriFXG+2+F8XgOvWUlEfM427z2pqyM/1lwfUeOg9guO8Qhjb15uYW9nP0SGcvw
	 EBuZb0wqqFx50epXUb1FFcvVE8uh3j7HDJwaalYwuDL1VwkrLnQwiycqhGVtWGq+TC
	 ++Bio4w7IETRiseDcJst7Vxaj+zl5cAl+U8ZgbRLsr89VRgV8dU/C7YBf8P6yLYNvW
	 aKrNvENL1b1WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2AFD2D70
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314729358.22280.18197074821204694624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2657e25f7924608897f3466e1fa33df5397b1cb4bb8b8a2cead7c4d549ddbf8d
Date: Tue, 10 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773147293
