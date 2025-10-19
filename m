Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B262A1CF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760912994; cv=none; b=DOzhHOkEhgwkymGnnhepVgLUbzjOzXH0UBO7hqV+w6m9YjfZ6Nz445Jzlzg1n3sjaQOLGtIe25/t8qOqeiqZdbxYpy2iqvy51FrcVk6zYbPNMXj3lP0jIv9eSa597R9AeXY4Zm636LKMpf6UO4mmF4GOjNXW3gQjsVqSEQx0HHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760912994; c=relaxed/simple;
	bh=D6eSU4Fd8fl2XZvYVf30br0lp1XZ0O6dPjdhLMvgTK4=;
	h=To:Subject:From:Message-Id:Date; b=ByI+KLpKx3dy84Ig99HNTk6wInHs9l94X7e+yytJncvx2Bk0iPqnkz6nmHXAWXsiI3a1fOUIUeuHBdNLtnxCH17LGs0A8ilrxxWeeQSOW2dIxofb1NeCTSuqjMmEw0SRdyVPqPLdbWu6EviII5y3uTrAY1BFDc/73qCt3Bh+kZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YidFCqFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YidFCqFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4767C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760912993;
	bh=D6eSU4Fd8fl2XZvYVf30br0lp1XZ0O6dPjdhLMvgTK4=;
	h=To:Subject:From:Date:From;
	b=YidFCqFvl/PS+HSm9/Uf/XqDsn+J2E9Aj/cACI2yH4zAvMMlPPV35jEbSOhJ0YbyV
	 CTScz02ShPSz0NYCN+bB1cyADarJ/1r0TFcfj2ySfpiBMaIPw8j4wPdDbUmnxWynaV
	 pmP12kHCGddNEOR3ezQHpAsYGSDhkUZwwv4tfmSIfTU3sVYI+oDi5c6Tima/SWhpic
	 fmi3alFrbgaggZPrg4pCUXCS2W0Rxfxz61n1MHabpNleMr3y76Y2gohja1hLw53IN8
	 gqY4l16nOTQC8X3EVwunTjopLINQebfUakTMOI72hk/psQ3V80WgUtXrz1aZ6StKr2
	 6Voh/sv1xCI3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230FCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091299357.19210.9919113856125275787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f0b96d31ee0d90170d856d2fbab9d640f449526e0b05e0230704ed2ea23927
Date: Sun, 19 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760912993
