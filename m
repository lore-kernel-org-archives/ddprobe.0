Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403CE25E81C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742822994; cv=none; b=aVYA6yD3EESEUMZRzfLvinNRTVNJbJIzqOJ9uJbqQUUhs3TATH6cxWU6t/qtkOjU3nmh9Kea+EYETF57kCJkkTQLzHEdNmcxCNEOwTwwPJI4JmNlQNtbQksqPYluGqIOzcOm5qrH3uupsMaXj/9Su3bXbF42bcYV59a6czUF+eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742822994; c=relaxed/simple;
	bh=klLIcx7gy5uL73yiLpAxNotlvPYUmBXkyn3r5qfOexs=;
	h=To:Subject:From:Message-Id:Date; b=cSQ3pdsF6Bir6wrBVQSb8rBmuYu+R9FcjpGG0MRhYzDll9kcGiIzABSLnnn99XTs44ZpjrZ3wtCbBRI9ubDqH1VC76JNDd4IN1F0CLLwTtnpOPgFDSebTZpFDOKpPsfOKnh57kmLBA1WI5+TBOTuT6QPrhUuPxUTCR8/oy3KFE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYLQvKCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYLQvKCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94ADC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742822993;
	bh=klLIcx7gy5uL73yiLpAxNotlvPYUmBXkyn3r5qfOexs=;
	h=To:Subject:From:Date:From;
	b=NYLQvKCF1eXvqeNbosqsmIcEJ57STyZu66XVmbs0m5b5Hw6X0Tk+POOqQjCRYVDsl
	 fSUlCr12YkNb+Po/6i9vHW2QCdctebZjO846T32H8OGDtkk69JRLKe2KJBVqsrsgm7
	 2pjH7g1UMWJSRMptdtgF4ZPBtV9ke0v+m3frZ3TZV45yVTcVEH+ZcGT2mP+wxX2uIg
	 mkY/JOuAHn9Ir741twUDN0fT3ED6HvjPH7pmdBwa7j3bBidUPUhoONFXUC+iOCroav
	 hOQ05vdh+VVpceMs/oknJzN85bb4FuX1z7L8guxCQdYT3+yW+EdvUfIF5smtCCrEOh
	 cyZ7uzO15cQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6328C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282299366.16322.15402761527414733947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c46f7b73f09113aeb7f249afe560713068a9e803939118632f215ae5b889313
Date: Mon, 24 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742822993
