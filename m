Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A24A1DF987
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746108594; cv=none; b=Y2fCHF6QmRw4Zy3y2p0Zoab5EBCp8HfukQBmT5RgWcB5NuXJ/HPxCHgsdc8yAfvhaQdmF0gKBqPfmN0hOjIm4t179odWsR+137tUSV0Mr93r80MQnDvplVfU2pxvYNDdzQemfCG5IuNvoBnZVo2l4fupqDX8XnZfU8uzrHy2qKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746108594; c=relaxed/simple;
	bh=RQbPd9V9WQiXMs5rsNRjlMr4YEl8Ibst+cxDoKVqxxs=;
	h=To:Subject:From:Message-Id:Date; b=egfYejCD3TBO2Kzk4YWBI1y1Oi1vkdrGmNmLoxDvzLuAuxFe8hZx+iMMsTGQ4flTBFFM3lYNl3TAA8lvwl+nkl1kDkXhjVYHijgPWHoa+OQ9+AVwCeuF3uQDDEPzgpMzCMkaSBH3X3dZH6P2WOsdm2wzRocs04gQwe5N9Vw4tf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4tCKNit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4tCKNit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D917C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746108593;
	bh=RQbPd9V9WQiXMs5rsNRjlMr4YEl8Ibst+cxDoKVqxxs=;
	h=To:Subject:From:Date:From;
	b=n4tCKNitQTCR9OvEP1r04T2GlwoCo/fWhQx6sHnL6cTdDHg3VNBeqvXrudYtrx5Bs
	 yn7soFNzrBXwBB2d0hyVrndWFWkzbLvF76PIdd+ZGHuEyVDLNcvc8xcodNiH0HCEb6
	 HFV2aj0hhtMkk555Wma/2p13psEWWeleULtKOpYVhY2oj3ISHw54bubSftvvcG3IaB
	 5hbt7fOXXey9SdOV1dnWg2PzngtAXw0K+NQ8qe7acauOlVci1vYuLDhIISaIZwWpTe
	 Yo95Ujqf2SsCPA8jtEi2ZLuaEZslV0tXXpnsWVHO6jYUOG/QOM47mvBJReyrMuMaLT
	 l9hk7wpgwj+aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA16C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610859357.11650.15797686095824809532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b12b9f7c002dcd93f33436aa3121b62817f1b9edbe7947406326652d506180
Date: Thu, 01 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746108593
