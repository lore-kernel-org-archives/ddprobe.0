Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CC76046
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723040154; cv=none; b=HhqJBzbEjK3ijtEKT+AJ0G8wu/IKrRSjBc3LcYHcGaejTEvQE1GxR7JC/lRjATY8Sx7a9HG9tLDSGyDFdcfbhzXlVJJdT78zw25d/W3IpInYihCrjaRFK2oYpesZlnql0eL2ScJWfBgDXWXRmmNIqORrMudU1RnLv3Ow2fFCnbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723040154; c=relaxed/simple;
	bh=FkQzvNyT0ym9Z/QQDW+vywqOViOikmDLmy0yeYO5u0w=;
	h=To:Subject:From:Message-Id:Date; b=RBoyffw8N5mB/QOSplpEDSOH6Zp3zEHH9CAZjbmYspyjw5nvnAiJnGkFsNtF5YN8I25Mos+qmm1S4kNRVKxGBk0CbMyITWDIchtCcG/refLp98oAhJBR8bhm0yH8Cz2Hlvkm3hfaV4HiEr8e2wITCncnxlXhOSHZGmReIoJqQbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9IDbECw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9IDbECw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA38C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723040153;
	bh=FkQzvNyT0ym9Z/QQDW+vywqOViOikmDLmy0yeYO5u0w=;
	h=To:Subject:From:Date:From;
	b=f9IDbECwV9ZrpEM3lp0Iv6ZTZJP/Qk3mbWmeCr/cBlp5RIcGFUxFoe/MYmw45zJnn
	 Sm4dvoSjlyKFS2s28SGyqUGMc1CUXK/4c6/Pv+YUEkVGASEBcnbRXAcMzHqeryHo3L
	 4T3pRSEZSobps95iOBvRO6DKW4Lacoo+Gv84wi4qXpwt6Q4zv6wqxbRZO6P4ZsRMVp
	 dkK+H7kxvWaS6FHWhW6nHzEuUDe6Lxv94OcTMLeQtSCpD7pY3T1FJaI4yam0egSCCt
	 klhz3cx/eIFKq9N5vMywbyxqMVMRcztGyRyW7YQz48WpfrAQgmzJ3Pd1XNs1qhiLd1
	 jBVY/dHzvWy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA72C52D71
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304015362.24517.5976993274803669578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0907c6fc48ffb2b0834100daf06910a8c48835b9d8ed546fdb414d431fc584
Date: Wed, 07 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723040153
