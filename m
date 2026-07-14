Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D3C35838E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783992514; cv=none; b=EtoZnLCIwCr4NF5utrxmiX1r3cUb8mPRYnSriDXKj478MpKlhTa85Vv0Fr9QEdxwbu2wfOkJBI6qkAFjeEgFLQ4UKh17dXULI62LAzgE3IcEfriNRwCo/XaW5R+kMreKOe1SdEvlI5lZAQNEG0pWzElVbPxAb8HVaG7stbHCCZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783992514; c=relaxed/simple;
	bh=qvUXR0mTMY0gpxdWF4egyQF93UcvISd5gwNjtRTCd5I=;
	h=To:Subject:From:Message-Id:Date; b=HJTmjNOprg/PRW7GBBOc8dCcDerOdhSZy3b10K7xKdHq1tSaS07Ojag9CY1nw8N7f+SRyGplw6mdyf9tomo/BG4uGsA7tyoEhXrEgWDgswTpjYMqgjxIPd+NHgAp0TlcCLUVRo/kfi3VH28zXSMnismkRlKd4qKyJfmw9G8pTKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku5DEWdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku5DEWdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB859C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783992513;
	bh=qvUXR0mTMY0gpxdWF4egyQF93UcvISd5gwNjtRTCd5I=;
	h=To:Subject:From:Date:From;
	b=Ku5DEWdgScb8GAcOckyO+ayNzgbWNqpWsyBIYRRPbm4HEJMc8cKq4J11c+EajLJa4
	 skM+2K5AgGHsUox8gEP1lRrhQwxj0MkhaW9zMkHYsSZ6Zk8Oa/I9x+UvIntzUbf/89
	 /egusSw98Cd8Fyd6kbuADGsRtgA3y6z3Vk08vnm9bcUS/05NDy2wuS4urI81d3NG1T
	 besaqr7ogcxWhMI+kaGigjKuPtxiN4bg4UHJlCjc2p0HAT+xdzcbpym2VEIJ+Z8RRR
	 eiyLv9Ku12OAaK6Cfiozwm7grxgjzCBu9lJZKegF/GBTJPaJIY7xsC6cIF+7RP1FlM
	 q/m5GTbYoCuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9142C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399251368.16181.6687897820242050958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8db30e27b4466136c576b80786a54740a46cd10e89deecef4b8f6a50b334fcb
Date: Tue, 14 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783992513
