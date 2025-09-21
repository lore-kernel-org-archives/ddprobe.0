Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE611F4C9F
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758437394; cv=none; b=TIfRLmLs+u+W92B1jUxRseDi+TcKS2lkdJwjjbtnM6KKGUmCb6yYPrOEd0xFzDZcEpa/X1/l1UqI5wVelxaK9VOfpBQyMdU3//06YuUJNGUmZwCdKyUl/CYxBZRTKt2MaQpOD98NiP9zFVwTHfdJnSPxenQHkznBpT8LyrMe0nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758437394; c=relaxed/simple;
	bh=fRY2eHiXTACylhidlnrtQ0z1D9sz9qiewv1uJxwTQew=;
	h=To:Subject:From:Message-Id:Date; b=D44RKNUlsEswUqSSK+LDQaZZ3D1BQUd2uo3lP9O1EyUBHfieUrPUpa8RNJ2RQjEJHpYJ9Xn/I5JXoGj5tDcCSyV8f51bKJ6bxdOjWXMbllmS04hBCI+/0xU9g2Nv5W5L9B2wqkHEb3cpaAhCnhteIIHdptoZtDBfkOLc5Z/Yal4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1+lhfUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1+lhfUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758437393;
	bh=fRY2eHiXTACylhidlnrtQ0z1D9sz9qiewv1uJxwTQew=;
	h=To:Subject:From:Date:From;
	b=W1+lhfUaf/VnttMgGV3jCfE9T++nM3ciZOalYDLNWWjUPZSw8dwJdxp+MSvMfOp0O
	 9p024m/m5P121Jj555mqtFNDKthuB+6pA/A9Necm8gZMkNdBGbqRY96es9WwLui1oj
	 LhOxbyEnVVVV0k2R9gqSFyRxuF/BwgwTRIH5SaMhI1oQAyOaWppVfNf3uhtl1wLqDu
	 oLUEbfW/+owyChr7SNtMA+KtfCYyQKgmkhiCBtib8R6YHEfQ+wmk3jrYGwhPCjhjrZ
	 mbgcIoWYDNC34KdOMABKv6Pl9fYaI7T+FcBEBMoFMcR9DJbmRT4YnxUAnQBJTKME00
	 suNYrsMgrlgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92577CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843739357.4184.14134400981117471916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81f488661b85ae2890dacb898d576fc27826d87c034626801820f122b3c6b1a
Date: Sun, 21 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758437393
