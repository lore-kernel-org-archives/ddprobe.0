Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3451338D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767312234; cv=none; b=qF3dNchL3gVdecEE2lnbKDRBUaUqXHEVWpM97UHoVkRKn/nu+2SFHu47GerhZ5ghTfNahKLOpFOAoS6yhLQ35yx2FbFPSg4Hni6meGnIafu8po6KVgtqPuTdOJjVF19pTfRBf46bLgbq0gc0cinaRGjMz6rBu/XmusnLS2g5GT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767312234; c=relaxed/simple;
	bh=fhNNmy623STOe/nadRFs6edFapBcQTUDmYaCy3uaB2k=;
	h=To:Subject:From:Message-Id:Date; b=BnfOI86Hx/9uT0BfHHTvqDmt+6BSdNY6CYNeUnKeZZwyWRGPHH/oltwNqij8tPl3sbmD5M7NR3CtlYQyRL3MVs2gq9cu0LSB/ptJ15hbnDIJmzO8xX/BotbwHP+qqybuSPNrH5p9a9+FnHvYJ9MTldWMn9nVqrEwiiR9eKekwyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg5Nh21M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg5Nh21M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59E1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767312233;
	bh=fhNNmy623STOe/nadRFs6edFapBcQTUDmYaCy3uaB2k=;
	h=To:Subject:From:Date:From;
	b=fg5Nh21Melm5f2H92o6gSyDmaehZeflX7//TgtjwpLM4/103prw54keket/U2NBbT
	 yT2Xoy+2VduBzrlnsRYEVVJIq3FcjtvrggbVa3WTae798Ky5HFfi51vE3qbJGHeQxc
	 bCnxehibrrDGtIbYinHgNZZ5/QsP468isOpOPOXzKlk5H8dgEucXolb0EWrMsAC6Sx
	 wWhspXyglPt26+zzvTDnEJ6GlHvSm0MKsZaWo9nco0Cgms0sF1X4ZBlRFmUZA1R2lu
	 vLtcn5Etu+QQ5TeXc0uQ/R/JASX95tzAItYJek5B1kJNAleKaGGZQQi8RjS7QOnLnU
	 8y6OZuq9fvWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B8EEEC1C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731223357.13636.5618512832447850880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f50f16901978faff17c28cee2b17e9591d7f096af3517df2e0ac6a323f6a7f9
Date: Fri, 02 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767312233
