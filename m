Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095B288D6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772416494; cv=none; b=ObsT3llfcIiwNNx3jiYvllUr4pHYB3at8Dth6SgHFySlXJTWLl1xS1X3+T9wl4ah1HXHZBfME0ASlt58UQpLsLywPNSjuFY9Bu6wTXEXDN/Ka+DnBGGqxfKrJReF/dNImQV/N5Bcx0xYuUfb0PjN2+vsk6p7LidmGGZGhJjbTWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772416494; c=relaxed/simple;
	bh=bwPJz3vO4sNaFn5U0P8RI1CJTqH/s+OG8jyN/Z0pwvg=;
	h=To:Subject:From:Message-Id:Date; b=p032Z//hefCSsx0mdI5TAGAVPcyF6EkYsTt2VdiRAWzo0hrsI4hUQBE6Wm2Eui8z0/jGtoq9ONuFeYFkkVVPkN8vWkQbeS7tYHoQFWhnuitxQI7Lbj995fqshQpAJ2PrNG/OBaruMF+gBEI8IOt7BSz9Oq6w8D1a9LNQwn/bX7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWacaX5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWacaX5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF386C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772416493;
	bh=bwPJz3vO4sNaFn5U0P8RI1CJTqH/s+OG8jyN/Z0pwvg=;
	h=To:Subject:From:Date:From;
	b=LWacaX5yRmcPubhsRouvKnvVkHtP8ncrk4HH7yFUxWoeGWzZK8j1SOfHdBu+7Ez6b
	 Rv36vwBC1DOo7rUJc5bncOKaoYINL6osZhR1YxmFLC4iVEGgwioadWQqUOcTItI8Fh
	 RsFJ26wBilO/wlFd+JH3e+Uddh4tGPS9dtb2BwY8Ap7Uo4FgSv6H0anU90acfvPj9o
	 bKQgGarWgYiul8iaKfg532yuO7ZgJBrNt26oXsJ3kDbck1Daj+j9Sog2RIQWO6AvmD
	 Yv1AsaMRYmxqx2yZOyd/maiQN0NlKEAa1dTR9xJSRuipd04DRCTVmljaxdlhIKIfM7
	 ip5Q85TutfF+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E55D58E47
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241649361.539.10231465453965012477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d8ed9da6cfc55b80b06faa26c41020fd3d51153d14c58693fa1505d79af90e
Date: Mon, 02 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772416493
