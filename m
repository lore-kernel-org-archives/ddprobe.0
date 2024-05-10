Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C79A376
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345543; cv=none; b=RH0ixCfXnrlqcSMtPVWYZLxEL6DarTSE1JvSnQ5jXj+GNQq1K2Yi2pcrLjhsWEwxHbF4W5OlaJJngT9eyBz5M/ReucWsbj1x3BQovD6PI2VWfxrC8scsi7Si/XktkjcDBmynQsy83cVG61AjiJCEB1DLxkZtwtZby5bL74jyl2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345543; c=relaxed/simple;
	bh=rDXgc2+Gsq8VoLUsXSJrHuiBaC3tnblPea8hU6EW7+o=;
	h=To:Subject:From:Message-Id:Date; b=B5wa5TB5rgrMnPTecfBCrCionbGvUVw860X+sZc9WKqbfhAYyfVj7WfvzuYzpIU1LLgl9ZcShkbL49SfMJmXwSbsWOlSGdNbr5vq6ZTqIkt66c5bKPivPhCEd89WkOnrEJuuWhSl+/WIDfT+HRHBNdW409fcMKCMagHU/9GT/eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pk7u2Ytp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pk7u2Ytp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2E1C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715345542;
	bh=rDXgc2+Gsq8VoLUsXSJrHuiBaC3tnblPea8hU6EW7+o=;
	h=To:Subject:From:Date:From;
	b=pk7u2Ytp32XzXYhOhoF18MQq2CIolV9Y+N9Y75oElC9xcboQYjZJaU/8men9JsJaF
	 HX6LB+BM/QTSoDKvFqSNrgKOLLSD0rdKvypAcGr/yKrwHFVGOay3KEKJOILdElqLjE
	 WeN18rVr8R969NJ35PaPdwYKE35DqGEOGmt1UCSJX4ldgOXx2rmKjs1+3OYsYj7/tw
	 3TkAhnDuz9ZSf0Jnrgd07PKr2i2gwkm06TDEc0Z2fzb5fMFHL76/THuY9EdLYoH4T7
	 5n+Ol8Y6G+bhCEYqx2YyQpIoliEVrGdTWoDikoTnU32e/zPbZCybFJCXRCxlyT7x3w
	 ovXAcR1cMH4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCF4C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534554276.17643.17252992647787035798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c08116c86e12160723447282a0c5ae82716a62afb3b4697014450c1ba5f555
Date: Fri, 10 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715345542
