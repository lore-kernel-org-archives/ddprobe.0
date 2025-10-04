Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BF018EB0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759543794; cv=none; b=J88NzzeY1AtK/t7BtHnLYdBjFgRSiFonWoCYoiDoYfORI4uHPECAnvgLUUPb372K6PANeM/A5FNUUuGk82cQRkRx3rOBRHd0z0ItKC7TsO+djvnMAzgvF8We732jzu4UoYK0ukkvjJRdNX9dA/Kiq9PaR4rCD0fK3tZDLmHV/zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759543794; c=relaxed/simple;
	bh=/h7HNNZ0lYXL4Z2MPl+fJXW1rYd5u5byPmjpq7Y+hZI=;
	h=To:Subject:From:Message-Id:Date; b=o5sUvPzG395lQ6Y7jw3lB7aAUQ11QSbLR8/Y3dVbmJ+LYal6tjXzKWqjo5zmiUe03bUrmEfnVsorjm2u87W5FtI0B8EHOIC2yXEE4f01x5sgL9bsKfUTjEJ8heHy2sZDEYUHsL1smjjPPeZmx1DAi2pEzu7DyP6OUmzC/9eFAxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqGlkmqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqGlkmqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E213C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759543793;
	bh=/h7HNNZ0lYXL4Z2MPl+fJXW1rYd5u5byPmjpq7Y+hZI=;
	h=To:Subject:From:Date:From;
	b=WqGlkmqie2ru4NUuRTSvHdxLiBkFyENsRtQ57UOdPErxeav2Wp7NiLWkbyzMuC0ZJ
	 c2vNeyyJA2FkhJWS7jjb6nFJY90CjVlcSxyeJStYzA1X6Ex+vGEb+zjvVsCGgDJvDA
	 FPs78fef7MlW3zGKlw+TqrUtOpKRvLCvkEDMGW/XXOl+hZwfl9iStOraL4zJ9guoVA
	 7fUFzazQ7fd6hxdVYp86kjI77zsIQWF1iH3Sw69EDyL8BKvppsNjIPhe39AkVMuMKL
	 rAfq7CKb1NGRJZlJhPvSiEoDnI/2cLnFbrft0D7F2r7YejK5LFYoDKtybIizCy4Lkb
	 PDnpoSkB0SVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB4CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954379357.17175.5346812431281834259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e3b86c1ef4c6411bd21635be3c45d739b3a25ffd7024c0ff127aab6654dbb4
Date: Sat, 04 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759543793
