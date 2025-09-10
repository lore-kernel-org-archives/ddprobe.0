Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E23257858
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757473193; cv=none; b=VITf74IeGCkUXUh13ce1VEQZ54FlqPxrLUaA7kdbE8tR9lMoRxnWLsnU/tbNc3WChqMSfxIYGnWP9wTSzvP8gV7qjRtLhjDBblTgQ9ZiuuKCNab6WNdRQC5L2DtWsgOoFoD6KsmBT3rvNr/19cMF97FItCH/qrJW3orU41okL+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757473193; c=relaxed/simple;
	bh=3ijPAvmymJ1lBF0fgHKnl5Z7wVNRW+5DiOmFVf64ECU=;
	h=To:Subject:From:Message-Id:Date; b=YINS53XpJMG/so/0GtYDlLoLSBEaKpdfUwxSGXH7PvGGa0quok57zkpeCVJM1b0HtlettJooKWsBjIuGNpEUkltI23/1UjlyAEEkQR9UiOqqvYed/5uV8J6FvRneN5tPWl8+YtIa7AxKo3m9b7psSXiCRY7obDDTG5txvXybgI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiTyHBk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiTyHBk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F957C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757473193;
	bh=3ijPAvmymJ1lBF0fgHKnl5Z7wVNRW+5DiOmFVf64ECU=;
	h=To:Subject:From:Date:From;
	b=HiTyHBk2hYKB8g98AO1OyKCS+5YqxO7TVzIy4+kJ4Vq1YC3xMOGKYHgZuUzXrncQ3
	 j4/2l7/ht+3iCu8Tu5oID5MZlmkXCmsIcyZWNjlfvbFnmQPIjRhtT6+25H8JoUB6Iy
	 HXrIkkVoN/GISNnt2nsu1SsHJHvQWE4aDKoVJ7kWjEp5w1Mwc2wqgkcHigxe6+prQk
	 owaHRlD8Y9T0P9c7eH+s4ysnv/aMuy4iBjImgVUnIZwEbdFb+rAP0tAQ0hemaiIQwh
	 3yKYkysnUDRCmbMKfyMXcabCTrA89533qbFCmjxGmhKIRp+9divtdL/eDAh2JNhrDI
	 szWVOgjcAXotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB5CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747319358.20791.14414598373261580523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf6f2ed842612c76bbfae91d1ab7a97ba1349b4069d5f2b2e1cd64ea0f7158f
Date: Wed, 10 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757473193
