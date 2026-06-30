Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41248272816
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782845914; cv=none; b=kkTo6GefffsuabHYr/5QsXERuMxJv6czjlISALUw13z9F37p1bEh/6h7kDk6CNeT16Tk7YRa43zpNKaorSlNWzC8cnGdYM1NX8R+BKE73YZz7ydIHR3VjmYy/z04caqmflRaLPGXJciy7rQRiU+ZwqANxpNMp/M5MPtx6WQKTgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782845914; c=relaxed/simple;
	bh=a5iRZ9AsEBLImSWli6aoB47tc8ISpl4BjK0ZYMLPPeA=;
	h=To:Subject:From:Message-Id:Date; b=oTAd9iNWutYxHYeMaSLYpPhOVX1ACL5KxBhYcoGopTDDsQ7CPXPC5WOpuph3tmPVyjUXbzcS61Neow1Z72I/4R6SDOiViyvtQGZh25csZ2wsou/2o3xwZUeWN6kr5QXI1jfVoOt+rA5p4LFVEXb1QDI8Y05zepJ7BiLrRxqUkwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAvzsEJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAvzsEJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC20C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782845913;
	bh=a5iRZ9AsEBLImSWli6aoB47tc8ISpl4BjK0ZYMLPPeA=;
	h=To:Subject:From:Date:From;
	b=CAvzsEJoZMzcDMc06UiQ1OvB/7q5qErGLqfSWEeyuf9xEeS9vLAeg6mOYDJZxuSps
	 LFpZ3GwIA6biSHXv5ZHo0P+e1RUKIMMNJt/YAdQ/vumntLY4gydgsh8QE5IQNj8zhg
	 jv9uFuK26UJ56Fo3eeDZ5fBccsiyAVG7UPkmGovNsU5fzUwRAxFGZO7X7+HHi2ptJ9
	 w+gIdvjgnw4e3DNybhQxEka0tXHz3sR6Vq22qQV9eEUE5TBMPneoQv6nXyGrlCVRGP
	 6HbcjieHIY4coNsydLxTnLlcdbMDhke/tMHJG43zNwRbwxTHImmnX4AV0XS1h1k+M7
	 dyht3vqe7DPWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD9CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284591368.3064.9846341691610663445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d859488270035dc19f0bb5f3147b3d7b222cf0f90f05a3036c92acc5923befc0
Date: Tue, 30 Jun 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782845913
