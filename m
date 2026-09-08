Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6251C48F013
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788905434; cv=none; b=EkQxArf9IwmBoN8SKJjBlPQDNrm0Z42Ka+JdT8EKmicrh/e1XL9lOMvwe31MA/AZ349xniQ8DR9W/yGik6JIRwhLgj+/VMY7qFvSWwI7655ZbQjhno6qlFHNMmVOsQSLOgpP5KkEtdoX3Dn2OMEpZaiGHWhhktAUl2tsOIIPCmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788905434; c=relaxed/simple;
	bh=tsmJOydcwn4Jua9IuVTsXdhapvsbIKwfYx+LEDtTf5Q=;
	h=To:Subject:From:Message-Id:Date; b=lTN6W8MWKWjZHx4gxH48BVHJhnWAIKYajMJh0ni+I/sCnV3hJ6JEpBYDNGTv78Wifo95dtaMNFTYwBgTZY9+oCSKaYKC/RRCbofg+V3OW9K+UHAVCznGA4HEiwKlJs/EV7zuNu3hk0rauEc6+yfGzt/WSSvNEp7YSJ7CPXw+Pts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2aQ019M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2aQ019M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC799C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788905433;
	bh=tsmJOydcwn4Jua9IuVTsXdhapvsbIKwfYx+LEDtTf5Q=;
	h=To:Subject:From:Date:From;
	b=H2aQ019Mkm9xTv+I3ABVhKUt/4aPujk9qNGFpgOgcg6x1GefWAJ/qy7Y6wVgbLEfh
	 79mk4Ot2XmjhpBEGsmsWa98MbR8UEZiP6SPmqcv2PnCJeQ+l6RX7rn1rxUFwdtx/tC
	 qRbCn/rr7X13zskrjzJVOBdXKEY1jRFVkmMEa3zadv3CSDj3BR4pU+sfUSjxZFQKbL
	 Zhc1ccn2oPrJBfVCwC0bel7Ss9jt4YtSvgY2fhj1t6UXcSmNqWvLMj8DCCpSI/zu73
	 AD6pTGGVxwPepoyYhQHKNDBeoRMQ+l3nfLlZG6lbPL2JeWAwu9ZQK+Uk6LpGeIU8JS
	 eItnyWzz7upFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC836C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890543369.6601.7949591075470934300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab7458f48ac2ee522a4ca90b1e7e952d36c9fd3561dbf4f8d52527c4bc038de
Date: Tue, 08 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788905433
