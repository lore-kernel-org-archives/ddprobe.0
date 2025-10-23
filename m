Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364DA86340
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761258594; cv=none; b=giq+fMD/5vN3+IQ8yyaHAl8Zv7AZNoa+P/Ve9dw/ABEixI9q7MsFpiUwub9nuyWLqB6Gcze7P1a9oRTXFYN5yHLEJHe80JPyeNdnWa3TQwh1Ta6We9cMfljIyGiTIEp/lT2Yh0tVKPfjdG4uQjS440R3jv2Xkq0oWqiBU+68UOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761258594; c=relaxed/simple;
	bh=xiAoVBlEHM8EZ5ZB5rzmKI2JlO2PjbzTcmJ7d0n0r0k=;
	h=To:Subject:From:Message-Id:Date; b=lA04StgIbeCEDCuyeMPAblJAC6DAfqoN0//mePfJFYec/HqpefBH2cDD6lZkiLE/FdNY2sGlVXgTzIrh6Fjf2XZI6nIrG538B7GXZJySRzI557IiEb+YVr8NIwkbGrKNT13B/DamwhDZghc8AL4NH556UW38vE8obBe5LCKQ/3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWQazW42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWQazW42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC884C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761258593;
	bh=xiAoVBlEHM8EZ5ZB5rzmKI2JlO2PjbzTcmJ7d0n0r0k=;
	h=To:Subject:From:Date:From;
	b=dWQazW42XNeUvkL3aWhH6C+ecCKGNZ7HKVjT4pJC32ogBMLoDL5MiotUCLb492K+Z
	 YZD6KDoQ5o6zSU8kcBxnw8ecVckG694+FrdOo7w8HUs5DsRXPbLtflNf9I+x4Wyecb
	 is16Xn23SnK7RrBUmH7oWsWdN24eK22ktL67n2V5ddwUa2CNRcNi1fSsm9ql6iwNee
	 bNDARS4C/qMIzWd8Yrn41twGlY5WXrlv8dzl8jUJFm4VPGQ3aPJ0td6L/G8jM0m7xt
	 MejdhnTotrTqJ7GJpK1/K1Oq+ozISMeja0zxwZsIrwXTA5Wl+xGQo2w5aSvth/lXBp
	 2BxQUmCJPMd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DCCCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125859358.20590.18410401519650991411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de86f5fca810a42366f104776824c2c1456410f2cca5aab8877c4bdcd850cf05
Date: Thu, 23 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761258593
