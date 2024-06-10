Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340E714A85
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718047703; cv=none; b=g12WdKsTHUa1jvu9tAEZhFF5fDuXzydAG8ovwdMT0BK3k3vG+lw7OJizQzfxX+7OPRRPJcGxgQEsP56N670FnfAXGCDIBkgu4ZHVH54nEi5G35aeZIpmmczpMvsb17XCaOR6/vKLmMa4TSREuOvcIKb1XkEIw2s/Oetp6my6E/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718047703; c=relaxed/simple;
	bh=lLFihEp4odP1wUuTgtYb+kE9lEUvS6ruwDmT963uuYk=;
	h=To:Subject:From:Message-Id:Date; b=Xq7XVZnIyP6xj1SebTvH+YWh7o2JOXBrF1o8jgLKyDJCOG0/1itzL/gCVAIFtmJp+9XnCevJt68PmhpwYxFknIQX7YBD5tFnyCfDwflbty8rBX4eqyYkiF20gEhalsRvnEZ0NRpFpM3YpGM2sS6eSsmWz9Vf07PeiKi4S6Lvsio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsBDx6x1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsBDx6x1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A4EC4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718047702;
	bh=lLFihEp4odP1wUuTgtYb+kE9lEUvS6ruwDmT963uuYk=;
	h=To:Subject:From:Date:From;
	b=TsBDx6x14fskFc5hrUvjSSIOVVEKUIcV7QJReF9xFKR/Ukgf2+ONzbn7XaKfJ1otL
	 3LGLAwgqIF73CmeLEFj8+jVbS4seoY/laxSIUrjIHI+RI9h0axEOI3WnZ7r2SV73fJ
	 04dl0y9uSJFuk0fxcalWQDJ2gkW4Tk3AYjk9Mfv/9G+drn3Q9oyT1tm2Arciv0hK0T
	 UEn+nlPZB+eUVP837lMipgVhEpMme4Fn9nR1SiKkaqZc4Ms4Fi4xcX5JV2tV8ql8hm
	 lPXbKkEgxEItDWpXmDJjJk6G4JkgucnutANkZWNOL71s1u2rfXRKWsz8fnx75ICeWS
	 fpb1XEs2mmVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE09C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 19:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804770275.20902.824962714995542485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58abe9275f5d36b20717656a68c1d07279ed1804ca06c235bc7f6aedcee339cf
Date: Mon, 10 Jun 2024 19:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718047702
