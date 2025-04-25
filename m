Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4031C45C18
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745545194; cv=none; b=jb8u/3hLS3vuTpz5y34G3pzmrKqi4itbeYA5V4AgSG8Vlt+UCsPgG/9baQzhn3UZjC5hFRIvnS1+wMmUVVDAJZX4MEnThNofKFd37d4Veo7gB0Tvna6tP6dSdn7YFeRfne0u4641dXGR1MPu0UtGPu2TVQimGSpDWpoFtN0vsFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745545194; c=relaxed/simple;
	bh=xW4W1XLNf0SORIV6yXY2NvjAS/RI6vY6wdntu5K8Qw0=;
	h=To:Subject:From:Message-Id:Date; b=VwOFDMLU1IYc9EAgSYmLSOMlclG1r5qnwMV2PxhSNKTaH0+DercyiPhZyzZUJufYuqdxzrdtly9bYeH77Bw2FgrJu51nvLEf44KVUDnlcILRO8czFx6qy9URUzxcK2Ge+Eg0Lr4cmPJJXEh8BrDvLBDs/pFQA8PqkmX9ZPlyjdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ip1b4A7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip1b4A7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E404C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745545193;
	bh=xW4W1XLNf0SORIV6yXY2NvjAS/RI6vY6wdntu5K8Qw0=;
	h=To:Subject:From:Date:From;
	b=ip1b4A7X6QEc0badOIF8FR/UjXhhgEEktDf4pspZthvQbvU+daCGcMqMjrDqlgRA2
	 xcMDDBiUGCvo2a3+5EFkrPZlPrZF5EOolV4SEYQTJMXzjoCoRw0uHZ+ecpZ/Ny5vNS
	 yKVKmd5owIcTuwQrHB252CZlEcWFeEdukBDOBEIQ2/kqGczGXLEFqqecECAcr3Wdry
	 sSBPb1TogH8ToAZ/NA6l4GLFEYlepgr33Dip1clsHVicqzrbB6IX8KJ5E+w+BnQE3G
	 8UpzNkQ0oeY3tJzEVBdyujVLn45vtIBa9SKLFeB7nPphH1/VFJlNyCb58Kl3R3eP+E
	 H0OW6XIoaS2Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E406C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554519357.25081.10927499560221076710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb73574a3d891fe41e861d8a616fd2c9a8be8f7a127153848559092346f8e9b
Date: Fri, 25 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745545193
