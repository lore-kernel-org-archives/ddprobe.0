Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0606C13C918
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770295434; cv=none; b=HOId/tJluJja3t8c4A3MAx2FnQaJuQ/+6q+GuyYlcUhocSZs+jzKkOEnagSc2Xj5nNia7NM37gIwrewpTRG6o9pUio4fTKi5gEG9qqTv6Ha5YwieYbWzPo0i90J8s8F3NtNojlWYlLQUpVFEItSZsbMimGJIAP2nsMF6nATduXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770295434; c=relaxed/simple;
	bh=rTyNoOzfGZNU570h+3HQ5Cxvv6X08XIWGSNN5O0suTU=;
	h=To:Subject:From:Message-Id:Date; b=V7+u4xQP1SHogeQCJwaRzeXZrgTFe2A+50FfX6mXa0fkHTzADPLOY81hlvCDEXKCkXKHmx0IFho3a022XTMdMp8lTtWCnftSGo6pNxhxfcCLKWZYmXAcLj8xcrJQR2KJgakjXJ8uJTioQZtb0ncdzsgBvkRxoyfcqt+Pv3grGBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JseTJt1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JseTJt1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A89C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770295433;
	bh=rTyNoOzfGZNU570h+3HQ5Cxvv6X08XIWGSNN5O0suTU=;
	h=To:Subject:From:Date:From;
	b=JseTJt1Ea82m4Va9QXZz2DG/y2BYOp4nLjcF8Hxo+oMgev21+1owHBQyyaDZL6Upe
	 n8mAjbIr59byBh2SGJ/1iNNXgjUyEn2VahKSQ7+YLleDdST154MAoBPvWCOmROfM3e
	 TMzklnE+xUbgN9vHUsIWecMm7qjSDOG4I8iB7rIam0yOmif9sVl8i7UwsxbAkw8B5M
	 2L4aYCPEBDq5jqG8MHNn6gJSkdv++4FqYnVT4EPVghqAcdYErRM7+wqn3VtyGg9p71
	 VQ2trYslEM+TVRo11Eb0egaWe6bCP6q8vS4pexgmjJTQNkmPy9RCL77IZW0PCaSDVy
	 ZnI8yHPgKCw6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9493BEC1EAC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029543360.25292.6546138338345464149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6806c361c85fd2239710f4611ce46badd69c39a2a2951d052c9b50775fa1f1
Date: Thu, 05 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770295433
