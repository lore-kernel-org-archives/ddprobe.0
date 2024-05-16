Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F1C548EF
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715900543; cv=none; b=f9uafpTWBDmagvBSJIpynuywUibIiKiIAgEZ9nzmMKmSF6YZutDphg49xJ0hJCh711jQ5PggIvZkm9lKKr0Iur9rfoAeIoDR5PZ1Jy65pBxmutAB4fkOrMplHXAkVQl+m+40PRRrMXS6dcO6EyMkPOyxb3yGaf/2V6nrtEGoSOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715900543; c=relaxed/simple;
	bh=Nfrl/sZkGsUC250ox3rY9tDY/gypsyKM/tvbEIpYmYs=;
	h=To:Subject:From:Message-Id:Date; b=fSrhwqBPC1iw8lJzhJnPU+3js3mVdv4cYM/+djP84plxebIb1yiiD1hJp0Jtpx4n8QjwJKfotGV6XBtTxZH4gnTj2mM0d0Yupn/uphAoQfaDoKYQg1xFUjnWVvYctsiWNFVJRiOm8YsEc2uJIfg8PUnKitGT9ETZH3/KY7BFXZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEG1lBRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEG1lBRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E654BC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715900542;
	bh=Nfrl/sZkGsUC250ox3rY9tDY/gypsyKM/tvbEIpYmYs=;
	h=To:Subject:From:Date:From;
	b=GEG1lBRr8Kuv55kDcYm9x17vGlmjL3xCLrHUiat06aFsJkyXVOGSa8mngmAovvPKe
	 OFQR39WAJzU/NAhBE6oXJCquQf6PpynSCpv/h4hP0zkicWYLAnsTheVG3J05ZgMzBz
	 uyovPDWBVOD/681VbohjOyPqc6mpRB+76WvwiOKi0Zuq13guBdDvBCaYVKsJ/KbS7i
	 3Do1fJ4pLS17mS0nbdkVFzG+e40wCHAY3+l3fez1jDKkUPF/WQPioCIfDp0ZwoZBSQ
	 +EVxRqcX87guSwm+P1cFJyiGrEJLkN+nHNhPsduahwqP73VZWnobDNOxq16gncgBTl
	 lT97/HgVEnH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D231CC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171590054285.26715.12234996763386806785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e9544c4e6fbc59da868fffb8ba12f87bfb8b947c29a017cfb0850fa3ccb5b8
Date: Thu, 16 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715900542
