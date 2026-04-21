Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18ED2609C5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776782854; cv=none; b=LBwNgtiDGLaDmQb8OwDvkrK5FyB1t3tPPMU9pohbeGW5/0ZypSTLb8NqYWqYDK1zqB4ndSpRfArJNJooea2fNhreNTSq92qftdgooBaSwJyJx/KCxaxlRjAYgGI+91d8vnDu0huDFasX7ddprCX69jOYLPli09KoHZzN6+2u2gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776782854; c=relaxed/simple;
	bh=29tSB3WWMXX6/OXZoRj15Dj8yKDY2n49vQIrlzaOTz8=;
	h=To:Subject:From:Message-Id:Date; b=izreDOLwGU5fEkYRSNuR1cAc/LU+S6nFbnMx7NmD1hI2kjFcrqYl/0buSt8LjKE9OP3FAMd+JS5a0TnEFkl6jLuLnWR2P1fl3nyMz2FiAMQYAFoDz2v/txgKPUx5iljt0SjpPrV7tR+s+WxN2a9zkB67f2cCUY6lwGE6DVtTIDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSSVn3jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSSVn3jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEF4C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776782853;
	bh=29tSB3WWMXX6/OXZoRj15Dj8yKDY2n49vQIrlzaOTz8=;
	h=To:Subject:From:Date:From;
	b=BSSVn3jlhcT9E2Jnork+dFszclSQvm9shTalmfc4HOIuz+wR+dB1TJyVwzFblJpkA
	 R+ekokixSz5yc6egC+xrQKYmv4YuBfkvqY9jSZkgQ5IXGHWtiWkyXTBufMNpFIujpv
	 4KUSjzuBTrpK3J9wmodX6g+9iy+tzCSNGZFXCM2Yvjs8XNLIQHH2bhwQu/idMQIplS
	 yzouzUbYZk0lHiG+FIYO3GqLeB4KuwIhYCE6QS6XRv0n/MPm0BB8iD5KmIf2MiTlFP
	 86N/molnkaW6P/gP19PSvqnBSSV7KxicCSGnZYzlfsF2IiQSKBcT7Y+G6uz5FDHDHO
	 ckShQnrgm1zjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CFF8FA78
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678285369.30446.4917394096751071682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34324c29f3871d496583e43c70866e5173be53a0277b72615393648277aff84e
Date: Tue, 21 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776782853
