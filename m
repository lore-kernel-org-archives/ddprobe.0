Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFBEEBE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726806354; cv=none; b=NOk2Ps3+G11y/PiQ3QTfe32/zcfpt/qmNLNtJ0EYcspmpLyd8CJjgJECh4HDN5Q2P0/Au1ML266W4DMkTfjtY0rD2xsbawQj1JFMJ4PoKoE9bIQ8bG9pfYsStlxEITtCvbKtPcCr9WtRGdPHzstDDgpr3bVYBS5O1ErZ/lpMOZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726806354; c=relaxed/simple;
	bh=4PL93jUQMXXAgh4dzgTWcR1Gm+Rh+Od4y8MhvhhQxjM=;
	h=To:Subject:From:Message-Id:Date; b=qYZ8EzAB3EJ0s+U9pEeeZXaWq+IsrlWxx1fKLI58pEzAkevTuMXOrCpzbTO3mE2DkqN01B5W8ctj0B0VL3at/25MRVXORGl+RPGKW78nXCWzgOHHcLEqcP/Sz7ifnCS/Rp/nBAfhPIVcBLGJfujxn4mYsqb+Dmex6nFdkxWbQwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP6aVIRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP6aVIRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF494C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726806353;
	bh=4PL93jUQMXXAgh4dzgTWcR1Gm+Rh+Od4y8MhvhhQxjM=;
	h=To:Subject:From:Date:From;
	b=fP6aVIRGsXpjCqmhlwYuELF9boTHvZrzkn5FF3BSz4wd7CkLKPFGK3V4M/AGjddRz
	 TmuJEeq7GH5v3us38fCIKw+MnRCOu/Emozy+cFs1u0o/JVhqrrMb4MxKY6pB2s8ANd
	 PPAQRhkqBg7qC6S2L3XfYlIxmrfeUJuQWteP7MuihbWfF3in1Vzs+A2gStaGcMFHaK
	 zKsWRnq/UGQ4nMBPa+vonI8BwSa8BG7j69DByVaPl8llmzEMS7AKd2zxC2GV6dwv10
	 24bcoD2JLYWmLFDSvNqDtSfK0uM/yyEMlojWI0AxFvrX7jTiK17fPgvDY6x3rsviTm
	 KUR6BFHI3Lb2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4CDCF58C9
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680635362.28099.14502527850762949233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9051fca08709e788d8c1b027689da7891b6efb52c3c1243be07b4ef466f1c5ce
Date: Fri, 20 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726806353
