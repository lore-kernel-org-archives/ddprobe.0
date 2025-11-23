Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A69156678
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763907114; cv=none; b=kocbi8N8r5aC5yY4v4yH637sQ/8PsIHMhGp84onP3uXPqhSyB0n6L5JVYBfw4b5nbx2OHN1wgEmefGRCQ4K9Xj0cICdTactWSMVHBBsNRVk89vtMgvGN8H9eusxE3TWPwMOgX16SNm5kXqLmBBRbdZKQzo9cVr/5jftnrer6baM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763907114; c=relaxed/simple;
	bh=5GgEu3KT0Yv65i1SWU7QiSMJmNpZ6ZxiRva49V5lNZ8=;
	h=To:Subject:From:Message-Id:Date; b=iSHY+hDhFFNZi0D22GwPx5Q+uq++q1uiRqYLPyKdVs9vTf1HYg9fNqq/tRnc2nsRL6Jqqre+DXQ5Rivd6ITVaNQwH+c5CTrZZmaAaRaIaNTofRe7wnxOgxe6Nb6A8P2v+zM3Wsow1WXor2zldip0DxCKJOqxdJgNq//J/r4Dx/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pxocx6K2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pxocx6K2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0A6C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763907113;
	bh=5GgEu3KT0Yv65i1SWU7QiSMJmNpZ6ZxiRva49V5lNZ8=;
	h=To:Subject:From:Date:From;
	b=Pxocx6K2dpFMlwRxnx21D9sbaSaW+HUi+d8F9U8BR44fN80+yZje7UlLD9hu4x1kH
	 mN0krlTemSipnKnJqluMluoNgPt1Fk6reiZAMUZx/unbn+LLsC9wUAVvg6oK+vt+Lf
	 DD5sXJBMIZa/deMZNn8XGpt4mVwI7U/0iA8z2jLfLRAOke3fcg5NKppMbEVcGVkFKp
	 GBmeSJowUmrzrwLP0Q+gGCDegWJMcWn+I+xUhNDeKXZYm2qRZIB28Y34gWyTWMDdu8
	 mU+udEJd4e6K/El8bWQEIe5/nxW1ubynOVYgjdBl3Uld8aWQvGPiPkxSQoDKZle2Zj
	 1bDokUjO/OR6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D79CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390711358.8005.7366848368909521685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cf01a928c31907a0611e0c35f030c50f69bc759f23901cce74aca6b9f22ce4
Date: Sun, 23 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763907113
