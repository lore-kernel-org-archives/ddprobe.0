Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4872E0415
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753188594; cv=none; b=OGFYsB2mEF3oJcQkGj4PzwkUjpFHQpIR1LaF2TfkNScDUHzELiAwdfQJBnNLtVOwUg2aVzLZ3VOUVreR7iBiQlfYF+EA/yk0A8gt4M+DOIz5THND1AD4pNVEp/H1W/wv6idxNaLU9dVGSiiEixoo7Y6M2jISjtfdHPESLglRr0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753188594; c=relaxed/simple;
	bh=MA/zxdonGKJiT5Gx/3RH8AHi/tX5yNgtFWcdLJuQG18=;
	h=To:Subject:From:Message-Id:Date; b=StEMQ0rTfDyAsYybLCumPNSU1XlVy5ynM15EvwBLMoKLXaCqhw/Acb5UW9CwdY0bOw+GrAj0HmnF6r+718ZDOCJCVAbgEgWhdwYqWzK7t3gQGkmAvPqU0kch81mL0TZ58+434EWY3kQ05SYK3dendWpDTaIAQx8oFy2ejZpBaNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPktuTym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPktuTym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDFEC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753188593;
	bh=MA/zxdonGKJiT5Gx/3RH8AHi/tX5yNgtFWcdLJuQG18=;
	h=To:Subject:From:Date:From;
	b=XPktuTymBtDd2AU80lhXAFK75l9TPfjfJGoF+l7ttQsCOLXSzh7LyVXe3gQPTx5Sh
	 9m0Bi1lsyY4H12T44efZW1S6e7GaN+DdruMXpw9n4o8wGBv/vQ26fVj6hAzCfM1ThW
	 mYSPSrEXSboseM1Rgaww/JD26vWmtlvVewIpV99RV+zf0Y4tlcLU2Va/3rLFyQ2XXJ
	 l2jd0NWpMq1bnMtYyGWPKGGndyTCJVz7JJ8fFAXeVA3JHZ8ON1RjfnFrTfXNzIVT7s
	 xT7YE/Wvu6hO/JPziadTIrW1YjvOHFf6g6opIqAHmGjbyTY7tkD4/f/qIvYX0ejiWz
	 KWO1C9pdsdnBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908AFC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318859358.17248.4527186778766608347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b247e0bcb34a00a3e88eef195fb1f696053d3b6b24a184d7c95881fdb7c062
Date: Tue, 22 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753188593
