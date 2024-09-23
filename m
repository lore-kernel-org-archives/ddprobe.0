Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BE13F9D5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727126754; cv=none; b=ut701mU9h37/96b1p9RlePCf86K1gQ+U4hSsiFYt7lgBTRAHkG6dpg+2MGX/OBNeBfuckRDRrVvFmyuPiT2eLklTkt8cwNhy6UcYt8sL5xRfIVqNXN0LTRnZGlgtMOcZk/FEBHFiq5YoQITl3E36XpxL+MMgiDqsLK8SSlq831U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727126754; c=relaxed/simple;
	bh=RKvtSVXm3nzqZz6QTBxhYC/ZVa5eQ099xewaXhPYI2w=;
	h=To:Subject:From:Message-Id:Date; b=UCK8hBVdxE/9BMlDrwfTHNaoiTieBRTP9F5ZFtFbMPXcj1rY+ortUNpctc3jWRYcfgROsMYjFfkPsj7SAFbGkXrDJ1MflBTYB2nv7nqZW2el8Tx35XhQpI0tUnTMB2bjtOgGoPgld5m1+m6y96INoUyRpFvvmx3t/nNt3iOZWtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEXhx0cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEXhx0cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB0CC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727126753;
	bh=RKvtSVXm3nzqZz6QTBxhYC/ZVa5eQ099xewaXhPYI2w=;
	h=To:Subject:From:Date:From;
	b=EEXhx0cq1rwoPtgyYKgzh2ElAY08HbSVI+0jq818hhQvdpRznZx2G/IQO2F9ZhJTO
	 hkmRVTm5KJp5P69RegzhZ6+x3vxzR13o+235+lf32ejVpVI8txwfrtjCm5UySFyskr
	 2gvQq1fDohxPh4exNcBXLm9+FXhFftpuB0UNUhUP1s8kF+gHzYz6a2Kf811QuxNHhN
	 RhvBDcNHMFm69X5RjuBf0i7/dq1aihbPJWNDUlNLDy3xrpiPyoxvrmfWYqNVHVjkAE
	 s3+kl+vF3xkzQ7+wrj0IMn2rKXnrvGFwUzkgvyL1E5IqOfTW8VTxMCLgE0GMyfgWLL
	 jkBiVKYy6hCIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF51CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712675361.20435.6657970773999100527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7feb3237419d926b8e4c5fa2084c63593e81ffe7a87a90a957861273438b13df
Date: Mon, 23 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727126753
