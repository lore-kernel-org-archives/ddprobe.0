Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D81F36E47E
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790984434; cv=none; b=Kw9ugUe80LwPceDWd1wEpgIs3EBf65OGQkK0zIv7Q/AVxLjclm/RwecS0foXZ5LEtKImn3qdgJS9j1tXT0HmqmTLrC7PegOvp5gBaL0llj6qLbiTC9WHb3S7vujTlUXDgRM/97wfsSWeg5q549laCPPP63G21fD5p/6bEFsOQMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790984434; c=relaxed/simple;
	bh=c78OqRxr+ipLhFSpEm64XZTFFm0+q0M+uP95JXLKgzc=;
	h=To:Subject:From:Message-Id:Date; b=brDH2mrJXnHGPiMD9gtE1NKlk+zY6TTzUUKRh4IoIkLj7PG3UejYw2mcM2nU8MfrNC8JHxXZMGu2abFDrthXfU02tvksnXbJiCBt+4cWRp8b8WJk/f3TU+9LPhmzVeHMmsmke+gXnexqlymdcQvp8uLZ9Satp1uQgkBa53vXR2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFHuRieK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFHuRieK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4BDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790984433;
	bh=c78OqRxr+ipLhFSpEm64XZTFFm0+q0M+uP95JXLKgzc=;
	h=To:Subject:From:Date:From;
	b=lFHuRieKJBC6fOUOkpT9s23j4zjwKQJGMwU+9GfKFrxVON8JmJe1f36cfiSxge2TO
	 6NDMgL9AtPsVLT4wG6DSgV1Wrl2D/UTbHpp2EDNkq8h3VZ1l5yLn7K55kQ3LrsXKx1
	 DsW1L5479GR4VG8H92kAl2bsYASuNccl+Kbp4DZMnjUG75IugK1IA1rVHYd/m0y9mc
	 gCPilyQ1cGM0hsArwkbUBU5E2NUHZOO1ncGtlEDXJjCDmllzzXzSIzrJz6BTsy407W
	 2UyUxu3ORP6qqGk2s3puBpMefLGr4DiQT6/WJdvsNxCh5j5YN76wGvomENsn5BScMf
	 Z1PtKRAOd8pyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EBCA5FE3
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098443369.23417.6829615269679676690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be0400da3a876398a4028bb73acceeca7d2d3a7c52b1ec6642d73f137dcd50a
Date: Fri, 02 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790984433
