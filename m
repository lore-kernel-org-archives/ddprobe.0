Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BA115B13B
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732360554; cv=none; b=JAAEyZZgnm2eAXoKEqCC4tiHdqtih24s/ZgmTwJD+n1ig8EvW/Or1fQu46/RRKgeleSqr3zsXOJ8brcyAV/eoakWePz1GtjSnVzYtnoiEVqH5yFblUxAbHr44xYO1W7Lp2ex73kjbVAFo0gDjlnMtIjL9S3f9quzwwBlP1AtELY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732360554; c=relaxed/simple;
	bh=ibWr3epeLe1pXPQ/BX0Hwjt/N/ZQfwm/m5sdYeXAtA4=;
	h=To:Subject:From:Message-Id:Date; b=BKw4ufmKhGvQMCojwvbjH+39yjNoh/kjWSt0jyGE1Fm4pLGHzP18iyAg/8dsibgs5iC+ZqM1nVvwCy2Ljb/ViSPplRVFDiAQtXzyiCukNcATnfKSgO7NqzfLHv3DnYXUyynhB+bQXVJMcPXRp1I5db2zLEPNH5gkvf5ZM3TGz2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcAVMtf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcAVMtf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1824C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732360553;
	bh=ibWr3epeLe1pXPQ/BX0Hwjt/N/ZQfwm/m5sdYeXAtA4=;
	h=To:Subject:From:Date:From;
	b=gcAVMtf1F2zjfpnDroSWBLTupA7B5LS6iPKY1i0PnXjoxM2g6dFjWdp4eeEWJH/N2
	 yqNmgLsw3U2eTCC9baYAr7OQ3T0xf2PYV4pHrsjQ4xyihuRqdwtXWTMUDiY51tlJaJ
	 5VjKxs/H2znzTvmWW0wfbOhyDEbr7qyKtPvSI0+eAlusPPGzBYkbDK5oHmRGfCJcQe
	 /ZTNVpwBaRNLRTNgtAVmooXzuEHvCkewq2vSIyqRUcoYl7J1Dj+nbY8IzhtsgZfs7G
	 iEsf1HE56biS2JOdMvwCF4qi2yJ+wyUVw0YJDloft9G4WscSv9cW7yEwHY0fH6DPsU
	 j2Wxtw40LRqqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96590E6ADF4
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236055360.5345.9601897840569282790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d516f82d4ff6ce56d313b85d0cf55c2c7306c2882fbefe93d791616a1cffe25b
Date: Sat, 23 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732360553
