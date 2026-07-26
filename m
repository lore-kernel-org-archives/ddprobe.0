Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D9F2D7BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785079834; cv=none; b=WlbXGmWQgtk9Rzm8Cc1LhXfHmsL7bonqIL1CPqlqDRl5rAMbmegS7UVJ5ysjeRiFNU2ykow7QmizFab8vagz7O1T4LDC3aiZEWrSUGPtGxgcqrXdh5mf4yGeuEHPATLLe36ozNXEL+KyQ50B/lZo3bd/jmsAip6dDZXFrv1K/nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785079834; c=relaxed/simple;
	bh=KKJEw00MSVZKadcjJGhawiLg/Xd3deMxLzxSneBXkFM=;
	h=To:Subject:From:Message-Id:Date; b=fOsYVptwfz6Sof6+C5JD+Lsf/2Rzh8GkvfJRVgKmsjzyCggk6YUEKqyTRsoviNOQyZ4SYG6lfvyKt+3t9b0LJmNTGU38slYPyAlPubwSJAd80ufFWb/iJaUtvYRHYuRv7F6eIha07R3aT2z3tkmWyfhyvaneRl5A9rKTvtOhK1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou9aaPnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou9aaPnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37B4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785079833;
	bh=KKJEw00MSVZKadcjJGhawiLg/Xd3deMxLzxSneBXkFM=;
	h=To:Subject:From:Date:From;
	b=Ou9aaPnW6qJu8/xwB/r6JB8DbCLHuy0tK0Cw9wX4FaMIi4YkB5AVGVm/tJfIesdpG
	 CFzC24VlDQU/ucE0zd+FCmv9wSgi5GqdEw4FfVk6ysu+LV0qN7wAh3eWPFgyfLH+aR
	 dUWXGoQYVEtFNmMDFPoE6hIrft9dCM17l4XbJvV+pV2UShSUVAz1Az3kMj2MnR37ue
	 FOkSQ2uVHgmx9v0tDluJQnx3EvWqJXQr3Jc3wOzkrfyVGvO/LpLWG/55oqsYkG0Uqa
	 eM0J6DxrMaIAIwkjQ4b7gtnVjBIWYR2c4QsAqY1oee82AhuBmt8e6YzV8dRAGzUnyY
	 Bux5gISGyUkmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBA1C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507983368.10588.2456517016878014057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88149ebf325f0cbbe3038b3c0698f57d3a2e275ee7da0dbad2346800fb2431d
Date: Sun, 26 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785079833
