Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501B1EF38E
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763226054; cv=none; b=Ct3PDOFeI2OttDIfnv0M/elHr8lLaoMuDpIN0cOdhNadbI8UV6EBHSWGRQXRDFnVNa6Li5+agb5O7IwALEs+ZGW8kgDgevn2VKhGsrYwwGQFB18B8YBZRF3Z4JOCliAq31mAzSWFeY3x5QBcIS52pnIqrG8OIzHzzGz/V1FyNMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763226054; c=relaxed/simple;
	bh=I3yGQ7ZMH1s39+vvW2dwbAwuk5VihKkWQN/mLrOx90M=;
	h=To:Subject:From:Message-Id:Date; b=EYhlKD8tpNS/J3glrCC/x/bhgPO/TVKs6QSJZCNzZeFxFIiQT16LzWzbZ5MonSLmAMLiHY+SBu59V8yW2vHt9/ZPA9z2fRargGMwNK8OoiMVdaCy/ZKuEQADPxQCfly1uvcfQvSTSMBIYZC52shuwimDxdfLaPV8v39VW9bPdpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWkQRSBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWkQRSBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52D3C2BC86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763226053;
	bh=I3yGQ7ZMH1s39+vvW2dwbAwuk5VihKkWQN/mLrOx90M=;
	h=To:Subject:From:Date:From;
	b=cWkQRSBsywld8rienlZnVRCCMkSjqTnUz1GlDEwQWcMu/SKHUBYlhBTbPJ8arH2tA
	 9be34gY36UzDpwBm1wrCjzydg1HqDKjU8pIrIg/rY0HUwvsrvF7p+n3BRH2CoYQrd4
	 je1y15Lb6bRBKbQArogz8eFGGpQi4VrB/GQEeswX4NtlSJcBY/No7Rd59eD2LbrWlD
	 YL7RqXA3zkMWmNZ68YrwHPV/WBwXBKeBbThZTylbNqyTuuVeSpvGDAF6jD/mCjqGUk
	 uUGo1gkMA1zdgjZCya3IaF1uJjaiAakMW18UDdhLZa/p37Hz8+ufu3e6JfQ4L5Rnro
	 LIGpioYeoc9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A106DCEB2E6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322605364.1112.11728966343502843933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3371e140ebc08e7ba387a213cd2c54e03c13b3cc65f5ecdf5e93febf0aef2d
Date: Sat, 15 Nov 2025 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763226053
