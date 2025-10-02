Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FC241139
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759406394; cv=none; b=PRFkSjP/xnku16f7ZY6bk12h6deZND1C4p+8HFfgQyH5ah26AgV3ARPnTuOQJHKRvdEs76WdC6VjgChjTuaKnthb+MmV1C+fM2/F/UV1NPTN+G1X9vAiCXiYwA4EDamTGit0B4vmJ7in5Dbyu39mIzNBPAarvvIiG8MnykKad4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759406394; c=relaxed/simple;
	bh=sXTe9g+BHvr1xlzuHcVh0IB4tgW1lI8XrBj1RM6MOiM=;
	h=To:Subject:From:Message-Id:Date; b=qVJ5BASqmoWQ4G2SzcM4nP09t8w2mDrlKnXAojn3/jwqZxM84RWxkEC+sh+JDBQld1kY7Z+XHL5GWR3wRnjKoq8IQOvdmra5x7WpROkzEtYnjNFsbEETs74TYJ8ly0hGkbmUXIOdxcb1gZ8TG+wlWKOcldUKI1KYjYGTSUtHAl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4SojPIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4SojPIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BADC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759406393;
	bh=sXTe9g+BHvr1xlzuHcVh0IB4tgW1lI8XrBj1RM6MOiM=;
	h=To:Subject:From:Date:From;
	b=T4SojPIE3gGo5+s9CUUey0ipNzQ+nLTpJhsRv5IkSZFg8SNAsEu1tTkS5Ie16mFPZ
	 c938Rr7H5QBnLR5d0Xq9nPEa6I/nxB8IOpTdCn262a1xeHkvLJifaLc4Fw0NfX5m1u
	 8M5FmBz2r/8R1GmzBOzebgEryAI1Q+RJJtTO4VMSkg76S4tiyoSRftw/nMCvHCUazD
	 MWrVCOeKU2MAsIPRV6sPD+eI2zKyIyMdnDNSu12gEwkmKHvgWmI+jt8IJEi8qE3jH5
	 97vrr2iW70MoAwfbNVZTeiY0FfjXAOz/A732cWQcVOFnGjI3c3OOMYwhFT6VN++C/7
	 XZCmj5Jxl9SlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F2CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940639359.1609.18203680420996971385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1779238a4ea2f5063f6665d4020e52824faad94538a90dc4a1a56e321cfbc5
Date: Thu, 02 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759406393
