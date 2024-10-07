Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5651DE3C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728331554; cv=none; b=PSDiSEn1r7+UGhvOuCi7SNNpye8z/nKRL+008U5iscRKZ338zlbXvQTL9FMf35pAskJJV6hsWT2tKnRpsRlD7DIcCN2OA7cY+fMfbkKIw1IJeIwhdyOeqh5HUNRL096k5BonnFiHpsRYvg/01a0JPkzN8/lPCZmL0bYfM8jxwTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728331554; c=relaxed/simple;
	bh=KPUeXva5RhSDLCX/YMRKKUxuN86oQcoD8q50K4/wZC0=;
	h=To:Subject:From:Message-Id:Date; b=Cfx1ZrZmJP75QrLjCyPC93u053+KCzjvGlV5tXPcNtTEc7CAWesgk1ECrpR73ikWkyMQwPY4vBUCFdkpyXMEfUJ2HOgjwmWdFfWYU4gg93Pzz/icxqYloiM89Ei6/4IR+0uKr5WYezgrpq0tVwaMoiJiqsuRxQBsA4gwa7FkFXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei8TIIOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei8TIIOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8532C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728331553;
	bh=KPUeXva5RhSDLCX/YMRKKUxuN86oQcoD8q50K4/wZC0=;
	h=To:Subject:From:Date:From;
	b=Ei8TIIOrNUt0zYWmwcN3EevviNoiSNAuu30ZXAFq0xfvvNOzUKwJ3DR7LR2Uee8mI
	 rQ1sdv35uJ47RXh7PEzuSvxe/Un+B/N5Ra5+FeDBL9v3BEXnRkgP4stm0L/fH5nY+X
	 HeRCMbnVCXj9UlVtSJan0youX1+gk17t1tgZ105BLsNvNt8w+VapTsc0p1X7DvSFLj
	 VSFdNTTTq3St8Th5IKGwZuetITwCKDTYqDuMON+0ZRHxtz38l8LTxO+83NKI6pX1bx
	 4GinQa/SeL02+MGzeHH/t1GjLKuMkk438AvkqWIQwe/Iz67nRoDAd7Ww089Oc+UMft
	 QmH5v9shHTH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DBCFB458
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833155360.9656.15834643383579091930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1673e5458dad4cdf806cebc477c68a2cba09e88ad5feb5f718188203d37a760
Date: Mon, 07 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728331553
