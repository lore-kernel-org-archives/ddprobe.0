Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242AD47F5B
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707156497; cv=none; b=LYPS37aqyxoc3EzCiHqygyTxtxiZAfVCA0ZkL/8Wdiz5LLj+QHGgWiuFogPbmLjdHvkNSvC2LtAQjcu/5UxlC4NyA/lnRRosWr104WNn4ii8K//nRV5d0lHZHLzwyO6GyJOa9Is571KUYCe6aFV6AUH24EtMz1oDnd4M7enSQ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707156497; c=relaxed/simple;
	bh=dmCkYpGaNth4Byh7ssnSQrji3uUfKffZkiAk4eIfdc4=;
	h=To:Subject:From:Message-Id:Date; b=c/Gtb41lIJMQ3p/0T0U4wIJvtif3SAd01Nx5IF/db9xRlSysK2SdF8B8QB5F6Si8r1OAF7xLb91cB+VURLNJ3Omcnv6/nPUMGYqeC4/Vt5iuMb7ps4L+F4gUwb9TW1yRzi7L+U+KFRbbGD4BuhKXXtZVgPRxobR9mSoJvm83l4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUvWLpnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUvWLpnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836D1C433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707156496;
	bh=dmCkYpGaNth4Byh7ssnSQrji3uUfKffZkiAk4eIfdc4=;
	h=To:Subject:From:Date:From;
	b=GUvWLpnmq2BsLpNSdpxwxD9qR6w5ViU7eDEVzj7MJvLVBcdln57AgquxxdpQKjAvd
	 K6Ynn1qFNsy5wga5P8u0rl3KXS+jU1J9BWcqz/GxrEKMLT05KHF0n21r7lPIxM/5kx
	 5ydz38EKIdAak/psOxR/qiD2K29JkJEj54i/Na0Tu80+njk4yTczHgekIxoeFAeRol
	 LJY/6eHsjG96P1F4fas4stO2M365wlJkrc2SqqEKmu+uWkH9p4fV3A+I96MGYzbd/8
	 vP7VePG9LAYfzbO4230NtY1r+NKcb47UQr4RXTEoBg7HW8BWnrML06XQnIgPZ/N193
	 6ZUgs2OuSS8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6585FC4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170715649640.30668.2248513572347629669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765b83d890dfe7d016f03bfd5451f89f68a56216e94e93cda362763917ddeeca
Date: Mon, 05 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707156496
