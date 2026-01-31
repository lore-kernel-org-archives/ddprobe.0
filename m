Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C2242D8B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769850234; cv=none; b=DkZaReVmzLxtMGM1QTktYHFz/LpdJOLtWE+sqaUTPjkqD9X/5gdBiGXarziuigtTL+fEYKOFjEueaz06VvG1/rl00eJ7ODgnG2UN7qSkn9htYmXhuwUNdSnrH5yZqlGx+Dot9hOcgMw9nenKZpeNvmgdqfnZ/VVMe5vAfdtPmTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769850234; c=relaxed/simple;
	bh=2JX7HWBtFz4G2L6cInGOuUOVL/LPlBiubJb/YdWnms4=;
	h=To:Subject:From:Message-Id:Date; b=sXVe4iBWRbJQ9ZEkf2HZhnROEdHH2plvuOFZq7TCkpeLLitIzYaCZh9Tu/zRN0Nj3RY0CbpUkQI2VqQmy3GT31PRNU7yCIkwp07GIKXPteOcipzOVemLLiJEJmQ1bRwRF6kPBZbWL4YMXG8CX0szvvClLwZqj53JvuYqMNitUaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agatMaLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agatMaLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD819C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769850233;
	bh=2JX7HWBtFz4G2L6cInGOuUOVL/LPlBiubJb/YdWnms4=;
	h=To:Subject:From:Date:From;
	b=agatMaLz1UjFTY/k38rzWA4jVPPkkcem3cmQaEoszWSVn4MFPqKWn4YjsST5K/tyi
	 g6+tTsJIB+5H2eBNyu6EqDNq9KCwtel27uMydlZU+6wKkj8VDKG2YcraY0woqKtxfI
	 TbYEy18vzQAdx3pFHSHSZf9/X6xLx+C2tV5KTEl3mwgOhOoX6sxYtfbUO6y39g5u1Y
	 Xw5/0lDQvG88QKRZF/U3flMAJtCos6djDi4mFyMb7L8VgR/5TJ3Ql3BUVqADtsK7fh
	 Er1KPMUkLk+4Pq+L4/mzHfz5K6qx5XL1CeeiUBSlvqtwP80qBCS74PGw3OQI0C/Vmd
	 l0Ph8/ADV/Y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A271D79759
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985023358.9556.4702116051321643247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29224a93d598df1435345495634d4385300e10d75d88bded9bbb37fda631b0e7
Date: Sat, 31 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769850233
