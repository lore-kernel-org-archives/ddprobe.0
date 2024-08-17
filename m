Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334C92C95
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723929354; cv=none; b=GXabd9nz1y15WdoqVQlIEBzwsMjJTAecZitLoFA57vgI7uiSWghWUPSQj1ImalWGOwpgRugZnCOdNFFXPLq6cwrg0Y6/eAEKtmyyTlShjFd1ubJKBLs5ebeKynCQx/RLGZ/osPXG95unzSXEcefDVIp6486hPE6UGS3zGO4Y15Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723929354; c=relaxed/simple;
	bh=kRUjIS4ZQYGBqKMLUtrdJRJ75AVKpWkmVacpgDYFzLQ=;
	h=To:Subject:From:Message-Id:Date; b=BoPdR49XC9yCYD7LPHRB8BJZxJ1DKo8xMbM9iTtZUdJj1U2W/twTgNJ5hK/tw0R9R5w6EATWnNQA7V43yZIxlGy85DVMpyuNDBzmS9ONEs0thxJKfGxcXoFbLg9PRxYQ+/DBXfnzsmsj26EyEZJ2Q+9bpz+pxAQO7hPsdx51RPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk5X6CBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk5X6CBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF1C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723929353;
	bh=kRUjIS4ZQYGBqKMLUtrdJRJ75AVKpWkmVacpgDYFzLQ=;
	h=To:Subject:From:Date:From;
	b=Lk5X6CBlgre0bG/Nn92Em+aAuy8wJ0aB8+fzF9pg9Su3R+CyUsHh4hyafWZnYSvh4
	 7CyCghn2O86MqucLrKA6HYA+tV3pQk3VhEwK7MztvlryGKSOhc3KuAfCX/gCYqTKdB
	 j4u/T0+8i+W0athxKEfhn2okaDC/TSSnBb7SGNc3u3zp/Pjcb+yJ5mBnaA7SjOaFak
	 rHR06kdm50/ERNYLOa2l380Qps3pt5IQ6cbWqrC7ShTH2zvglqyA62pAc/K1UCgUX0
	 5AaioOTWxcv0p5Zdz6LS/WeD18xDX4vzA/JpDzY83vMPk6Ujr3ATKe3Fj6LRcvWwY1
	 go8pwcXNRlNwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96658C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392935360.26571.8224058698420631008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b890666c7a70e9bf8a64f03e5b75f20b13bb058cfa268ba08fd9abd8dfb5ff
Date: Sat, 17 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723929353
