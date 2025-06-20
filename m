Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFC030E844
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750401594; cv=none; b=Zd26X6Pqb51+hX306F6UfcKK4nWT+Koyw0vgFHF71O2ajz/LoAhSFAMPCU+v6aEBrUEE3cPFNYN8/iPPUyBfpIH6JSRmSeq0hzR26G9oEaBYSuIxPS0chKKPsK9wqvCruRG31lo5XWTXoTk1LivfLY4/0K5qK5kEX5QYO/Hx2rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750401594; c=relaxed/simple;
	bh=7iXCvkal/XBkLn3vzNmHAr9V/ozjq7rMLSxFK2OlFrg=;
	h=To:Subject:From:Message-Id:Date; b=gGA6evp7m7MGTwsuHIm7UXST69UpxsYiMPmnpc3tYNzdR45S+X+gV364DZ4x0PLGdajK4ShoVdYeL+5JvMyxFnCL69FjzNPSDouRAvHMkc8ocE7cMcYndG7u8IC+a34d7ahD2FS1NrGXiA+i0rB9491nnsgofxIXtNVOWOyw/r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0hQ0w3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0hQ0w3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07ECC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750401593;
	bh=7iXCvkal/XBkLn3vzNmHAr9V/ozjq7rMLSxFK2OlFrg=;
	h=To:Subject:From:Date:From;
	b=u0hQ0w3kyxWW9giEqdgoP4UIVklYHyJUfhNGCft0WxwmGsbijo9M8Cxb1kJguJJdX
	 STgTCj9GnrMLh7WVkbyV6XxVEytzqIAdjc0rRtrBUJ7Ub3VysfI2hLbmMOxLbZkcft
	 o5jMcGOVVl9HxkgWi4BMYM5+M5ykWeNIGC9VZNOKQoOVo9CkWfIIXTOqnO35U1ErFJ
	 4gsQADY0zOtQD7TEl7kksgdIrH0T+whWzD0FjCowhn3Y6NqjMyoac7PKC6kibK/Hcn
	 geEReMlMvz5qlbX1pHB1nFqdZQGuef8DAFepPgRwPTzDoXjm2v24b7IiID0Wmg5zgK
	 uIpup8pqEwLBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C6C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040159357.12372.16793526346093227950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ba6a97f64b0119a27250d1b50627656bb6401217f3ab99b96964bcd528d8a6
Date: Fri, 20 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750401593
