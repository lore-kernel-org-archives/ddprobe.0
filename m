Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E3F446C19
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790147434; cv=none; b=gT//ES+I9wih0WC6sD0MyZGyV7lS5/RC1Qw5bWmtVrDWn9HDfWjBF67B1rZwzYFBENCZLV4rGjMaugUSNOAK6KqPaw6Y5yZO8xUqBccdMJsCf1PH2yLzx3wqcNeo8OxcQC3ezqb/5pFQivP71LLrCZgazvbqTHbFT7EN70iXUYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790147434; c=relaxed/simple;
	bh=YCd5S5w9g1RHWZfuEjZgAk0i4L39zsfvJRlGZMjkVEA=;
	h=To:Subject:From:Message-Id:Date; b=QaLCugrY2GidPfl1qyFbrUlzCxwmNU6b8dDATLGF/tFYqSiI9LeoTHZZGwb3b5ynmfiDQKepBSEIZZGdQvSUzOQtaEBkwdynrSQmRMOc4k9BsDAv6tc2wtcZPruLq+kAqUnhMLmCd2/EDINe+dDl57G575Yu47aLE93kB3f1yXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8GhGPP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8GhGPP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EA9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790147433;
	bh=YCd5S5w9g1RHWZfuEjZgAk0i4L39zsfvJRlGZMjkVEA=;
	h=To:Subject:From:Date:From;
	b=S8GhGPP3qBlNbrAgA/8KfRf7mxQl+wTBJTyYgK/UZ6wXh27Xh3sIFlG41jGTcSGhx
	 m83xozje5LAfMpmFIHwRPsYQFUNzeM38U2yYbkTy/BxFEWQKUK7E/hJE3yMaF/p9jv
	 sXRbhYulq+yB2+LipUsttKLD2ZcRb0QAD0Zazr5NYryIv/gMw45gEdnpiHPFgNx645
	 9y0TuLXzx7uw+g4QnE25FT7EaR0ncc/GYhJzduo6aYDNOc/g1AFg2Eog7e8iOH/WUB
	 bHNB8RxsUSbL2j+Ot6mldq/Ky6qAlP/0TXKP+1D3GHgmTTo5VrITwl3UKtt5KLt8Rh
	 BrKvSgqvZMiPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBA9C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014743376.344.276175954730474948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4968f969c88f82d99a810fc5e1cf00a91339c0607ec60cd021b9f8e7ddd0a7
Date: Wed, 23 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790147433
