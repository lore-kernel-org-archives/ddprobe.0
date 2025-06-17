Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C462F5312
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750204194; cv=none; b=iq7RTx1Yhx/tk7HGuxlV3pFCVP2KFI4F2VHUUPyK1OGV/rzIeu1NxzJ5fnlfFT4NeRAZK0LqW/2+JcuOcWgi9eJOJOrZ7bfmTWO9nD0ibfJj7THbUlnfbMKD1N3DhR7qZNzXWlEJ3FmKIVUolq6gbJVkJ+B8M07/nADov96+h3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750204194; c=relaxed/simple;
	bh=GR7J8WIBvcDDCJFqtndgzPGVKOMZynRWPRQoaMcUINU=;
	h=To:Subject:From:Message-Id:Date; b=Z5P6KuZ9ylODXhG5/6toAa7hOlghgmgHNIoACyPY4gOpN3sCIR+lj4x06UfBhfVX9xHsd2I5O28KoFQVkcznitQMmwZd4bA1gCvB6jas1pEAUW5kdLdRHFmsVLU2wPDIsRC7XZkXzGsZb+9GAe5PU3+/7/Stb3Xwyl9fv4whzYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mpg+YqZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mpg+YqZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750204193;
	bh=GR7J8WIBvcDDCJFqtndgzPGVKOMZynRWPRQoaMcUINU=;
	h=To:Subject:From:Date:From;
	b=Mpg+YqZcVTI5uB1aYk61rG5hwzCKIHdxmnzLVakgXPc1yoL+jFXUikOsJKL/hMLvY
	 hzZbkbQgQ673ALPSlmDhbfBAEfzDap5w9WrCf6NTbh4xF2UYrCLfUCZhoiqSRNHSN/
	 sIg7siGgKq0fSHE5rOTgkFASrJdtrEPk0il8mmPT7YBeM1KI4GRHBmrx/lPb9B+Gg3
	 Xx0Z7IDsj6j4fu0IO02BpCQra5flHeJMrD10pE5srFB1pRdSJq812pZOSAe4cV8F0u
	 LB3gGs03IFpmMTExRCggJtWF0PdBGeuLPi3WSDbCXCd4rP7B2FzNmtMnEmwgRj7Gw6
	 qh7GBSsLVISwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96CC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020419357.17631.18067396121752303261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a7027a7220d968817dff3350218cfabbf1ff5c4e7e24aa7bfea5b799eec3e0
Date: Tue, 17 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750204193
