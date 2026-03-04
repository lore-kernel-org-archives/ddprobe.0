Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1303F3B8930
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772636094; cv=none; b=X8bIgZTKGwJb9/4f6h9AmtHe9qrxlUks0Z2lCgyuidy3U7lNZTBvO+/tL7O1JAr8m86eM9wTCSVpGjKI6urC47q7EGgVRUwD1Dqr5uMVnyzubnsbPfJIEpA5yyQsYsSPtfnSJaLsLsqi3z1dwkjwF/rR+vwmKFggqd/E59dRxFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772636094; c=relaxed/simple;
	bh=sLOibDVpVoTpaVMIeuIFY6SPXLXTKc+3d27+kzR3cfA=;
	h=To:Subject:From:Message-Id:Date; b=dgF/MprUrqT29Ql2gD5lpojGwqGtQNECEcMY1rT924omhG5ZDvUXUUsmfTA4GZbr4j4oLV4vUOActZd5d3IWF83DjlHZCd/o3ncJbFEn4O+ns5vQujwBFh0/DD9xrK70t/JG2okqHN1EQNzNcPwjTXorzwOVK/nCdiI2etHgs50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPdOXnqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPdOXnqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92ACC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772636093;
	bh=sLOibDVpVoTpaVMIeuIFY6SPXLXTKc+3d27+kzR3cfA=;
	h=To:Subject:From:Date:From;
	b=fPdOXnqZrncG31zKF2q8r0jdsIR7VawhKa9LQE4Cj5cTDPI/8ZVLWJCw0zzWqDtNh
	 GihP5DQucwEzjo685faomLyJUd3uno1sq4HxTWyGp16nEBrdBkKeSPv13vI+snncjU
	 yQwBILdib61NZ9GThY5jYoLjglNsApAAu71sPZuEmX2XTMvtpXyW3TM9diFUYzNZgK
	 +xyYDfraFhPgrUahXhVDkMV9T/5OD0aGyu/H9KWhq0ozdECCtIEnP460RpuI5IdyRU
	 ZeaXC0mNOIp2BceZp+TMAn88szu1FysC/1193NqhAFmKajJc/fOoYjrPnAsL5NNuX2
	 XcI5wG4ceK+5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC802EF8FEE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263609368.8836.15933150421578040103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a82de2047cacb0747f42b0c084ad71ede4d179fe1f302d9ddea48e1bb64a367
Date: Wed, 04 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772636093
