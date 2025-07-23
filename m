Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B5A229B21
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753297194; cv=none; b=gt2S+0f9bAJ6eeGEIBnejZCdexmfJx/FdC9nbgekHQuqQuc4R/9DFpp60VUzvpMUCQjHXWulBoNsFr/ve/wdks9YpA1fylvvTuygBrhVPa8+7vAnhSx05MuLxdHQFhKgjizqGV4C5lUgXoWyELUOkjfnpi+XDViPhzmJIQKjfec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753297194; c=relaxed/simple;
	bh=A/ZHOwALm/nGqmxgTj7uONQWSx50cBU5/e2Yv5PN0y0=;
	h=To:Subject:From:Message-Id:Date; b=QdRz2rRg2vQIcaJFKJfIALzGxgB0oW6bPygwLcieKparv7aUOYbGjrkQGlJPeS4L2AE0RBLp4nuWxNIuRyiM+GdjBNj9GpU58HIjOs7QF4wNMkoWPm8pMufZVvbDc7G4sAHFCB3Kx0U2pDeqAjILU8lgVCoj4Ng40sc6nwH1mLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyRIW2VZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyRIW2VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC7EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753297193;
	bh=A/ZHOwALm/nGqmxgTj7uONQWSx50cBU5/e2Yv5PN0y0=;
	h=To:Subject:From:Date:From;
	b=jyRIW2VZUmui2j4xG1Okx4PfZUAryxXjX9xORrSSINOL7T/QipGtDEULdlbxS/Dh0
	 PBSF7JCQG71Z82uws1G/C8qtB4NwYetrSfzck4wGrv55XMn1JRdksb0e1D6Uuk369y
	 /i3V8Olc3KmhB3LBbF1DWPTx7MJUwfuUNbFVSHkwwsXeNBJyxF1hZZlLWcjnohqpwK
	 CEMTw4TNpeSDMmQoHYmyfnoh/cNDuN1t46BchtmXttangj3dFaOP118Z/tQLnqdz4K
	 zNOSyRZCGPGUNVDZxSFJfVNx6hYYxcZiofOcMfO4sV0/VNLiZGpybIFTfoKUzWnod9
	 V8NJfene5epCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9022EC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329719358.17712.14707886276349237879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e8a114eb9b9f05e4f81e323afe813913decb09191748e0f0a918dbe412c85c
Date: Wed, 23 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753297193
