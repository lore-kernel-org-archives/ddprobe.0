Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2471D18A6A7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765732974; cv=none; b=uHPvNAHGv9C/j1Pty+yayjnjDxIX5ypq37gw+69zBuJWfK65qYvHO/9/VbduuHNAO3hatM4+8/g9TefUCTCiNdKvI4VRVop1kH1lBi9yfjnFHUSKYsf0mFzE1PkVIqpGo3Llm9BG4XsGgbatuneExs4nUiSLMaNeOxSJgjJEuwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765732974; c=relaxed/simple;
	bh=7Def/dOASCz1NKHSQyyXKIGi3280cR/Pvp/CGasH7RI=;
	h=To:Subject:From:Message-Id:Date; b=cXuGJxWIp3PFO8VPDiFNHYCVXXCbfLrAw8nL7X6MpR6pRfcIwoRt+6b4r753NzQV+8ykLYxDPwXzItgTFrVh9U6L9OfHVGK70SVtWT0esYujW+m9pVVRL6mfD0OccoML6e1TsBGpfRJoQZuNiki3F/qIGHUoyE2JEe3YWuJ9vRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lsmt/GHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lsmt/GHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FBDC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765732973;
	bh=7Def/dOASCz1NKHSQyyXKIGi3280cR/Pvp/CGasH7RI=;
	h=To:Subject:From:Date:From;
	b=Lsmt/GHEHNGWXackRTxkgHrMiAQJAuoYj/x78dkCrWafVbADec4yrgeqe9ioWM7mB
	 U+s4cy9tAcbX8tJbmwU+W+Z5hllo8XaZVgqmNffr/h8AhkiRukj6H7rEkXakbNE75W
	 /pmtnFbLvKrEGUxgktp/ESz1hwUxZYZDr7/F1SahawyRr//ggokMqMnWORqf++pmgn
	 NYd1/ivLT+/xmGHJyePRZtMgue/5WK8bgWVanNkuF3236hcm4rO5eEdaUgih6rppth
	 zI9UAudgAcn76vnW8YqSlY4tB4AT0LafaC+uqpFIstA7XN707D51MGSkUH0zKoyI/P
	 1q4IuCA2PJ0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A9D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573297358.20371.14622479002861656435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683d3a27ec9a2b3b05161dd94960c96d63fd2e3663749fccf6ecf2d6a77e3099
Date: Sun, 14 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765732973
