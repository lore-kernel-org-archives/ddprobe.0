Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA006757EA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770975293; cv=none; b=QUfULKMgf1bXmY+hrvoEQF8Vc9vbSoG40jBNOZyljC672/B10PLW+2q91VwnmzsYZnXzNvpJF5SlsYUfs0n2tjEitvA5qcInaPeLIGBWHUlTuZugH4V2mKtdb5LPDEmfp1ygJBIRCNk1hBYh1XFta3km0o97lPf1qIlAk8xI90M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770975293; c=relaxed/simple;
	bh=HAWY8Cy71U0tYRXouCEXFIano/XHMdaJdWddQUuNc6o=;
	h=To:Subject:From:Message-Id:Date; b=P9khkTcoOWCDkQpVtAHT8DcVnroxFsI9aE8w5+4X+OUERwC0BUr0LBzjRl/Aj27zzFxonVfNQ3tkpWYKBMa34YfZvC8/kBFj5eloRkAQNF4TRuMeTsCz/jtDBv5v3ghytCK0wD8oPRVMzZAVGk3zEd9UsdJAW5TnO/qWv7n7gZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK578LkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK578LkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4EDC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770975293;
	bh=HAWY8Cy71U0tYRXouCEXFIano/XHMdaJdWddQUuNc6o=;
	h=To:Subject:From:Date:From;
	b=IK578LkJ6YUfDFNn9TpgsJobMtySgG7e4cb8Sz3H39U6C2CHmSC96AMkL9DufvQ+j
	 FdEtJ16OvpJ4tX61L00yJtuKYlGAhWyWKaXGOuFNM2VZt3Yl4iOvhs+Wj+7IKGozji
	 f1CU+pFfEBGoX4zlOFdemvxkXg6H392aiY1+DpHCUlh9E82eJqsd3YJQtgJQCTMCzH
	 RFmxnC+mWQvICs96IXFGTI3BIYUfsb30zlkUCOZVtzsUuqAkZlHDVIdVrcfO5nlcPf
	 tI5YTbEjV11doY9NDQzn+YqNCA0/TKQF/3m4ybttPZNdqhrmVNGS2uRMDxiwfKijL5
	 fkoct2AiLuIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665AEE369A
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097529360.10747.16626033489195600975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bb535cb382c178a22e9495cda53da2f560fa9e715884400bdf4a5924b70a5d
Date: Fri, 13 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770975293
