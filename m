Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C767217F2E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762444194; cv=none; b=C58lEmgXmtW0RRXE9vH/OUYk4O2s+xMy5mYd9V59GNDHL0hF4IEys9Jv4LiAmsu1aDoJLCs080HNMe43T35B5yt9X1xcfaP2k984k/CHHNAXeGlSFtHNVFJGLkxz7KZkAEi8ZY1cM+Z5O4VmXvgVgDxHJ4CBLzK7DlelCw8+QVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762444194; c=relaxed/simple;
	bh=gf0IjavYCji/UJoTPMr/D3LRPDRuc2N6IrbsHG9Nd84=;
	h=To:Subject:From:Message-Id:Date; b=IclxYt1leEdxRfBiG7CNScPx2Ge+kx1Ncbw1iGJv+glcIxkr6T6LPPQss3lcfO06zzR7/F0DUSDyif8yv9jzglAibhU0xQRZC6apeqFYl8tnA3ouFmIlijy+1ZDP53tasYmvv+DTD0XtKM1nCK/uEP09R6vQP0oAq7ZrZKjtoU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2vEjmyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2vEjmyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762444193;
	bh=gf0IjavYCji/UJoTPMr/D3LRPDRuc2N6IrbsHG9Nd84=;
	h=To:Subject:From:Date:From;
	b=S2vEjmyWUvMrd6nIwwOUeg3ktqKVTnF/9x5Lz/VZrj1tnxqP47rqd8vZ1pd7y3z/o
	 K+eknhmlZW/IOBkJUVL7j5v2vWx82aMi3C9R8zAHSSAr/t1v8104eReRPdBI+GvXVj
	 8Hxa7MiSpi96sWqMzWcda2igL0x861+cb5eRIofBxm5vgN09Fd4nuIxhAgHrGCwZIB
	 aXHDtC+k0eTxiTeUsI4eFeUm84gw8uYtExAfF0vnHiEaJfPpTM+CX4NU5MZVkHnbEH
	 H3dwFAlm0d1GRPOgcrNyToCniI3gn3In8Xrw5VgikPJz61O4mvfaDFM6vjPYk0zF4W
	 xvHvxdbY1xbog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92320CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244419359.9201.4277292110269832763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb241739fdc7ad1055426b18780c24f61a348c3bbb544749ffb46acb64da7dcd
Date: Thu, 06 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762444193
