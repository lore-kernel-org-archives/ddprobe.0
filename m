Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561253232
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737755154; cv=none; b=UsB7lCh+yGuwvYYbwb4+hY024KjG1WsCKxrkXL9ZInS+azieHEbIGaClpYacWtEY6W+N6OGokg/bdRTbhWoiP0Cu0G4ouNAaZW/koARVzV2E/UHiqQer6kcNN/SbUNOsfAhUay+TDV6m9uLrz22PjXda3nA3ttVgzCFzzRQqTFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737755154; c=relaxed/simple;
	bh=wsn2HJoxivf/Xr5ex1RkD1lCMqHidlqYSA7vNV8kLp4=;
	h=To:Subject:From:Message-Id:Date; b=XoXlF/NqQzOlhwe+Tci1AdOvUCA37wDlIkPAmyZkJjt9VxUW4BCcifnXir76gwcxc1YKSU2tL0HPVOLMARko6zISIdcJyfH5Qqz4HYPs7RAE2fm87QTBihXrntFAe1yczDmVHpu6RGE9An9g9Nj/xcNlBqOvcGKEpJKKJFeDc1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeY6un7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeY6un7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2231C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737755153;
	bh=wsn2HJoxivf/Xr5ex1RkD1lCMqHidlqYSA7vNV8kLp4=;
	h=To:Subject:From:Date:From;
	b=aeY6un7UnbCIZdYR/ZXVsExuAPeYs/JGvSKBo07yvnnE+5vgq6yxVNw5xon26XeUu
	 eWI/+zKgnMIfV4gzkJGy/LHe/IAb0bAeu8q8DAWbyRfy4l659PA06Yr5f+6McIb05J
	 Df0xSqKs4sljphyD7xhf+n1JcC1ckBcjsMLHKJn+NPZuLBfuUKwyHfvRUOftnOS6na
	 K85lTFYgB1Mc/JuRbuH1xDXC6sP5Yjo31kUlI0y3lAWCHn7waU0KDSifqrdj2B1NMN
	 fGFOMx3pOt2YlDQHeLw6KQXstqQUYpwtrkIk961dElnVZASPqQUS+Yo/AKHHL9lNj3
	 +6Ev+TVKWUZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B1C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775515368.30167.4776142909648470869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d0e16deef8bedffebb4fe66a44c87822fd50a73126b8dd1724383f8c20bc2a
Date: Fri, 24 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737755153
