Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3287B51E432
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792064434; cv=none; b=Wb2XCDIkoPKIT1dNTDPqotoOQd62WO1ymah2C/p+pMsMoeSxbicLMjL++uSdAqyd5ZlDZMWYY7mMmwBcZ0ijaMCTsZw8Yi5HIvchagpN5pa2jE9WZsx6lA0CHU6LNOt8TXBUgUMMLiFJxYDW1zYADaAU1sdj7T1Zlr4jRyGmxjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792064434; c=relaxed/simple;
	bh=nJ4Y+glrun9FTsNaQm+xhAj/YHfv44HccErs4GXo05A=;
	h=To:Subject:From:Message-Id:Date; b=stKDe75qS9c+9IbdDYitoDFes6lZ/2hANH9ikTbfoZbGGkqfIm5GwUvRaLBiHnLuA8KxuR0Jf+BEOq7I9CLfhpBRugWu7JhzL6+x3iko0eGVpZPTZsf04A1jotMpCEyIY2jOqi8NWZa2U5YYLKnYh4nKO/tojOyfZy+fdu3uqq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3MXSqNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3MXSqNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9F1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792064433;
	bh=nJ4Y+glrun9FTsNaQm+xhAj/YHfv44HccErs4GXo05A=;
	h=To:Subject:From:Date:From;
	b=g3MXSqNjEIippy0hdpIuNH+7iZNLELK6oZT1PcBLGP9otbnfYJfedkPlisKHoHOlO
	 /HHqihFssC0bjSChfGIN92Qq9hxlrTfGaXkzrGVWdTAiFHITlJGIqm9I9Xs61VGEDg
	 idx6BSPsF+ZUGuLk3lkjaCZDg5lbEEFhqd3267Wkav2SH8sEjKay/RUucClYifGAyw
	 hqCq9NHdxJ6sgRRH5clA/ClSMA7f61gmY78gn2JrJOSjjWjND7n0C7EanE/FTk7ze2
	 FWq5C2eyCK+jOObmLlMTwIloO2Vylq2GpZQUrodu2d8VYu3qbjt8kqpsAFAv5IDD0w
	 Hmi0aX5hBtsMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9957CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206443368.12445.9685689242566812014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4dbb289ab7226ad68224419fe0ea153ca81267d8d8f6d87ad4958f07c17dd35
Date: Thu, 15 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792064433
