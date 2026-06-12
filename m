Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485BB38C40E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781235394; cv=none; b=tJes4Iz/uIxrxPL7bHMse4CN+2Pk+kPc634ZVIpwOGPGjTIFpHUjD7nEWTPZQphd63atItWNMX4rGFr8s/HdKDyQ/eAFgKr/RAq7rXoxuXk5zVb+/XD/AjMk18+r9artECXNf4nIQjw36GRbXbfZqgDzEcmEcyxqvbtkOkX4PyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781235394; c=relaxed/simple;
	bh=uj8W5I1fUL5IypGISRHzWs7uY9fe5s01XdflNxad0xw=;
	h=To:Subject:From:Message-Id:Date; b=Rc9MVbpTpTVY4XLJf6/GzhQwBTHSCHXej72IocGu3jcX14J3oxLRqUA0fR/lhuSFQGsoBImMaX8Cf+ZmkzH5GTwcLR/ad+gD3cFARE4ZT/JZ8wOGPFucgQmPYS10mFlSMN8tbhPHB3/vEcZZbwPZhsExeBgCrR057zQCGe4m6dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4dEj+87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4dEj+87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BF0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781235393;
	bh=uj8W5I1fUL5IypGISRHzWs7uY9fe5s01XdflNxad0xw=;
	h=To:Subject:From:Date:From;
	b=T4dEj+87vysWI5rbk80puGl6LSbZ1HF+iH+QRAgS6mIeY9s/eMpW5o3gf4Q6BR+S/
	 FyE+ijA6O5iU0ca2LNYTD81EaMKwCSWbZXefDdCz6p+KfhqkNKrPIi+jLKc1PqznXn
	 l5UL1qRFT9Y8o67thbS7b5xjoh6lFlTcsIvY8hwZhtOXmeNxz+YnkvKOU+8YumYPHU
	 SGpn+rueuZtFF0Bh+E9mnwwHFtd1QnCZ9s5BGDzpgbbOKBiG4bYPgCwHSQRw6cOmXU
	 6dE/rZ7i4bkeHXFbYH3Ho6+eiOBsnv/a15KUF4d1kHS1SPHUzBZ9uBvqm5cdBM/Vvv
	 XVIL4YbMvs5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9392CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123539368.22847.16496338109968069715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c577d68f9b432b4da0d5239d8e960be873a0f6bc29496b82e60a1c23e1788284
Date: Fri, 12 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781235393
