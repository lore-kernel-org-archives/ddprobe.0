Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2987B3A1E7F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765926834; cv=none; b=rDTMnuWKQSrDhwXLqq477EiGVEwJPuqszZyISI/RxByCMbp5vw4d5zbgE+FUS0rEMM/2AJjtQzS4n0DFLqRHD6S+CaDTKNWyTnnXZfLZr7UnWSQoLYIfPJlwSDY4aSIXcKTvM7IBVNa1/WoXsFAkrMrp5LKfhwge6m1xa+oRZEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765926834; c=relaxed/simple;
	bh=hfvrVhI3fsek3SzgOnLQNrE68o0faBFn/+Bhdscnw6s=;
	h=To:Subject:From:Message-Id:Date; b=rJM06/BUyGTWsYR8yPtOzx3ya9VYLA+dt9pztfduIShwuO1ARUC51d53A2TqUaAQba/Z4kpmTLikN0+cZoK8/scd80Xi/NIeSe8fM73LigorgPjfW61XoBU/0Rp5c+4mYvV1uBIB+Awzeg0n7GIyHsqJQCdRkB1pQj/qfnOTayY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feyOV34t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feyOV34t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D27C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765926833;
	bh=hfvrVhI3fsek3SzgOnLQNrE68o0faBFn/+Bhdscnw6s=;
	h=To:Subject:From:Date:From;
	b=feyOV34tmPLFLvh/5vuAxUBX5vTnaJp1C4EMoxG8WqTbg4sIEDs6bGSjbDwEorFiU
	 cWscatDT8WzSjhgEy1zH3FOtrwukRMxOV2/OKJd6Z4RHTP8d/vzo+FeqBPladf9sMi
	 cE7KXctYISl/dFYs1iM5s47xCARU8Z/c6uGuabeuKBFD0H/DYgAb/cRzYQKcVZij00
	 0+SDSboga5PaAyKg7SOINsrJ0xTGfBbZkjhmGDAU8IWXqT8nsy+wtzaVi/fNtfK/Xl
	 QaY6n6V7aV7iH+H2IxKrqpSgvKxWPK4BnrOZaN9y+UQRVAdySHfBU6QawwAuA1oZEZ
	 kZkq0PvY1YNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B8D637B3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592683358.12631.1492087005662532268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526f03e45159780d95fd61e6c426d304d1b6118f0bedb5e158a432ffb79cef7f
Date: Tue, 16 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765926833
