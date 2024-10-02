Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFB6802
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727842554; cv=none; b=k2jYNUuYs+GizHcqCqXgQxubMgqudcBXjZRgs0fcwRBYpRyrSMEOipkuzFhrAzcJr/WOUCspWbKOHJJTG5RVz+4QTiT5z78mPoqHb2y791cLBl/XIQ32ZGf4b2b95BG6TKZ8sGLxIfmsxQj8XVt/O82+tcF04mdlolzW3qy+Z8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727842554; c=relaxed/simple;
	bh=x/qx68Sf+JpONtBUrw7g5IXDv30Abx2s2rxMnikd3Vs=;
	h=To:Subject:From:Message-Id:Date; b=Vj+857Ahn+KoIn5Egq3nj4klBRZk2d+hRUG+K6zG1zZCriCaSmDczOpfq1+pBwymMyLP7TBZAImq5Rsd/Y31wgU9VxpeJrxMKK3sSEFnprxk2m1bPzoNtNluXzYcvgLDs5xU0Izld4VF9ls0/loug/34gbOW6qizrqRFM0GIhNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcbJrpdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcbJrpdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC583C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727842553;
	bh=x/qx68Sf+JpONtBUrw7g5IXDv30Abx2s2rxMnikd3Vs=;
	h=To:Subject:From:Date:From;
	b=DcbJrpdUT1yLPL9JdJ3CitPSRdReBQos4T3+KNCKVqPvS7hZMQeM2dCDPFVW5YlYv
	 mbW+GlYuTr4ILMkgvceSnPLbVZfo/PguhIHPVbviVU2uVjmDpa7emwvRhkjgwYiTXa
	 8fN2XaIKq+rmhclCAt1s48jczzuKbn9WafXSS/zJg8X82+XTsYtJpvxtBG/NUoZlDO
	 DZAtxlv1EJ9dpH/ZGAIkOHRE6h0Ye8vTGi9RcxYPyXDeCvnKA690jbZOOp79259nvb
	 D4Kmgo0vmew7SluClOakFOp6iFJ8w9jjtR0XjkNLgWa9/+1IBkWSJuUb3YP3VYxQFM
	 A5GfmEfQvRKjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC086CF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784255369.6753.18160573476907101951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d9e5e909f631f0f8426b31d942b5121a4d24d0e170e3b5f3882853e9bb7114
Date: Wed, 02 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727842553
