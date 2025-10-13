Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6712DEA72
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760335194; cv=none; b=YSccUmBvGZ6lZAjM9uIsP4zUFqPgv5rCuzwTdaR1M87QZutdPQ+7x5bK4ltshRM7qgtpEu7ls0V9Lsnx9mZ6f8H8xuPXJ0EodxUeAlLUtB1TZHapxTwZb+lTbdeAuJAPzuT92GZOxyhSGbVWzNwChD6nyeJnSjYEvFCzau6quTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760335194; c=relaxed/simple;
	bh=rGQBBzFDqdwD4mfgmv+w+xUF56qz/7XeDP8X57yQtig=;
	h=To:Subject:From:Message-Id:Date; b=gx6OeQly+Vj+G8mg7S25JwEfjZFAt7BkVbDOj5BwU+ovrR/ebrYD8G8FgdFbfM13Jx8mDmoZkcMsqA7cu38RMi+4Z8vVDm2704IQL2cxDlHIyLaKiMogRnnKwNAUkB4KWLA/L1GWaW5oyYtuAZkhYxWx91DwAxjtSQOJ1EhgeIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvOah8F1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvOah8F1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B98C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760335193;
	bh=rGQBBzFDqdwD4mfgmv+w+xUF56qz/7XeDP8X57yQtig=;
	h=To:Subject:From:Date:From;
	b=dvOah8F1d2ntr2j7AuOYxcVrkXWa6vJZjXM/1MOiPnLWV5fFnwMaiAQ+0GGfuo6mZ
	 LPP0qG44IECUF5Q+s1YXGCihHEAxwFugpE6MrAMSiFkfsdr7bAOI/6QywmTQJ6ZMaQ
	 gY7lMm6ntxQ3P3qBCxN313l9grR7ScCVOkxe3Y7mNTTZ2x/rPFe9Ov3zIK81X84ePu
	 kTupaFNWVKxdGSPn2JVZmVqzfQgy0eaNq/SRo8Pdh74rPDBooFcPGo9gHEhXX/sLt2
	 zLCHoFba5Acuq5pFArgdPGMWArYmwSkpfCHDBQSflavwQEFmbxXwitmBtQhQ3fKlhq
	 teRTMcQVklGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01BCCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033519357.8876.17503728554801499933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5bbc301c22911f35ef25757b2c507794d3b9fa72df1facef10d75b20b812df
Date: Mon, 13 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760335193
