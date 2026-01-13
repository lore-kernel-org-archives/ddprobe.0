Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5DD38A735
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768299834; cv=none; b=n9APhUflUIKvxUfIi9CjTGTnj/eo1nRhPHgPWCvCKIXDi/EBmpG48dPZ29Qb77zuylOc7805cCNJz4TpAhmPW0EPA9q4RT0A/11uz+rf6NE/g8bsT7YA+tD8W+3kGj7hMmKVnZ3JTI3FpE2V4ybtAk4F9Xu43KuDM8xjMf6OL7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768299834; c=relaxed/simple;
	bh=l4S2rRBNN3Jw5oy0uLfRcc1zIEBqGc4dfwfPkSreESk=;
	h=To:Subject:From:Message-Id:Date; b=PQ9FlV7dIlXjytpZy4gMDdrmZeqGswotZN84FR1rt4XnQ2zyFgP/g6CSYoHyMdd+kb8oHl1llOw+Ak1SWF1m0JBaQCaF0uFFSo+vXaWEcQnxpcGMbcDfQn3CEcDVPgbnTJiWP5muzSrHPhY+u+bsJGh/QsXW6O9wlKHH5qx8KKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1OsfXIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1OsfXIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A50C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768299833;
	bh=l4S2rRBNN3Jw5oy0uLfRcc1zIEBqGc4dfwfPkSreESk=;
	h=To:Subject:From:Date:From;
	b=Q1OsfXIj9d9+EO3Hd7FyRl1mDCtpM9qCQZjmF/yBjHezFPdSajoZEpDRx2Xk9eGD1
	 Xv0XFm8W/hhnYlbLf3NUgXXgYZF0kHM24Gu3fSKyPiPh4sh3QKfan2iuARmPNqDR86
	 1tu2kk2l5YoYL6i08nXAWCELC1ducysmvEQuXhWDlvSzybFaB+nQwPFo/ttLBlCO72
	 c5Xr0X6TNdvTyIoMeSjed01Je0bNgAyxis+XFiMHs1nF071Hl/zJ2dgJmEwIMv6x/t
	 z6AnkuM4iZfBcdCeAvwYoI8RGpUY91kfNkDVubDDHn8lNJ2tYRQngGBucwOzQPfe53
	 Vuwb9gNX8sSeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91545CF45DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829983358.16244.4604059638982183050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b77f1ed274549f0b4e754b799225d0dae79d09617f10dd0528b4e45a798d11
Date: Tue, 13 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768299833
