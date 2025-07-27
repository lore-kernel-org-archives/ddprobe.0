Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8E91C8604
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753619994; cv=none; b=IIbouYqt8ta8gYJFW5u1L3HNap5uKjnOdl0nctciQ8AUg5jZoDpD8curbxftt3LsQoeSCOF4DS2ZW13vX3VPRoHxu7bJtcoO5Qm7iIFyMpdmuLnci3agy2an7FJfimaXvLi4W1ubgla1OWPeC/b70tQjcPHYkCF40grYbaOQevE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753619994; c=relaxed/simple;
	bh=ClRHrk1AI2E+yPbCknvPgrtLLEmUdcefHHMcgtUxWvU=;
	h=To:Subject:From:Message-Id:Date; b=VdDKFBksCqA2mPko5bvkX+umjwIcvzXzKUYlYlY/x37PEgCg3IByeu8nwF/YG+13cOEvxKjafCBew9v4CG70HP04KBHt2K/C0lpzSp+VJ5R6ShUjbnpzGss3q/KRSLKRKaJGv+W4STLsUD6Xr9lEftA/fSzVIj79Cx5c6Mf5VV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9CnbnuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9CnbnuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B79C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753619993;
	bh=ClRHrk1AI2E+yPbCknvPgrtLLEmUdcefHHMcgtUxWvU=;
	h=To:Subject:From:Date:From;
	b=S9CnbnuTtDYAnk85jseBxzRuDKtaWfdyCqxk9hNInRUouXWVH2wEdI6Rr2vqH/xQL
	 imm8TvEe4dh8JeSSuVPAFLaG8aoZAWa2ca347Pze3djoSY1+IkMGUgQnWNW8iKPf2A
	 Yijdfq9B6kKhjbM3G4+lIy0UEH9kClDD2WV15KqmsKcyTGwQdQS+uxgSijULJdYkuK
	 S7Wm9HUw4Iw++Kds8YLiHpuIiwX5L83bbSbngitChnHoi1QIR9WmdKJ+j+f4WXAPAO
	 tbl8TzMx7drQr0MLl6W2JJcPwuZ2DfJpldS6ywoit6u82IuMVzV0VRbg7MiAGCzvY7
	 XX2GuMnvpNEEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92939C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361999358.16194.15137688411487229945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1a0878aeb441860190c565de71ae0d400f334ca8d249441cc7a73850ed67d1
Date: Sun, 27 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753619993
