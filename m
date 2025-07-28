Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79D977111
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753703394; cv=none; b=IrNm4bepm4GXPdjW8vOyQmw9P5VJ8c+93EmylSd0Aw9FqZprLJgfk9o1LExSc3zb8xpquFMY4iLVpPtGcyjajCt4RJGCX5WF82vshNRJGkOQ5FZY23S74EWFIw0CL4iIg5ppRnMPZNe8liS5AYeBmEPvIvAUeRF0akegUCQ2+ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753703394; c=relaxed/simple;
	bh=PTFVGyETG0/nTYd73NKcgUabfpXUJidmXBl46pwPYnk=;
	h=To:Subject:From:Message-Id:Date; b=K1mns2yqNa8GSKzMBq41nsnA84VL41Wa6EtFSHBHqS9IRT54uYdXv3WukNW5IRGzpzyprU9HAXup0pMH0fscXsOw2sfamNqfP7Wif1bIgQCXnqft8S6uHtyWCQK9HNY4PzENpVvXpd6g5pUplBeqdqkdL+no41Wa4HdkiMBrlz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLnxbAfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLnxbAfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E44C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753703393;
	bh=PTFVGyETG0/nTYd73NKcgUabfpXUJidmXBl46pwPYnk=;
	h=To:Subject:From:Date:From;
	b=iLnxbAfk36o1VsUWdm4twHvqV9MqdVf4PS/CL1nqwdZ2EYzMTy6YybrzJ0DjiJ0jt
	 4lU5USP5IdD/nBwCBLoDx3N9Dio3TEeJfAei8e4oK4T54rfZBRksnjBz2svj7S1nZC
	 ZPvkgkTP3ycgoShoIMif0i2BU8rT9JGmdrgL9tjT3ONen0RF/bRGtyUiFkvDAHIb4d
	 hk+DhKLbNMRkyXLooagacDj6Cg0HINNPf5Wg6UJZjdM4h5sOE1DEurc4ql/ck9/Lgc
	 oHhbBq8Zbqws7b4VxTQosD1Ur+ch2zMikFoJwPxGIXbfOWBUcw/IHibw78knG2KFBh
	 EnnpvZZUi+mhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6BC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370339357.29865.1615721108179725298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722145f4c6952440b74755416e894dbe7e20121bbe6fe0f67d559df9c518a0ae
Date: Mon, 28 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753703393
