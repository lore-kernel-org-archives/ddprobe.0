Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3396D1EB1BB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745872194; cv=none; b=SWivReMSNqTmh9d8lsriac1rfEYhjxiwsLNTIJximBE+BAfU9AB3cadOvzdBPi08TqRN6OVSo2N0bhLNaT51jmxYJPGsi+P5roXx/R2xsjSePuovcFI42lu2VzNa5LswvSXgQ6FI+KrExQ7SNlsc3QzuT44gckVGmCv+ehdBjIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745872194; c=relaxed/simple;
	bh=SYv4GW3zazTcAgukcdtY6pDKUV22FkSXB6PRlkNbMio=;
	h=To:Subject:From:Message-Id:Date; b=aFMZomYR8Kjs4ry828wszJN/zWXTR7+TSPtprlLN/fyjWlUOYlKSyHE4CJsfn+xI0TqtKgg9iiFbPahAnyNr60URHFRcQZAhDBGJlkBrSmIjdD8X1sSEWyIL8cWc1y5awBO8Pe3TLBN0eCXDVfhXCmaA+fOAQkVkRwp5jUIn3jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfVpaFnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfVpaFnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D58C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745872193;
	bh=SYv4GW3zazTcAgukcdtY6pDKUV22FkSXB6PRlkNbMio=;
	h=To:Subject:From:Date:From;
	b=IfVpaFnZ0T66NBbYYIi2+h+txuyl9kxMGZCMUEVte2Lq+C0Tm8UF+X7E3bvifDRcI
	 Es+dY9j34sypbkJ4mnQWNBwdBm6WHN+japYX+bOSOuNcYKMBwkcDlV23sWxsKOHdb0
	 4GRZIxScg1DvJZMPa2aH+upsgh6lSooy2/HjaQBs1QheaOCmMvvUBVYMwU0y8u5/PL
	 RA18/BUQFHGJUr3mOThwluMJSuDmUVHKrleb+DT0ftgI4/Jwth7k8NkiKeKQ6ctTw3
	 5ElGDtIJCS2T0gKYrTiIiTK5jynyvuy2gNCl+XYv+LdhdqsP6nu5BFocl1NwJbI8dl
	 L0n4/4dTSxtHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168FC3ABA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587219358.9820.12559068096147831673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ea507796ae730f45f805c5dd4e208dc1e1a1ddf230b0d46a3691f0393c844f
Date: Mon, 28 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745872193
