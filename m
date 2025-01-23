Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5096635280
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737649554; cv=none; b=eFdnuXnmQK2XpfiA6w38Z6rkc6vL7PWtNUy50iaRVFdzTxnPnZOxW63OtfaJq2HzX/paMMbDfy/oZS/W7HjKOsO/Wem0G0pP2Nl76cwJQ3xLiouHm39K8+jwM+kYO0LaZt7EC0L/fY8RGtmDpG7hZshSpc+PAOG2z9So4JPeu0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737649554; c=relaxed/simple;
	bh=VoR3ZRmC9Yg2hrT3F8yEvbMWPjxubxiEgnnCBd3ykDI=;
	h=To:Subject:From:Message-Id:Date; b=PVeyamJYIlRM0Oy2l96mcvxwTMiMgzN8VPeZ2EbddoaoPOY5qTxRZQ4xREzYl9Pl9EA2WmJq7Fye9vYULGTACS7LRCSP5/hS6u21Y5ZTtelD1OvSlWwBTwkf7Eci2jO+SP9IoVMV8wl7nzlVOwlT2mu90M4wxnfLKhkFpSsos0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRLgiuPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRLgiuPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B715AC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737649553;
	bh=VoR3ZRmC9Yg2hrT3F8yEvbMWPjxubxiEgnnCBd3ykDI=;
	h=To:Subject:From:Date:From;
	b=jRLgiuPI08qqqEIrtV7QaRqO1HzzRC/ivBIT2Mxtt64ug6pO3Jokc0kOiaTRIRNJw
	 cL8zlTHGjTxpUHxC+DTTBVhghDCluf2gbWY6JGRkLLpcwemF1NCPz0a2OBHtaICdsL
	 jWzYPAzIIgTWc468hvD2E5PZRLukt1unqsCG/LyugXeP6VjiezHg/NTOF1lITIeHUD
	 x742SJd0Ml7HjB7ZL/tdjmwSAGcWT8DhdMlW9P7Jt37QGS/BgP7kihIzXp5ZAbKzgN
	 ICTOdlQDrSLjGLElx9kiOnALMDPEpdnDkjOg6ogOnUvhtLauMmxUezzdzkzntL1hpI
	 VH5migobTixyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A963EC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764955365.21107.13600579919626938327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56581e41f458c45fa1a8c452edfe0b09914f168fd170d741395aa52632944555
Date: Thu, 23 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737649553
