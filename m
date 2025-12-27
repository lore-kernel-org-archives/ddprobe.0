Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190BF25A62E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766850834; cv=none; b=D0KiThPBSxn0JQOL6hHj8u2Qx2UyDZGdiLK/z7FjOe0CCj6bRhyOwzZc8uc79N9mOUmJZ2mXVHxOMtbXOCgc1nKmeD3GMP53b4FaNVCZ4WPE6Q64gZAK8cxCCzrk3nU1e8GGKHUxfbDTfBliMPgv2euolVz6vlssb/IlmRxU3jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766850834; c=relaxed/simple;
	bh=jkgVOe1g6lCpfU7pL2u5vy5yudHgMGBAFsWROocKX8k=;
	h=To:Subject:From:Message-Id:Date; b=seXVLW6yxBmW4tgjhE2yLCPhKJnVW2zOsOuzrBobDW8aZEUkngBlnYReuAew3Cnh7sLYDm4WmpjQ+unNuUNl2YAwL13peGSXKdzJJ556I+Q6jerW0z4nOSxTakwuLpEj0GMCt0vnj8ujD2rUsnsdl7t5RvyQynqmqocr00/qw3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkd35t3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkd35t3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80D1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766850833;
	bh=jkgVOe1g6lCpfU7pL2u5vy5yudHgMGBAFsWROocKX8k=;
	h=To:Subject:From:Date:From;
	b=pkd35t3Wf2TWVyMEoMaOJVlrfmozAsZMplgQmIzYhPFbYgjetjKFJpsm1qr36OcPv
	 EEejYPY7wAnCen4rzbpSeBUkACU76MheTVtFFFjSq9ZP0evqooJJES8XBEW5+ZgLmL
	 dg9vGp7/4EKr1YTQb2v7TNFE0ZO8yqDS4CGS/PyuJhpoghBbrxVjR7ILAE5Y2S3DO/
	 wz9tQLctbpJLXJYQR1avV+B8OdJZVouiQgE05lY4Dp6eVCp21LydorS0VahEta7QUH
	 IqogY3FtqmTeuY5bme6oYW187Pg4IyVnw9az/dPbuwrJHX4qjjP7lgeoFJPKYL88KX
	 qit/LUopyWXXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9604AE8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685083359.32021.12771890249171031731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6628f47633345c9b14fa1f2246e04f25dfe6736f5c06e94f8e17fbb860b14b
Date: Sat, 27 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766850833
