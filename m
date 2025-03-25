Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C2BB666
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742865594; cv=none; b=q2Gb4wkWxsOQDpHrQ7qNVN6XMGFmM7dZgtY/NNRNTxHHrbHqzSmdKFEuvMqTLlc5yQhb3wfr7M1aLTFvR8oYQULlb2ARmRHUSBQlR3mPky9MzCBLrY8b2uzJEgGnhsMZkSMRSmH66i4tKdEiaK28ZhIv3MjiA5Cgz5lE6vP9cmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742865594; c=relaxed/simple;
	bh=vj8H7ptFWaKLp/F3Wg1bT61yoelz7LI+5mU5tPvoQYE=;
	h=To:Subject:From:Message-Id:Date; b=r/AGg7KbmQTToQRmS09+rq6tSiIxoxWKsMap6gGyR0ywedFAlwW3BGqhQA8pdvb8nLt4jl0aPQCPjoqs3/jUUM5Xfb5JhPU86Bp3UcTI+2l+gGNx2BvcLE+IpnHRQW9hbb+w/XA8Q2cjS23tw2BKs5kxRK2pNpy0qpSBf9MjhfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDPDrUux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDPDrUux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742865593;
	bh=vj8H7ptFWaKLp/F3Wg1bT61yoelz7LI+5mU5tPvoQYE=;
	h=To:Subject:From:Date:From;
	b=eDPDrUuxO/32LGFNIqI4CH/T4+ZZZHvH6duN86S0z8sNFmGB0CZMcKw0GeJ9bKYCb
	 Oi9SyvmW3v3j21yQgCXzL96D36NZFjqIn8KSlktu/ENPwF3Seo0e7D4IbfGcTU2vhm
	 wzd3EGxGZ8zrmnfA7GariDWanmD+0vRKmcLMlXCstft0b0cs1SWL8m1kgznBaPm0Hg
	 02IvKFlxmEsBJ1iLrrfE5xTuRdjupKodgBQnuG3wFqoYEdztaUxsSL76AzTj/SbZTV
	 jiDbZeTDgN4SIBOWyevY0+O57HRoSmUHOcXr8rWqVCOlBatFyq24D5ZTLy+QLy1g/y
	 hH/JmrqjV0oCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021CC36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286559357.29659.1427252751307092325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3e4046844dd450d3b47834f475669d5bfa477a8e3e533718d0a91f1ffef9ff
Date: Tue, 25 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742865593
