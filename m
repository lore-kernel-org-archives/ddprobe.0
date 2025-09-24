Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326D308F27
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758724794; cv=none; b=rNFeK4LpyF9KlRcHFP5j4fGPNSjcCRrn6KAsbmX2d22eh2fTBNaRj7y79stbGZVd1ov4J0Usx1cwUIiiwvRvMRoDc+GkPIw6RG0nnPhIAyLGT6vx81CHdpbGA8BActM9VfMNn/hf+irl6wNaMZPOQIC2anR/7qnUnZ0+Zpke0r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758724794; c=relaxed/simple;
	bh=xalmcB5UTstTh6S7xZngHE/9rdONyEsnCIaCBe6xAq8=;
	h=To:Subject:From:Message-Id:Date; b=COkCrrOT98mu5UoXnd6lAyWkhp3jqF/E6QX8hI3Bh4yz/bKL3vTrqcNlfPufxZUfijjko20VEk127rIt23RuU1irb26m3gec4Z+3h/T83XPePe4Hdjl3CZn3OGN9bTZlzGE3KUyEABLErINipLDGjO4KLtQIeJUB+fQ/CegE3Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yogjpv6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yogjpv6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3A0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758724793;
	bh=xalmcB5UTstTh6S7xZngHE/9rdONyEsnCIaCBe6xAq8=;
	h=To:Subject:From:Date:From;
	b=Yogjpv6RbabwO09Gnpd33VYR+uNmzmVAw8OVvs+nySx+YdfNlJ9d91AudPAboVQpo
	 j1TaWq1dgPDN97W+kpV3Pw5d0KLsHr0cLRaUx+4oujsQu++yDrbtmY3I9eateuhtRX
	 jkOorowRiKQoesmLsY+ilSJseKzHLvbjYN+iRaIEK6ulKRyfTvMgrvFUkJlihJePCJ
	 M9qLa68JwyR8MqSOwA4FWkl1V8EY0T96uX1Ps1stz83FaQ5/TA0l4x+2h1P/JXlNTE
	 UnX2vXW+95k9mp2pDK7Xmgo8zEJsFseVOjZvZKz7APDe99K09KMb7MBOdoHqb2lqMq
	 HeuP5YwwNV9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA0BCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872479361.8854.13359761430854745384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6790273571995582c046f4b98e59146d22bed023ab5254f9be153846140203
Date: Wed, 24 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758724793
