Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39197C2EA
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775980054; cv=none; b=YeOsr5Hw0DyjoIIAcurtch42mAFQluJjhwcfewHfMjnpW16aYW08sJIMPnV4w7/9aaIk3ZpfiFLSj8xkkaH0ZGVosSz11x0lizj2mbj7HKXk5PJiGunGKgMJhyZzJfrZW+CAtZU7MUJOHRx3XfpGap102JkKvDz8v78xrjClpNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775980054; c=relaxed/simple;
	bh=mXvZenUh89/x5zbp1gi9COnOKw37kq0+kObPdJH/EtA=;
	h=To:Subject:From:Message-Id:Date; b=M8UU8Z1q4KnNxYKPdN6j/VmDoMrTmC1EJwFIgrwCyUDJlDQsjvNgUkJXLvrmWIRHqGxPFCHQWdImmjHn1jCnGCPOaYYbUvLdN0plYWp8E8PLtp08IPv8wokEbeVeNrIH7qfLkqlK++BPhQVOiDVQGclp/vUPnBL+xwPm63qE3ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij2xbTim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij2xbTim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DBBC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775980053;
	bh=mXvZenUh89/x5zbp1gi9COnOKw37kq0+kObPdJH/EtA=;
	h=To:Subject:From:Date:From;
	b=Ij2xbTimcZa0gHUc28rr6yv2t8sRw0cWRtcuMi3mEihq0UxKGV91/49xF7NyuBvzJ
	 GOUdCOn5dnT7bQG+WhYxPC4X9OYkHtq50pkaJ9vkwcMg2LR0aVQf/IYpDbLh2aMIx1
	 n3Fw3BDKxNFzU/0tD2aAB6YPTW7HdAnrerkI+MGapj5gJ6fRIs7wG6am1ADLzXLrF2
	 x1NvhpcxWZjaSmK0Sz658WT0FbAuXHWBDlHzyWq3tHgCv9TzP+1dqt1Q27EdkE40kh
	 t8FsuNAW/VGwwUVwkkPYitPMNhCeoXC1aBwI1kVHcbuOIjmpB3QHNx18CnjgdcdsWY
	 yncd/Kvoa2HVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B046BF3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598005368.27761.317297993916043923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c8a31d58f485b2027547ac60640f6e8e60191a2a36df7037c1cd4452957d01
Date: Sun, 12 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775980053
