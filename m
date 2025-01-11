Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A515383D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736628354; cv=none; b=stkH+RjEhdTcOLDAHFKTIE2qR6NBFsjE8cGjIsa8pcjoQMkylqJgQgXk3MohxAgOSAbgwjbXmTLNrjdBYudj9dc1qsNVgu34PimdeVS6LBBG1Xf8sPPEv0cIDpBBw/W69aN9gyPp7S5VEY+G8oA9FWfJf4xeBgJUPlm4EdpQAAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736628354; c=relaxed/simple;
	bh=YLK2CoNQoMiAFGehpKY7pBtYZ1x4EwUKT2nsNJZhYjM=;
	h=To:Subject:From:Message-Id:Date; b=izkoH9oU6xCQYUXSb1fHRa9CPyfGQyGZ3gL+vlA3vXxiSAMabncZ5GXZrPeIcJmBLrv2TSUXEFAf/hSlpf4jmQ43RqSci97UJAok5+Vld84aGeHQOs/yrpgElSflPXMK1dmfLjdS4s13ft8TFvHzPkw/+YEzJw5zvH+yIc4XhLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux99jn0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux99jn0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52A9C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736628353;
	bh=YLK2CoNQoMiAFGehpKY7pBtYZ1x4EwUKT2nsNJZhYjM=;
	h=To:Subject:From:Date:From;
	b=ux99jn0i3wcIcGDCj2UWTSCDnbtRjrlTBfRuOkgc5Zra37FDqMQNjuyizwdAWPPvs
	 8+1FsQroD6mzsKErr3PsaresaIxI2vzfR/xh382peetOGvqmbCiZGlVs/sc42tEekB
	 fRPIM6/1biFh/HIImh/QqYsMcGus14UK2ZYzbeEGgeXTo2cyYAwMDT54BHItKyE6HP
	 fr8YigMeQECPN3uyCC8zz1D6vXQr/ScTKOpXgpZpcbzD58qslC1As1mnqneXzi3aka
	 mBptnymSW0r0ldkl3klVkiFt7ApBeo97x/5ZwHaiu+lqJsB/ewcxuCQisgqvJl2WAY
	 3VOsVcTs/ZZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340AE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662835358.26768.7264121110195961664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f784496e4f8e00de872de768c5006fec7bebb1d801dc28b75fa6a27cff880297
Date: Sat, 11 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736628353
