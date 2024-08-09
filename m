Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1659719580F
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723220754; cv=none; b=GoQee2W77xVq1DOV/Rv6Kke7bift0d2nDUpvY5UvxRG9CwC2t0EX4LCFtRjgMM1ZUkaKTXh0ADvdQsHAB6BaRkCtFrPsKDPnKKP5VRcvoGk3gwELRRZMnEM4DF1QZuvxForWMKjT98OgPqOOW49tllnG623UoHvVDh1qTcIn1vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723220754; c=relaxed/simple;
	bh=xXfI26IoznunN+My+voieI8LhV2IT/j/wMroWu45EAY=;
	h=To:Subject:From:Message-Id:Date; b=bYdvmAUO89NDHOxvSXaI52Gx564cdxp7jDP5slQWwSvLTLo2S2hN72EIQMOnEPBNhtYYHA2tYtYB9a3SANc3nIBN3Xady31sk1XBnTajAt/0+KWovsHeuedPAWrf2oxM24XEzcI8XM+i42z+tZnKlgPzp1IO8WiueXFAnerz2H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrpWN26W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrpWN26W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA726C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723220753;
	bh=xXfI26IoznunN+My+voieI8LhV2IT/j/wMroWu45EAY=;
	h=To:Subject:From:Date:From;
	b=jrpWN26WBNkBitIJ2f7xYofm4S7LAcYYXB1YU/bZwwbCdFW/wZaXOJqj3yppLXTh+
	 w2uvosuS/n6ve3T13fR0LLmRhUHy1KgB/d8N2AKrCQMD1crOe3pASZa0GJ0uMN/jn2
	 CGXTI1F71LD0cWXSZswri8vi+YvZRHXT5VXUBQ3g14Hpo+XIqdmLMHZgu6596hNJou
	 VbM/lhxJExc5MGLcfNa+M0ppwnDcBT9yNfsmdw3JKrtq5oscPoLPf/+y+hxAXyIpLd
	 d3NMyr1rR5Yml6dO+olCECnJaYLzjOXHUB6nIMYsWX8OzaisMB0Og/CGWNCYIWcB9I
	 qh1Vh37SwSFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D76C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322075361.13183.17772045062865005379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a973f33442fc7dff817d8f61534945555b2d34851bafdc1f13d1c8d0cb7579f
Date: Fri, 09 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723220753
