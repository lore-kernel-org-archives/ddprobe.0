Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1267720B7FE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753619394; cv=none; b=rgK8wdBps3RCjW4/O85pNK9hHFx79DeEyr8r+Vu26fE1AFB0qo330S26cnmZLk7aB+EduJdo6P5YIQCdcGMcFGnPD3RVAKa5Pt+nhcuwCc14/oQNPmhD9bist0rfxxT1KbRpHtPezunUruJ5BunhHcltMMDwNkHQNPr9BuHoyLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753619394; c=relaxed/simple;
	bh=XtoGmggJ5KEeIAGuJVZY8s9fP6sKLUD4ByEjsQgRiuE=;
	h=To:Subject:From:Message-Id:Date; b=uLn47BzrCXMDQcDQ/B2f++54cJ30kxdQFMYZ1DntIA2u9DbGhYVkKdnjuWkAL3olCYwwFAF2hGM5Iz612sKbgaPxSlZIVdDgIL0Ifgr6sNbWaOqPM6qurZeGT5nykqcMhca7v20Gi0uFhSFqM7w/fwlA5Xkot2+0XXunUr3p8gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj9omvYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj9omvYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F2EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753619393;
	bh=XtoGmggJ5KEeIAGuJVZY8s9fP6sKLUD4ByEjsQgRiuE=;
	h=To:Subject:From:Date:From;
	b=bj9omvYFz6Wxl+k2ICq6VkWRiEVX94ylP96KKARMLrXR9vBw3T9BfZj9UTw00A4Aq
	 Ir3t1BInY+qaBQtDNJ0r3icx4tMJZFMooT6WdsatrjDPAUrsyLon0/yFVp34jTdVvf
	 E+TjAJFlIv/oepEzO/FhOyctrD83YSvcg5v7IDElG58tpBxkr+N03VjRsAs0IFRqWm
	 tCq6lPQo5NmZ55cfmXgnCjfJvTVDSqQw33eAn/zuyVNolF0bT7qvhtlp0m+HoP+1lF
	 6okHlXEIKODL9Ddcmc6x+C1VRKe0bS7n6lnB/4yzZNm6Fy+XdWyoShAy9UhOe6i2o0
	 D6lGh19NRFh9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925BFC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361939358.18621.13923638884436354692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0336bf7ed7a23be05092f0b31f168aace9c973e6384f178ecc38d7d9104012
Date: Sun, 27 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753619393
