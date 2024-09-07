Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB81208D7
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725707754; cv=none; b=GqXue/HSx6mRoy2Dp5xrRSjc/fg73D5fFZ2oG+rR7nyFE/JffFa/Ne5m1njnxYLwsSFO2bTqh2JpUDLYoqzwm4T8sPxOVXbg/sFsXfZuCehTExPPJQRe1HSiRy6h0HPh6fLsZtqQo5gNPP6KrAEaS49tOH8rd9CYHkHD2W8aLDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725707754; c=relaxed/simple;
	bh=QTPvAPNXxrgsttCp9g+NcWGju8D99NBJCkB3VXGm4yA=;
	h=To:Subject:From:Message-Id:Date; b=TGDcQyKYgHFfDY0YOj+VPapJXdONniBkKxKowMi2AROSNSMLRVF20GMHSlruaouZYVzNeANWLAmWEFYhRQINfz6bwAORSe7iEc/hXCWGcp0d/1+u1QCv352hnuQ8p8cOJcxStc6s+dThBzPJNEqBVo3Ep4qbAjcI9X1sDCNBjzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgKpKdP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgKpKdP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C84C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725707753;
	bh=QTPvAPNXxrgsttCp9g+NcWGju8D99NBJCkB3VXGm4yA=;
	h=To:Subject:From:Date:From;
	b=GgKpKdP1OUUcOaCMcYKv6NdR/zuQh0XsDJI6/6hznCFxoCjQDi+hAL5yjBzqAVbio
	 6a0m0CD1/p3MqrMBjGr0WsdU09pPp+fLb7Y3203znnu/A4LXmExgIKdWhnx6nkygUp
	 tOHqsVt4nPdBBfzHzVtTJ3PXfdMbXDWON8AEAJTQokOOJzYP40ALR7sZEdVDtxRlFo
	 epyzooZ+5D0OLBgzBx+8MTZzkX8CnG5SZJ/KZeBWUalYuPhscLTtJWB2flSuXOuJiY
	 bNK3S5ltR1YrrooEkJJPEU4cRshTvc3jKp4mmwu86WU1QFkr1Wm+AEtpHByy3U2jcJ
	 nZQg9HKG0+N3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5FFE71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570775359.2328.3627120204707409400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8472f5506c5334aa4c073d5a6a327bc97649d04cbc41996f16c4d4d8f7c8a526
Date: Sat, 07 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725707753
