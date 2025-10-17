Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E3A295DA6
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760731194; cv=none; b=iVwyN/Z2+t3Gd1rlZuLPzxCjql9QVPT4Hm3lM6FEgSmq/rKm/8/LQB1brgSqCAE5bynW/v7CjA/EpZNCAPCIwuVz6IABFCLgI8ydgElhy05FDzLn+tnQRxol7xxRCpUXtCox7P2Xkzik350qaYziMJxaqD+36GPkuoxbt92HdbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760731194; c=relaxed/simple;
	bh=J8HvcGhENSC+KdKJjawfbJ5V95aTWbMPKJABC327ZUY=;
	h=To:Subject:From:Message-Id:Date; b=IJuS8IV3BLhoSRtH2CYx38RRFbqnHwOlbplFhDhKPH/nd9+EQKQUiQHm7rFKCqmIAELCaYr8jNZAm7DpEg+niTP89AX3qG6nsNin3GmnXPb03hPwcWTWFPdXGRFoyesHFp/3DwfDG7BfvaRXTUeO/Ws29uYWlkJKQxvylSZvKYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ykex6l1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ykex6l1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760731193;
	bh=J8HvcGhENSC+KdKJjawfbJ5V95aTWbMPKJABC327ZUY=;
	h=To:Subject:From:Date:From;
	b=Ykex6l1QLt1G06gSC6pc4mwIuDiUztD3RP4F+1/ygKrjaE0GnbnoPD4z5c1rF9ftd
	 RmM8Lq2TrUpB8Tn2NJJ+BXDRotAVwmQgNr/ThZ2cH4IFjWiIQUI3026fYs0CpEuNxA
	 lkTW2zt7Mmp2OW6hi+7SW3L575W3Kfd3PD5q9W787YW3mYX9RUhgA1cSseBXZl4g2j
	 qXnAV4+pPkwREuFNho0A0ZLRVle6nMNX/U7tp2UUFHRklmvEvR0DXLBOyNA5xtbUNx
	 Qk718Fp9g0kckHP8FIuqWHSkWDWOWHBVLz8D0t0GYCpfSLDZvrqm2fHMeiyA1Opn1S
	 0Inxsh15JRgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFACCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073119357.4668.12403609776852487642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81cb4c694db40ed190109497b32455aeaa355418c8ee8035fb6d2b4043d8897
Date: Fri, 17 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760731193
