Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7A542A9B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750656596; cv=none; b=n9OokaK9nAuWg38UmoUl2Xk3xYHBv/XOmkivqxyQmMSPMPvO+r1hqJwsz5YgZN+x77Msvxx0FxA3EKa1cYHID1zm5gKIae5uCRiZ1oNMxE6Qx5fbx+sVkQMqSTEWmvD9om1+2KrT0pxGXyQp3arnPAfUcR8g9NYEwRlLTjyeWi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750656596; c=relaxed/simple;
	bh=qDbIylNpUtTv4VastBvpXTWGBmj9It+OxqYSCrS10Pw=;
	h=To:Subject:From:Message-Id:Date; b=i+j28tZSS6yzrH3nQKYTZwY4LsgKyo65kuBU3qfUR26Mwegt2ueHiQfQsGFvxGi7o5PdUcgu8yO1fmaZU9wPim1qr6izzMdoWPT8DIzkf5Y72pnyuV8VNxRv6bD+j2v1kL8X9jUE/FikpLVOue7GIV6zZjweeD88E4khP4R7iOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYZh5F9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYZh5F9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750656593;
	bh=qDbIylNpUtTv4VastBvpXTWGBmj9It+OxqYSCrS10Pw=;
	h=To:Subject:From:Date:From;
	b=FYZh5F9XZKCkPvcAvCRKGdoiqClBE93a0o92eohbJeM9KGLrxUudZrTVO6qr03LUN
	 y1z7j734e82zdoT4aimF94/C4Z2GnfjQArcuIjsYfBQ48CERFYPufAqtAhmDzrH5pQ
	 /QZMcpS+AzkqRHVgVALh5RQq5qum+gkJHfov5HfsyVaVG1AR50Nz2er2r7pe0CXC2x
	 YVBOb758gQz8wHEvJd/iCsN8f6sKAagj5cEmMCwdXl3el/R7PLRnD33ireVHzZYYlq
	 gveE5NWkx858II/VKNU1tSnfjpQiaCSqmz8yWw0aIpQtpNF6zWEoDG+blbLpSAMSne
	 qN789C6QxwPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66FC7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065659357.9491.11172661575980843843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc71cda6bc283b78602735120a61fce3945ca4343601698858ca994a109727aa
Date: Mon, 23 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750656593
