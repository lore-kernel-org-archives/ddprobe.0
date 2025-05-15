Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7AA158DA3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747343994; cv=none; b=QTt0Ydda0KHMDbdyfCk4FIY36fg9BAcenGIua3PqQ37Wc7ZGUCSu511FKQH+UuIYfPilpCff9Kg9QQAIMSW1CS8cNd14jC7QqDEGIjzYI2ea4p7Q/k77lJEjSZmSg7Blrz34F8c65JLDpPhRfvKrwR8z4iMeCC8IIP/xR2Jzfw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747343994; c=relaxed/simple;
	bh=ybHzTo4ZcZYmz9zWqn7159zRFEfpngOPXEOai8DNvec=;
	h=To:Subject:From:Message-Id:Date; b=HIu72H0rDz5UYH+7VS0I2E9spdNVP9rKyupNFchO3cXjxy0HXWemyJhqlcBnMs/yaVCki8/EwgxtIedheVqbLOhSsB6/DDJaSjCPk7PRUV1rhSsh2RahLVHdnHj5XjMWxREQ/avLqRqvg7Z0Kj5VWzTTCC1SqeqqxPvnGXYdOWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqsv9NbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqsv9NbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6160C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747343993;
	bh=ybHzTo4ZcZYmz9zWqn7159zRFEfpngOPXEOai8DNvec=;
	h=To:Subject:From:Date:From;
	b=Cqsv9NbNE1cfJ4KB1vDwm3erJRegWX1dT5eegadLfl5ly6txaf+pfb7m7CPKQgT3u
	 7b35PENqWFIKctTwhT+HQug08XUzGhJY74zb4iADSbytaTF743MrIn2MiE8oj9B9rT
	 SGTU/oN13m4dCowMTOpO8MecD4Kg2aRzEXJh5Us83oK11WZwmRKsfHFzHvuzAoCPbb
	 AKy5x8qfj4+lwbbQAJlF7Tj+G+NlyiUUJ7vho8TlRX2k4dPIqvU91YautFP8vcLzp0
	 PD2r79Fyl+l/z5n4tjkkTIjqen8n83HMeW4W0fr31UN1sfs+H2u44VHdAbLVgJ2uAZ
	 UPtqbbIbA9nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE5C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734399359.10765.14107614163206293980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50df89ca60f8dcb7d31da7e416ef76632da95be8a34551b8902490976db8ad69
Date: Thu, 15 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747343993
