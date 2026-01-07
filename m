Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF90721E08D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767818033; cv=none; b=pcq7c7XPnPszw51+3VmoWTMWJdUyiOIadYVF+lVMT89+tq0ciwk3X2XpBZEuk0+oGCLo0G1OD4Q5h4EufmsKLhr6P5bHrcNH54S+CxNDdy9biAOep1gK/oZn2gOWw0sG66bkibDiLTRhsyBPfUB8t56aMOSHUfSy5ZLtCgr+eTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767818033; c=relaxed/simple;
	bh=wGMlvwwxFfU0M5XCCAX2IMf3bYaZaTlJaMIl00rJhXk=;
	h=To:Subject:From:Message-Id:Date; b=WPS7NFQ6QCuY6CN0kD+FD1S4nyP0Jt677fKg/PJmrISSl6xRXF1fRHsbv0ryQyb8GCb3MmEAbzF25Fre7LLVq0G6PntLePy8Pn3S2026ZH4ARBo+o9xTTcLaljmG6XHtnUtHLdqSPnuP8ia0XF1DAwGjWZRG+qKRe3mirwWLz8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcNH9lia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcNH9lia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D97BC19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767818033;
	bh=wGMlvwwxFfU0M5XCCAX2IMf3bYaZaTlJaMIl00rJhXk=;
	h=To:Subject:From:Date:From;
	b=BcNH9liaduYbUApuSu757GHoImyGBMQ8JoOdsSUuHfjweEqEocyh3oN78wmufdv9r
	 tQ/eyXtCYiii5Rtm8+Gl8oPalNSOmqaDONyTcWsEHhrXT4Bu99EkJtmPNYutIDgFOL
	 Rm1KqwmQsfvHlPI23/yBxCqNx0gtGGusEJkH60TFB+jgZoptDBgWr0zX95tEdWdBZr
	 THDQi7LdM9IHMl2pWwc+bwhd+n7B47zXmi+ONAAdExdKj/9inl3g1I1s4VXDTD0u7a
	 q7aDuOgG5g7Jb0yKKiMIaSqhJ/HWzTJ3qBfF4BvuFlLl2x+CSV/c6lM+fB7MwhAwya
	 kJjrKfj3XtOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EAD0D170
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781803357.12602.6632338669893883500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e616faef0857c544352ad9e23cd3fb6a67a0dfd2d778c6e0d81a7a0d1eee71
Date: Wed, 07 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767818033
