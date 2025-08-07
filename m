Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B821B7F4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754554794; cv=none; b=RsFqM6LyLbcsgMTFkIVaGeL1iXugTvgUD/Ufioh9XFOyp6KE8t3hBZmGseyhgDaojFvS+EsOEm7EwAW8SNFMdkfAlkI8xmspkBB6UhgvwqABbiWtBugH443lIZLNIr9xyvL2UlUIZXZDTZNUlwPlJOk9tRszfjCDdK97QczL/Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754554794; c=relaxed/simple;
	bh=DK9ihiEbHhKy/as6gmeJaEsiTerXK800L4vMc2N/aT0=;
	h=To:Subject:From:Message-Id:Date; b=DjJlz13jXlih1FsCYyyUSot9/8nynrPFC6J3Qn7gEo+lIshLEPQVdg5jJk72699pQiK0s30Xfo8Zj7zKiX8GAcgmTLw/59+zsgggqxvuOrfUCG0FQspnoyKJ+5+0Z2NO3WhHm0MMtkVxoHrARc25+05AtPLYLDmXTnKvS/QDoB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k64HcMmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k64HcMmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E17EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754554793;
	bh=DK9ihiEbHhKy/as6gmeJaEsiTerXK800L4vMc2N/aT0=;
	h=To:Subject:From:Date:From;
	b=k64HcMmW3y3LYefspGDAR2Vvv5KviojKQTko+Mn5P08hO8wcBgubUi2HYn/y98TyS
	 2cSgBd7SdGGJEytM0fs+BqvvwJeHwwV5KO+L2hVwYb5Xw35LyjYaLAgbbs2E4sEwGz
	 oY8KSjIN3rVapJkhpUzxsXVRxz5c9pFFHMDcIt7nn+cD9EA7yoRi52cs7ydhfQBFsC
	 TcJRCiA6FA4CU94/srHCnUqEAx0blblkQCz0zFNvakJAW5STcuG4eKtqCBmz97lwhT
	 QcW7P2NTJau5A/dDqMoUC8dgxaTbf72FzStyuyPtxL52d59c7yECyviGXXUgpXsE9n
	 AYwAuwtC4t/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB1C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455479357.28726.16757710403517499942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d56e78e0c2fc53b1c4b484cdb99a66ee459d7f80c0cdbbd3d4f06bc1821a048
Date: Thu, 07 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754554793
