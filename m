Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DD0158DCF
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782537514; cv=none; b=XDDZ9KtTXd6w+GjhnBou0pGI/OF7RKnXNIi4Oq3cC6tc/LJjmRTXtx3eQ5Yp3/w8PrMt1Ex4zWeSRNcomb0JeTAk1UthKYQwTo532t5V6HkcC5FEJR0/YoN/oBvXepcFARskP138ACQ7Dj0Roqk0Npqmi5YWj+dVB+4ZLtqNg7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782537514; c=relaxed/simple;
	bh=8EPhxkly4NKEqMN6it2g2cE4czTgDB3til4QS70oJz8=;
	h=To:Subject:From:Message-Id:Date; b=HabMTzrUjBsGVtd33ChXMqzEcVsUb1mLzRdT4Rdt286FLlzJclc69KBAtmidHJwZ9SA9F6l+aThezV34s777QAufDp71fBcdJs9RAcGlcMJ6Xw6bsgFGV2qn9/GJfvy6C1fR3sY+HbjmrC2UHQ5fVPyBQ+OKwLDczL57wOpvy9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKfCtGed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKfCtGed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE73C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782537513;
	bh=8EPhxkly4NKEqMN6it2g2cE4czTgDB3til4QS70oJz8=;
	h=To:Subject:From:Date:From;
	b=EKfCtGed30uq3am2hDrCCq95wMoq/U3mcx5MufEdqu8qA2XRZlMNAN7GXpgxPLvMB
	 jRjm1qAWFYWiq8nZNETOZC2ha9UT5bNiRRmOdjI9LOf1T2xwTUvruNWYRGduABnQFX
	 72ca8i6o8Jpye0d+m+96re6LyGTOtzlXncBIk3z4qbtYFCvDviWc+Iz9B3nexMrHQC
	 kBmoBY+8v0uUqyVPR4m5y9SDtiFanJ7FMDOPZQg/pqFCp06gkxwC7zj6MSGVdJhytH
	 TYZY4KU/hzzKjccxuOzG+/CZAiHMHHWu/EpMXMUsjVl2pKjV55QM0ODJrvgocGuA8i
	 u7m/W9wQHQR4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0920C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253751373.22034.2281838105553178558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72ea9d55bc7c8b18ef53340b2563e6a89033bdc8395a15702a6b33aade47e9d
Date: Sat, 27 Jun 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782537513
