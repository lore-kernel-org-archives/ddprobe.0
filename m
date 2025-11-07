Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A87022A4F4
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762550394; cv=none; b=Nkspkmqab1LX64MYe7RM3heZ4y9ycUDRCNG2e9O/MNDg4dunBWSp6WdSs2SLA7+p8boB2ufethJJLStxwfrPFdvbymB5eAOytYVsYG+i8oAp1ObszJcdM0uSDPfga87txVHav6E+HIoSScnjwLoRhIvHEb7B+IdU7oFbfOY56ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762550394; c=relaxed/simple;
	bh=6wCcCd3Wubv1/+XVgPuFtOmjzoE7pDf8dUPCM2nZAqA=;
	h=To:Subject:From:Message-Id:Date; b=WHKkGx9lRz2XgwnvyPjRkfdA0LEoZuI4yyIb3hJI0ILXj0MeChZiluQLhKhw6Z7QxvslkGRkiIsS+l42VW+HsJYgrGA8SOqVF09RuyTQ+tunVGcH3cFX+I2hmmjAseJxdlFqTtpVvu+oYju4hqDBQi4YjFP8taPEhBlGohLoSV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld1BY9yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld1BY9yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0500C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762550393;
	bh=6wCcCd3Wubv1/+XVgPuFtOmjzoE7pDf8dUPCM2nZAqA=;
	h=To:Subject:From:Date:From;
	b=ld1BY9yIo11KB2A2bLnRIAoT6pyZrYKzloAjfmjfEQ7nTwWXVW+gqWeWHnCRoRgE+
	 POQqa58MRkye/wK0QZovNkHnD2S7xfJiXd0ZwxwukAyzzaH4+aOIMdoCPK2KMfhGdM
	 CZgp/b6MLs/Snr7qDH3e9cVXDotKKpQyihic655tra5kjUv+77aILKfsBKBTX/wWdY
	 HST+QYL+69y9d/svA1IBYqC6ikhRYQnhXYe04l7T37MybBw/ept8jjV4Xr497cZRE5
	 cn1wQzV9Z0XRIfddeshql4ixBRANI2YeEMmy1Zzgo9TJS/gMmTykjJFH0jaO3wnru1
	 uAhAo+6H4XnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9ACCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255039359.24583.4893383676792589261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1257d80994b0a876072aca1d05aca419f4bfba920918dfd4829b760438e3856
Date: Fri, 07 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762550393
