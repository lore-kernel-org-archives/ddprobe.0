Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEEB169ADC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717022063; cv=none; b=SxGxPEh/nPXCEB+eUnHBmqng+XJXDyPLEl7J0SjCRUgVQAnxA2Dz3Wxfl6YsU5iOG4t9p7Jz1wqJCQCNb/hO3haGcm24ND2J46TpOw2geAtZtupziuKH9gG0BfwodM3676pxemJ9zFjLR3luLTkdrgKtNGSkAxrg50KJquQlk1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717022063; c=relaxed/simple;
	bh=mmM1UGgf79Jxqp+k5j1JDXSEy0fuG9+DW7TCAYh+6+Y=;
	h=To:Subject:From:Message-Id:Date; b=cFpJ2INe6W2oU0lsRBnsl8vROkEmdKSSOnxok37JgT+R225xKrkF1jDmaYJTafmb6ZyzBXhyVY1o2cFtgo9+I21Vejagbqs3k6wVNMRYbT4tEj4O84p+VwjZoB9aHD7mus8ZAQXZVouLs61pLr92d04QmvDN6DsZb7HiCvNx0JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZfPL/UB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZfPL/UB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE647C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717022062;
	bh=mmM1UGgf79Jxqp+k5j1JDXSEy0fuG9+DW7TCAYh+6+Y=;
	h=To:Subject:From:Date:From;
	b=dZfPL/UBkAsAaQe4czI6SNE0W3GSL2BYLcproi5JMW+hiYL+aE9tIeMO1PAOI1NJS
	 KoeaSybIunw/Zw/Wgcbme7zdpYU6mlfTSy6St/MJwPR8xHm4VNaQcRIiWgF8+v8Tw8
	 M1NyEa6cK8EJirbzEzvxi57WjXY/3E4EC68B3EFYivOHB8ubSyoCFC1vGGp+B4MFWB
	 vwT8wCW/8S6ylPLR26adXyViVdFQdS4dLqWtpDicjsOxrWp0Tp0FbA/I3wehvn4kei
	 8PAagE/Hy5aX5u1uFSImabhSH46pCvYztOmIP7N4qrOtCWJaodPOR6MlEHf/3aFXcz
	 6tMUqZ5PumPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9564C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702206281.16130.14775163224898246442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9effa396720d4beef7c445184f1c34d65e29050c16c6c4bcd4fa57e6a5ace1b
Date: Wed, 29 May 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717022062
