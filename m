Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5830014F9FF
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738176954; cv=none; b=k13FOE+sAuU6+0bU/pmdoYrySChkh7hJ6VOnFq0Ya/dQ0w70TYXrR6YAFVh3ibieiHuef+aJO7YVJAMg1+6zESW22pYCTKEmb23nrUKRJK4V51I+Ygq0i/jNmHNejJylWSowh/Ggl6asYnrSalLLtQJxWzwAHNtMrhwDn0hI2Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738176954; c=relaxed/simple;
	bh=yqyULrfNfrg8o17LRfa2VisJVTKqDEtY0hGKrcJnhM4=;
	h=To:Subject:From:Message-Id:Date; b=ZXPxakpscBsF7Jk1qekHrB1a3FrLonogHKS5V/9pCE4b7/Mv49NJm8kbyBzsw/sOPYoBD6XuciRIb09+tMoQfaVuUVD8ay2rzqX/mMd8eb4N2FiWVsH55sH/WtwgKWcJiXETZTLMS4Tre3uRC3WTKFW+kMZkA4XeWhSk0JAMEww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCjbTbmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCjbTbmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0320C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738176953;
	bh=yqyULrfNfrg8o17LRfa2VisJVTKqDEtY0hGKrcJnhM4=;
	h=To:Subject:From:Date:From;
	b=NCjbTbmN0Lw0sUAl5PrSe0Ckziyctrt20hTN0xBFr36Oc/8Fxhp8XpSULgOAZ8ljy
	 cmTHFU4Qn+vKbcOR1tNX0LTIp1vZ8uUO8jrmDuSz7XkWtlRjPZZZxYO7xjwP8NVrhM
	 Zz8Funh6HLt6LL9abDO/8yhw9ysj3R6wQ7i9AubhPzmez02ABEFqcGtAmEcSAMOF9X
	 IfZHJAojHjDr+qZsuLJB3mHvU+dxCCz9QHOiuROyPB6g4DrkQBNATlMn+kT/dD0QPT
	 R8RbGNmWR0cn2D963Pa6VcJgOtEbZk8+M2Yutf2iZGI//GxcfymKx3Wp0sgzyBLXN3
	 LVOLV6zQLUALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDAC0218F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173817695370.29815.12642603346805362569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbbe8857e2b830910c48f592d2739c152ef12b4bb7852ea306517e8d408daf1
Date: Wed, 29 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738176953
