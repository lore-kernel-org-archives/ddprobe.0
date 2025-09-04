Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6502417D4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756966794; cv=none; b=gOSH9hn2zYUENJgzM+Qjn/WBeSZG+mvI5n+SeFNkgNFzycmBshLWF8jVY+ACTZ8Ecrpz8d/CXUkHQCVPxYqEKs+hNljc5miutCEnhMN1JDDB8+h0TtEaJzDxlehse4B9WGLQZdofj0Mir7YvTpt70bn7karRk81pUL44VojrPNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756966794; c=relaxed/simple;
	bh=t/04Xs/NfumE6ro57BdoX84OsviGaXMUusNzZRzg6Eg=;
	h=To:Subject:From:Message-Id:Date; b=J2XCbUImqLCt7PnU2Vd/2ISHmJuBRDG+mpzUy/QdyVMEjmA6QbreKNv5tsyKt69ciu9s4ifyMK9Y3CJggHjPbfYjS/k2D09E4+dMzVQO1HeXAr5AjSnmOCX+2+Wg8X7BvwaGKO5s7AgTWmi9aDzCrnR638E7uEvHTsGpQURiMME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGo/suSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGo/suSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DBFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756966793;
	bh=t/04Xs/NfumE6ro57BdoX84OsviGaXMUusNzZRzg6Eg=;
	h=To:Subject:From:Date:From;
	b=sGo/suSaJGYgDPPZOZ0MO8PKxZrh5DX64yNV/Y9vYctargZSe4y/d+P35mmlTs290
	 zX410Cf5VM7E2u5op5iaXVHOcxgjH7wfgVBKyvl3l0xhqlPMepfk+796Fw720iyGsn
	 Wq/JRgj2dYy5PP9RQp5tGC2ETu63THegRGC0mxcKxQzRjz64uNB94RM3A0A/Yoe02Q
	 VpfsCFa6hzVUpdStHX0b6d/JW2Pc7r4JB0lZuspenXA0/xeTbdlaZ+sc3ioka+CTU7
	 1TNQ2rv9NR6wR9Y8Tw6wAKAfuj/ie+pEi/nRLVtTeyjPgWjERslYmyuvkpVxpt4Rna
	 efFjQmiqqm2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E8CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696679357.15046.2646901490709503897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd64b0da6cf2279901167d17c9d059b6f1d158f31818190fba642a292d248b8
Date: Thu, 04 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756966793
