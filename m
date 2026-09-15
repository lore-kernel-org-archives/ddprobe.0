Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182E17DA66
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789433434; cv=none; b=lHl5qbWSn7qQo9QNCFgy7eG5pN7+LPwQrj2ee6H+Quy6faE0NkANwngfYT8tkqt5m7r4garL/oZ3kOFrc6L65cp3/YKvTJ6RBwuZ9lZ03W2qaLboSqta80HW9vjhqQTqtGehCxteyZHVtm5yuvbjpPnJ+WMdLgS5Q1GShuKENSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789433434; c=relaxed/simple;
	bh=F+kzhZV8OIKBtlPaeSPSRx22zf6QqCZ2xa3mxAP2JtQ=;
	h=To:Subject:From:Message-Id:Date; b=r/5hNafuSxxDVNr0jJEgIkfusCPPj/UFFHas//dxfxAaY5QHlFjwJqSOqad/5hLoHEQV+F6ArQvy30x2HP8fZzkTDbEqR6Ema5AIJd1k9mO5P/qNaA7GXbA5nUKaFGBHsLt6AGAW8ybtBH7Y75vfUYNVTHxRoYXSvdHNO+lAfh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPRTCDeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPRTCDeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDCFC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789433433;
	bh=F+kzhZV8OIKBtlPaeSPSRx22zf6QqCZ2xa3mxAP2JtQ=;
	h=To:Subject:From:Date:From;
	b=BPRTCDeECmIqLdzozgjjI31l1H3jabNajuFmNB0WFme4yn0IwRUcPGzOglQkhcNPs
	 3LTej5QTnVcvw8aHfXkIDCT0mx4Ad1l99AFEjRxzblyOgL4C8ITe1kgKl5tFx22zMy
	 HBT2BkPx2FNxOelkNFIXgyzXqxDE6J6c3/nHhmfbcUfIQKyKPaoiAzgRHcUceB6kWl
	 d2xWdSEbc3QJYf0h2xGkM8fITTbrQ6sxmYULxufWHVaFhyBuFJErXATPrA0C+hMOh6
	 HefLDQ4sws8i2l/Qs3HsK4qHMpyxLih44A8NKUYuBVeF0Q4+ZFt1YXS5O8eRQcHceQ
	 IsDCHx63N1aVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9803C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943343368.16473.17777921328798947463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571119d32156b3325ed9c51b1321d05fe4b272c397bc4e9b9d03e7369a426a28
Date: Tue, 15 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789433433
