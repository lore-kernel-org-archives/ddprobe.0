Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7EABE5E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749698394; cv=none; b=H8NNGdMAtrtbH+8/1b7BsVCfZtWw+zEW2Q2VtgrC1LMN85sshyxR0FjZ7Mj+qRaK3mvkJnutoUweXbtV/xyBVkSlc6i6nO+aJfs9Bngna2JYRwaWoWCQaAcPFphN5PrK18kxEBmx1x+PQs1B3T5rV4JA9ovMaYHGQZKREsCtSos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749698394; c=relaxed/simple;
	bh=Upcg//ZamL52JoWJ+l5r5TANvgnepwlRY/HVmk4ok5s=;
	h=To:Subject:From:Message-Id:Date; b=uwiSnbmJCensLgpMY156fDRBaG3VXcY2JlFa42u5K1vQckUdtdkxQ4c/zJjFO9RSlcQPxIFeATHHK5bITjQqhHnYQxNQmtSCX6SPGeyyKZ96aqmE9J8WUscGuqlUh4qSdr76bvFEN5L7DzkdQDgHLPzzFwJr5xHNKq36cvOyxzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slA06mS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slA06mS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C43C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749698393;
	bh=Upcg//ZamL52JoWJ+l5r5TANvgnepwlRY/HVmk4ok5s=;
	h=To:Subject:From:Date:From;
	b=slA06mS0ocF2sUrH3eFWlxAVxH6Qmfl8V/cUWpSH5m9tuRRNRXB4BjKhIu6Db/clR
	 FrSKtO3t5+4B5yentNcjvgjQWXzN7br2xDq1IiWZ62xiY1+l0F9sL4vBIGRmQBdR2X
	 Ish4Plcf5KoUk1bb/994L/0RnofZ2K/1X/8/RlH+YE1UJ9BuXf6Gfo2XiUixCoNqHB
	 Y2nBukKFXgpD6onVlVqjk01s0+fnfY33qbcdyDfyYUk4YRcBeZ4TtYUge6eqFiUANh
	 uK3AIbnLOL1JW8GbRCgwh8M2aMnGwlrmLwQROjx3SBL+86OlAYgbEdPAngtF3oX+Lq
	 B8i1jUESpSDwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B48C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969839358.17677.8428871746367229893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a110a8fc11e172f1c5e0bcf7a928c046562319f3a124dfbb20566236b155ef
Date: Thu, 12 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749698393
