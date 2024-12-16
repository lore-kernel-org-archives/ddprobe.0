Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E89D204F8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734369354; cv=none; b=ugVqNS5IyTKF8StjSbOKT2K+QuJXsu3z8Dl2dLh3SC4kY8GueP5M/Y1FiDTF+8qCw/mQNaSqCwyWJ27Ens2LguBmwiMx8QEqtjPz5ZBF4A8taEkMSbhSo11HfTP41+c29QPUjg7ECoChGK2tqc21196ZQsR9SKv7m7lcygLgwSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734369354; c=relaxed/simple;
	bh=QgQ9uV2s3nVoEs+VBPOTLPhoZGYbMj9MLcEmJjLpVfc=;
	h=To:Subject:From:Message-Id:Date; b=Yfy7KO15YRPUiljO8JjLSHyXBOQyi2fVc9Z/AG6AXtBzt8+BzR3pCRepaPLcpnBgtmXkcZRjaQIO3mLjN1u7oxol/4tR7isGDi3pZFo+9cU/bJtXQLhSqpkZxeDnfcJMEGG6vAmr6iKSxtbsqa6Zx9bBnL4R28SyzL4SEawu4b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TW8s7TSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TW8s7TSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13AEC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734369353;
	bh=QgQ9uV2s3nVoEs+VBPOTLPhoZGYbMj9MLcEmJjLpVfc=;
	h=To:Subject:From:Date:From;
	b=TW8s7TSd80USvYQE9Qc2SiG1NbY2Lqt3wuxUZK5/f4MzYDFD2uYWwXX+UKw6TALFC
	 vrHuGchgccD5zF2lI6N77S2/oLQeTdk7G8Z/JAhKtMghJ6F7JvtwRG7s6eVyu7hZP1
	 3HQIFAmnEYO2C3+EdTXnX8NTfgzsQFfQRHKHx1agcMVocpkUqOOZAdbbpLfhoFPzOZ
	 hSc8St1pYSfr3cPxNZ6n9RNxP1BuxTUzscZCcVzCPu+/6WAOHVXGsTjYXL/tld8Hc3
	 WL4pKKx4hkiU1CMfRKMADUWmPo02ErThaRdRziDOQKE4332bhXd5hvxG2VVLip5sBJ
	 8JX0xakXtyijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99663E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173436935361.3613.4450576610730499337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0389e69c2ce4194dae1b01eee05cdefb6d68be9b72523364162500d705895a0
Date: Mon, 16 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734369353
