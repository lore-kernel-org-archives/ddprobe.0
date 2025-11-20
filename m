Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC983271F7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763634114; cv=none; b=qouDQubxBpiQX7opOzwBFEhecnilIwdnq5GyHg1UI1WSPMjVQu9qjyaq6SwipxCRLI4DQpMpbQivMdalQXvQL7iNUvvdu/Vh5PzPnIfsyBq8+dOCanxfHOjRCMBplvIipsNbJtBVCjLItBdDX7KiQF12FJ3le/mb0JPcLMtzEyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763634114; c=relaxed/simple;
	bh=ZeLllpQ5kSLVkmQiuXSfTrzOIX282b2zxsDdRJ6xSQ8=;
	h=To:Subject:From:Message-Id:Date; b=a3g9hnLp11qLWN+HlDo4IFERDp00D84ehdXZtTjJIiZPOWQnGzDS0OXWq4XamQ1EXvG4d2ffaptlh7TU1J5VFLpJMqI38lzhBOw+xm1gfPjT8EcBfksHZTAkg8KF+5lUn8mwYDjk24zqI5JTKe4TIGgxpglwozXJvLfrjiKUK1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1/MFC4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1/MFC4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7703C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763634113;
	bh=ZeLllpQ5kSLVkmQiuXSfTrzOIX282b2zxsDdRJ6xSQ8=;
	h=To:Subject:From:Date:From;
	b=T1/MFC4gdE+lWncKQwFzRAddaI8LvPZFLvXmnwaD07IN5L03iDY1LQD6dfy/fZO6/
	 ai9J3Vw2/hWJZUkSJ+TxiyXQXyoO55mZdy+iMX1A+Nx1cqQS+P7G0FhhXrDzAr6X4u
	 9WAl09b5Yr0xTpIwCg7PAbJ9RLMT8QGZ5IOhtZQ2bHp/MdPE4xPHIYGf/JGcJMvRy2
	 ppVxfZPvWAcjeUtW1rL9HVxEBsgRtCvjI5+Y8ruyNBxA1b2GWx9jdvPbVcGrZdcoBh
	 Su2UIuKjelrKY1MB4jlKuFrqDPn8sf/qArUhTxTFO8hKMdiqAtIbiF+54nC5sn/Xwu
	 1gJuXR8XcTMqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F86BCF857C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363411361.12561.1822185868164607436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2fe5026ebcee6121c2e66166b700157d63ae624ceca0d92f5435220a276e255
Date: Thu, 20 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763634113
