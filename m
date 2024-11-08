Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8002BB15
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731041754; cv=none; b=lxGJXTcDmCwjIcnbdEw2p8+XRhhQykNvOYQ/D8+yvXYDUXhttKyQhV+SA9mez8ixQkI2l1PbWP3+UgpU4XvTrv2Q/ZinAGj2J36tpR8G4a5URoXnWky8e/bjXxSLx6Yqq6sUp8aS4Mx82qvgRWI40XIdEspJ1EyrL06PDbo+OjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731041754; c=relaxed/simple;
	bh=6Y9A2B6t2VJME3LiVSOKx9GfBY/zQ06Gz+XqYGbbvq8=;
	h=To:Subject:From:Message-Id:Date; b=pSotnQdzPLqjchkweJvW0L5n2tZygxQDPSU5Gf7PxoYB8uabMuA2/gvl9GZjM8iewyDk5NSEkt0TqwLpXjs/sLJZmYqlWFxrLwibxSnW6m8nlKdztZ+WpSeN2K6V4H87BX6FPaBUwmlriFlcyvhxs7Mc9017c2ceoVmWv4e8IyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+l0S9hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+l0S9hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F1C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731041753;
	bh=6Y9A2B6t2VJME3LiVSOKx9GfBY/zQ06Gz+XqYGbbvq8=;
	h=To:Subject:From:Date:From;
	b=T+l0S9hr/HLR/dOIPmQiLLSchH4yMa72oUYsaFPPwLB+HXibUbgyDXvRT2m2FGDrQ
	 CBIKLJmmcGiwJNr0epOoXd3aWxcUKJLrEdSqRMpLZHjt5Y/mspoD4Z0uePLUX4K/6F
	 P3X0zZKqyd87QMXBYTia9zI4b5qpUKzJG3KtIhl0PReH0DBr9bNsIf7CplKB6fuqQW
	 f7cgbSF0ZEqJwCbmH6J8rC2NK1jnoRzzB+X/6Nf0B1oNysw4z0mBx9bAyWjk+L9Syt
	 10al186SwXgQyDPzJHZyS2WqswLVp5jU/ADFn24m106CbqpOdDrQ7O/J/a/LCr1Uf1
	 h/zJZ1o/FnhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFAED5E12A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173104175358.23595.9280333251038932096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0ce1138a9810b9bc0b936bbac062cedd4d16f74dd4a52376e93d7062c9307f
Date: Fri, 08 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731041753
