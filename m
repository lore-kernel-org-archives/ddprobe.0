Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BA917C95
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727550354; cv=none; b=vFMHxbh+Ir2q8FwdEH66acIzlZxWEWAY5Nq6iXwToKH+YK0YbN8B8V2t19k909ZPv+6FVG7E0zUevBcQQQnGpvMOd6TJXx9l0PzgJf/ctBOwadrJWV9jnsRhWNbs2NdvMrBtEsg/rsqoNJJ38BZcKfrTAUGkN4eax/4cha0Q41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727550354; c=relaxed/simple;
	bh=gBbELlv/75SLwvuB+VYgG0EN+HuzuJegjdGKhxO5zjk=;
	h=To:Subject:From:Message-Id:Date; b=SONfDDqNrz1oX8lnNi1tvBVaP/I8+O22VbUCHBuFORzWy1gNKpF/je+wCMecztdc3th3iA1rrv4l24GOD5TSz7mrdeAd61/3wZABKgNF13Cf/E7Lf26ezeIGpnidr6a2diF1AenZr/IOM+gqyLX9YLKfpBJ8QIFD1h7RkSQkx54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R70R5MAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R70R5MAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6CDC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727550353;
	bh=gBbELlv/75SLwvuB+VYgG0EN+HuzuJegjdGKhxO5zjk=;
	h=To:Subject:From:Date:From;
	b=R70R5MArITdvD97XQ2+RvWUhfAprVLzZVS6NbkxTRsmEqchSBMu6MdyLP7Qq8QXpJ
	 U5v0VPcjpeYNsEJx9qSOvtaEICRqpGfo41mV2Ira9pbNAKZ17VKjyfxXp6m3vWbZSh
	 lhLVvGOv3ZGFeSx02UNwUVxc+SBTh3epLW99SyX8CQYiGr9A5GLrJhOGIGCGelk3js
	 YLdoUE3NsQcehHojBSkCpGXm7Cb37uELx8ZKo1fu2/7qQQhM2ttImymzzrD3fLy32c
	 sNli7z9rNXFxJKFPZQBzStKMT1igzf0xoCSXBPthel/Fbjxtkj61MgHEc9aXbGjb0P
	 TQpR9S2oC4i6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96045CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755035358.5363.287307578873827154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e70d775a47a58418234ec2b380544efede2312e4fc6a39e24f0b73c60ec7e1
Date: Sat, 28 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727550353
