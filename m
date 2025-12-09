Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EE81E49F
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765256574; cv=none; b=lZoOquy53ezL9PngzuJR7zDHueQtB4EHi0g6uJ8ym6qMVPXksnp2O9NFMEb971j/2sDKj2TSZl3xYZfIANnMmolSrX/BozSLw5vSKLm8oAqjdkiIGJ5vEW+GE0lQpDlKo24VR6f4dZQU4F+Sgq6NgXbczavEK2qkRv/ed8dNK7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765256574; c=relaxed/simple;
	bh=9RPxym3zDfqzwIpd5wByuabsZR6hhYGLmLXpMMNDP5A=;
	h=To:Subject:From:Message-Id:Date; b=oPL4MmP2bBkl6HX0VydA4rbEZ5qVCfmMR0VrWcPQczKuHm4O1tbc91iiK3R2c4yJSoV7AiRlliVHuXKHHMxMVL/Dd0CCie5YWPsC9uNlaTmnsHoKqmq2cQCmaYPphTmXnkatvkH6V6LAIFR5YQoXAEEiUYd5xgfgIgdRVdBMNTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUvS3eBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUvS3eBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03EFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765256573;
	bh=9RPxym3zDfqzwIpd5wByuabsZR6hhYGLmLXpMMNDP5A=;
	h=To:Subject:From:Date:From;
	b=LUvS3eBtYCqYGy6p6zsQbJbCEfBIpo3Ym44BSSLiKijgaFwmX9Zu577+JWtLsQkb8
	 xqZrrZfxjqN2+nPJ6R+EKMMk7mq2tqZLF4ZXQJ/cYmOgaRFbBORT2b8HYc0meDB9+f
	 UB5jta5t2ScnL+lCYT8zfU9tX8HqcH4a6L/dRiP5Wdj59CMXWeMiECKrM68R+DtIdE
	 Yr4cWDPO2J7yZuqmvUef5J3eJrJX65wr8fuweUmRb99GY1IkBtOHNmpdqNz69Rie5f
	 ayX9iXCHed232yoKyzVSI27fmwXPvP8b5OC+/0jMtt2VFWyesvikXc8ibuFftmk92p
	 +DjzCngFndE/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E8DD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525657358.20414.16383426334303687441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ba1820a0c54ab62358d3815bfce878854b3eb639b35fcae2390422b1e338b3
Date: Tue, 09 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765256573
