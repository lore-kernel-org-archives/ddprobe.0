Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664892AD3C
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791247834; cv=none; b=aYbPKHJSo9fOwWnFk2bsHsn/dTKGkqy7wnPV42RfEBtl1W6Oofr+c0cf11X8kZdzVdXF5CKeEkJB+x/Ze/TF8qejG+9QUS+0DzLBvo3quitSKaU/3jxuX/qlTzaWaRZBW8iUHgTCYSrm0NhNday/6jgRAxRlSXt85Q/iZEWZAcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791247834; c=relaxed/simple;
	bh=05SdlR8f3Aol0viPbspnBGB2cjLuwoJZXh5ddTlmycM=;
	h=To:Subject:From:Message-Id:Date; b=qEVoiinRHuxDLn3DR+uNdcTmiGxXCeqaBDsqowrSJSpZqVp9kSc1uEnQN9te/Yp/3DKem3PdX4eiOgTgwgcjs3/Uj9KYl4OuR5fwVxED3nYeH+Lx+/elkDY8pGRy7ZKpZPfsb27eXvXbdulm1ZtvjiLwTm0gFOxDeSDwpp45ZA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5qoMP1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5qoMP1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AEEC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791247833;
	bh=05SdlR8f3Aol0viPbspnBGB2cjLuwoJZXh5ddTlmycM=;
	h=To:Subject:From:Date:From;
	b=T5qoMP1y6GWcwvXMEUdJD2WU9DGLGMDvksC9sGLlQ7tyVp66U4NZmD3MRPpp3k/WQ
	 /vYUZ52Fb4wPXqJt9JCqrtrRrunYmICSL2UghhoKRYJwbSu0GLx02Y4zr+hBey62yG
	 wc9wCW8sitrYFvhOJk8qpqHq9DFkhABLp4Du3Nbd05ESLELynYEW8c6gKdh9jz2z/j
	 wbQSLo/rBjV94uQYlNkFG+EhWCCeAjnosVw+nkDXO6+K19iGbM9tbAeTan8Dwl4qvu
	 peyM7IWdNnpLoqA6PWKNBIcrzo6VkNJD6pgY0/Aj7jy/toW5i5IaLLs04RwoCOOn/O
	 umMNIpmyHzMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF430CA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124783370.3942.8554673088667643312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e5922a5db0527d0e55008378a621867ce2f6aa86f38ed4c1794797c72fe2af
Date: Tue, 06 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791247833
