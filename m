Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C0E2D24A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755890994; cv=none; b=qUJQmwGC0IOkYQur4THqLtrctVMqTWTnpvgfcluPWrDMM0KT2KITRJ5+npLWzPSHf3c6JWUhA4Au/gkvdgqpj6feG92TI0KH7/HTZVMh/MbEVMlrt3i5NPJulmR8P9NdUdffmfjvMrjlgNQnsWSbz5izMcCkubg75a2HFtrTSZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755890994; c=relaxed/simple;
	bh=c4l0T39ZJGjqAviD0Piw88BG3Q45B/tSrcyycFyRYa8=;
	h=To:Subject:From:Message-Id:Date; b=Tb0f2btH7uJkhKxHwxpOuQARPrSV72yUUrqXVwREN9KyfQmAuJFFrsEGwXOdEOwBgEbDlAVJ7xSIXmTNsIf7kXzqITCq/P57MAIoAaF2MLB2cPPMvg49AEvnYpxn7JWTs1kSCkzza7kawQlm31aRAqjazNw+VY7a9RlknaYISw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA4OVLAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA4OVLAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34EC116D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755890993;
	bh=c4l0T39ZJGjqAviD0Piw88BG3Q45B/tSrcyycFyRYa8=;
	h=To:Subject:From:Date:From;
	b=dA4OVLABMwq8FTiUY/wuoUgfF0Dw+Mhhwtw1Zf6jHNIJ6qLEU8nRxO+x4EmUCLjlQ
	 qF1TfC40uH19dzHXUTTTTdh31ncJZ2DuxIfDsf0R34XjlsqOGEw9OhB0sVLAjpMzVC
	 KUFKMf1t2quOuL2RA8MqCOcFv6dfkHCtxIYMgOPTEq8fX3H0/fSjD0eR2SPs1cF7zd
	 +c5VpMLG3uG7pAL6Nlcp1qhtUmbmODQ8u5V9UP9S5o8DNSHfxagCrUuv4aPQflvc4S
	 ua3wSm/eOelswyDPEwIaXbTyp14H3dT2XbY8dFXPz/9Qzgv1KIoT8JRitx7VtSjmES
	 0PHJLeEV5WXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDDCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589099358.11705.3772164154815240599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebff7bf033356acf47a65b8496c0dc9965f0b1fa5b39f3adad44ecc58c56492
Date: Fri, 22 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755890993
