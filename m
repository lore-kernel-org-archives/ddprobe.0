Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D71A1B4138
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756869594; cv=none; b=APKFZ49K9GD/BWlqKWVoS17hEYi4C4IQw5lgiA2riH+A6khMVdy4Wwc97BfIHUTMXOgB95aD+arR9wRl0vCt8ttjoXp2J9rc9mLhymrqB3JDsdF3XWyIB2NIpXoshHPn8iLr+oDE+t3WPhqDgP9TMB61TSVGC4YLaATiyBFXi68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756869594; c=relaxed/simple;
	bh=+OFkB1UFYl0FJWqNcnABcoQ5Z8b4WusZDQNSGX2TuLc=;
	h=To:Subject:From:Message-Id:Date; b=QVxzyhto1svo/apYaKuK1sHFrrT9I6hNZ7mEPAjuIPHfpN+IYRn7pS6xWOliZPTfEZYjtnAItQNih7Mg319EPFKhrzWiFgdogB9y8plDanDpQGe1HeHieSzFofm61j+BubCsbSzGdAI7kM9xCR4w0Lja95QKWkNYDi5J4wrRsUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eat8BT1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eat8BT1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5941C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756869593;
	bh=+OFkB1UFYl0FJWqNcnABcoQ5Z8b4WusZDQNSGX2TuLc=;
	h=To:Subject:From:Date:From;
	b=eat8BT1mtl2rI+qMNcYzikm9rHhb0ESmCygmWQlcuD+eSKY8b4gfGWN3I1mZXiVe8
	 VvBdAp7GpdTM0eFZ93ykq8BVDuvJwCArbbJ/JjMbOy/bZhQYyVkcErs8tT6y1vfUKU
	 a+LMQwq09c/g0UI+17OKHy375zGxVg36JkMCznVigw2CKLC2LEYUYNTePmzJ+vqd3G
	 EiWLEYaqoZ6p1Yy1om966pGxwphzD3f64/I2irF02ctDr+uJR83KTJL6EyBbHVmQlv
	 ma7fYWQrA1DVUCRik9d88MaEVPneduC9Bg2olU2583LJ8oaYDUZjCLpsWz3ItMrlPN
	 FsQJ4T7rSBrPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD6CA0FED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686959357.11776.3413927488113263231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69d68a16e68de89c844cffac672f186708eba6666ac6426925042f3334544cd
Date: Wed, 03 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756869593
