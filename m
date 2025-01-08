Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B38B8634F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736372754; cv=none; b=f4wZ+0iRrz3QoNEDIDrnrqAcS/rlMuAtljDpnQjKaQ0BoSR3j3QuW+HqTvbKtGlLkWFUJopRWnCObTGzzAwodFPquWV3tNR37705pd2KbZtT7zFTg05oXH/saL9fq5a7OjyW5M6NclfRpN5QI8f+lBx35BM0h5UXv11GZJURHqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736372754; c=relaxed/simple;
	bh=BjTTM3M2+mWdeE4l8cGQfPVU/htnm45ArHvTdosXHUc=;
	h=To:Subject:From:Message-Id:Date; b=DGrZo4F8yjbzDMRMR43n8LjiQvVDUbeLBrQG45UiD+L5GVvtW7n8SaAe9vIaR8+g0S8/Mb6taBT81RkSP/aIVBtzt+wvFBn2D+gtsi0BOlyo0tQ8C/6vrZQHYgDybY5fh1WvFkpM6uKlUOiVZOYkbDwBO1WXdW9e0xpmrZRvrxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+g2rfPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+g2rfPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFFC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736372753;
	bh=BjTTM3M2+mWdeE4l8cGQfPVU/htnm45ArHvTdosXHUc=;
	h=To:Subject:From:Date:From;
	b=Y+g2rfPCPiGncSxajYWUlOupJNbfIdhEeqTCycLw4ZhZgfNXOQx1LPY+5ypCcCejm
	 WJ/vGv7H+sK10NUIco2S4a/3RVha3LwYzSh1hQrY5Dob5FEWXPp7FFt7Di7pVEDDjA
	 aGFlXotmQUdm/4SYNN8P1ePIZVT+Ky52YgmPIR1VvI3gUf/TDWpjaKI1mJwmtdlLda
	 UznSvyQXZGgCbIXTAiN1LBIry9p6USnCkc83MGqPfwdAEUGCjzzba8/k3+9aT/x4SZ
	 4yiUX9GklgNHf5CqFSHglX73O6GHisEaNrMgFK0jau+37QFwxTwUlIveoSq3Xz6lyS
	 ZjinolRjhhCZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C38E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637275360.5277.11641897453411545765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de9c60ba58cc14e7a9da3b5fe3be2405a51d64a382edf936c82a9afe76b8edd
Date: Wed, 08 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736372753
