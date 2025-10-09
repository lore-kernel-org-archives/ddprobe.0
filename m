Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9A1E51FA
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760029794; cv=none; b=h03zat0pmaYRuxbJmitkz13g/CDwxqoe0CAbHKNJ5Aztj8YvVM2afUUZ15bpqEts1DuN4MYWya0k4XtOnHp9Nr1BdnZk3nywU/P12uvaUXOSx82XU92CfLoDctkZqkbXfRcv32Eb+sNbFRAwIMN/dKxGPyT4T9FHrWN4/7Lc6KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760029794; c=relaxed/simple;
	bh=TA6aznIICzOga9ovA8I2pfeKWg6+G8Z7C3+zZGOB3/w=;
	h=To:Subject:From:Message-Id:Date; b=FUktVmEqPZTJAmm8VzwTw6TcEIhA7V2xS/mlCw7vFaDwL1ZifqeeUlljmEr8Gp02fM6YHyomnxcSrFrWeZNKR1iBneCMBCZcFdcq+RFSf0MUtp1+Sn+Dc2m+V+a72pqQP/VNWMIA1dd5rDJp02RN2bM/OdEnFBL/yGzeNclS7NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZGYQT10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZGYQT10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760029793;
	bh=TA6aznIICzOga9ovA8I2pfeKWg6+G8Z7C3+zZGOB3/w=;
	h=To:Subject:From:Date:From;
	b=BZGYQT10lN1Gm0rD4grm4uFiGNFu48yJslq1rZrVEAZLL+kk0kFxLNaCGtC7mWygQ
	 3bQZHNvQwkuEC/IvVdr/yZt+xZdlTGL/iwcTDc7RqO7fEDJAgmFKhXTCTaRAvA2jv9
	 IJQPlIB8WYF2D99KR/DuzMZXL7XS+5x9OWzqaQHyWIE+C9YAI8baclX9t1VvEhM/vW
	 wL23HEi1nnqyUZbsrleIdbrj5GNara9DoEA/+A4uQPlR5Y4vVyyYUKnw2zgYddEXQF
	 Pgp+yrc6HVrmbX4ypgfk5+7nj9uJw6+qRHSmWkTb/ZMwE+KWQdfUSnYptJdhkpsIGN
	 fyXKoiq+CTzdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D9ACCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002979358.9017.13445998414340320858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89413fb59e30965dbb597e3ce016bf3f76977932fbff2c6c2ec778a936751a1
Date: Thu, 09 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760029793
