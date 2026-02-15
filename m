Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F5320C490
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771118694; cv=none; b=gHqnluAzX50vIGSfs4mqtMPOEJRm2jHLMOMllqO9ZN92bHhNWxkM1N07AAOe+cwAgWVFREXnqCJ/GryTmObTr/GStcIffQ55Y9pytaUFxbU9iaM9NwXuQve8Im6/I8gAqjHiHEJekZoxxow1ZaBkeDfMGh4R5HWk9dvpEABdGwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771118694; c=relaxed/simple;
	bh=HUn801Dwr6fg6EQImPPg3tIk5bjZ7/HxJYwEfUOsoOM=;
	h=To:Subject:From:Message-Id:Date; b=bzeneGWzne4F5Ot6dCOR7+615W57ccYwKIC/W05TuHOWBKyIs60R53eEW2FtkwdNH6s3k2hFCutOT79hYXNvnWLUEflh/HLnu7XSZfPeKDzpHcFGEDhAbYwk5fj9F4klr9GLMArZxBB3n/KXSEZK6cvKMCRrDMh5swhT2rFGatU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8MRT/AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8MRT/AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C189BC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771118693;
	bh=HUn801Dwr6fg6EQImPPg3tIk5bjZ7/HxJYwEfUOsoOM=;
	h=To:Subject:From:Date:From;
	b=i8MRT/AHIFZcDSwdvLbM5YDyryQ2JYN6N0R7BPv4nLAUARIK1XDfUnGJ2agvHnIeE
	 Q1hoUSMIXa01698i6xJr6k/gkCnqebQWNewLsF2wJaYp0mewVMspTsTY0YMXSHbyGE
	 2I2r4UrFvabFbRQSgbB6h032v9mXgVgVT7jby8BwyH+EoOjDOROkRYCgENjJmBDZBV
	 GiSzzKDmAq4Q82J7z6gqy4FgGBuhkO+4N8MGYb1953oHtTbj4wm2nbE7hYXcR02q4V
	 WP2f8XhptTCppy80FOZ8oqzA3VWb3pIHkAgEt8fOIHLD0Q8/zCX/UMRqJ8+ErdT9GK
	 ScemTMNZsr+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF2EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111869363.2812.799571923502324918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c91df2062f75313bf1724564ecf7fe8874f8d199b0afbcda9326ba37af3341
Date: Sun, 15 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771118693
