Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD4202997
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759472394; cv=none; b=uyfARbd00aS4SkfMfrVHeXI/0ozsPLpwjePfBusMGlPQBAkwQ8Cpd0caS6GccORs2Hd+6yd7pkKBjd6ykTX84y15VFOA8osqrwfawXRdCUoU5zQz7vT47SfOocDzUeHKJ+RQx8jhfyVtPNSDPcflEzmNRLGzRKnJjrSX/+lwo9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759472394; c=relaxed/simple;
	bh=GJmmY1HiCcqzOpsgCYi/yIv0zQm/lbYNAbqs9kk1nR0=;
	h=To:Subject:From:Message-Id:Date; b=BT4jAEkI0sA1psTjHYYeOBHhYQYP21p7N6y8enMV5WgqIiAlzeWC2XICZTNXdw1Cz0Cf3MtEQYaijdE29QAkU5tmgSKpEVpWAhwuqFclwf5Jd8bf7vuyGs2TYVHjrY+xGL3oBzdbHfTaboJczSz+FuL4XiL2ObU3xE1RIh5RdWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anfaR0wL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anfaR0wL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E705C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759472393;
	bh=GJmmY1HiCcqzOpsgCYi/yIv0zQm/lbYNAbqs9kk1nR0=;
	h=To:Subject:From:Date:From;
	b=anfaR0wL0LgNChG11HyTRJ3epqoi0BN/bNm0XXuSRoFKqgSrzo3AwbqWs/KyBt6QD
	 i/oIn+0J0DWMqKadH2K1Jgual6hi3EnkXnFZd5JuivNeBXzZBna0jamJKJido5Jnsp
	 9xKFCM70R3c1BBaFA/fvGyrCpRjYfLOIW9FaARjLbw28g3vvZCdcbNgpWnRSalmSIV
	 UijtxpBQcInn6jIk69uQBKcZqsrSstlyvmNgzboLpyj6JXWPUy8MpR/bRb0FW2qU7y
	 6g8z0gcfsO9Lj0kwvmPLSZEdDzCK2TpHPNbGi9S6w815pTT1/xmTZbuLVERaT7/0wJ
	 +925pdcURi8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE2CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947239358.3907.8212990827303567904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e5f7c43290a84bad1bf8602e9fec31bb6f1c73d6c5dedf6c6a3e0bc065c05a
Date: Fri, 03 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759472393
