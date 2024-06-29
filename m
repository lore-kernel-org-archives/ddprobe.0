Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595B77BB0A
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719666863; cv=none; b=fYMaxIsKy8cI/bgculP/jLydvYSLCF5rPEqM0Ccl7o3HgW0iftSek2o7TfQDInNGh7wuB34JcESovRNcKySxeC82buKOUMBS8MWDOp59KTlbMROb3Gh7Jo1D2ilajVrZ0/9Nyuskw4n2gmpO1UJUpvHwXhkPemT36uVPUt9zX1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719666863; c=relaxed/simple;
	bh=DQBuPUBcCzouB9oKczFXYYJMI7/K3RZZaB4/jo1uaMA=;
	h=To:Subject:From:Message-Id:Date; b=smyGxrFNh93frhk4MOrTAqHEMQyMJNPSUaXdkXud5RZ6k/6f3VGzVUe4dIX12QUoiS9y6m7zw+8ueTi948SyLVQYCiJ5iJuXiagbOzMcvfcYYgD2tHNM0BHsUSga+LX4+2QN0uk9yGFANQMKKTIcQADpzVTuBmLwRfhbGYovnNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EezxjpiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EezxjpiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D9FC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719666862;
	bh=DQBuPUBcCzouB9oKczFXYYJMI7/K3RZZaB4/jo1uaMA=;
	h=To:Subject:From:Date:From;
	b=EezxjpiFcDmKd35qo2H6nfLJwx8l/6r8vKKY510X/T8ifyPUw5BUCrFofdiiN1KjM
	 gFSgML0DW/e8/FnnxHr05kyI6UlR6PZs4kmEtm3nS93SCtX7FvOqOLA0CNKY+mNmdL
	 N/l5U+99sUMkfAzPpIieqeWMpMV/+tv0d1KbqMCMioQvrQN6gl9Ocy5uAx96tlsYi/
	 hA/IpOjokx+N12G7htzgGlG9CDan30waMWfCw855sm7suRN17CPZd5YHpyQiVmBRwg
	 cZEaj51YsFSyIKK30Mh0jUN8dQW4qMW9BIogvlMMWOmDwP0Dy3XIsQyTw8y1wrHrAz
	 98xxmT+2hl1aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE17C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966686279.6637.17859519525479782859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998d11efbf01fb431ab037ec99cbb1a441c87201e5d21f3805d36efe6f54440d
Date: Sat, 29 Jun 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719666862
