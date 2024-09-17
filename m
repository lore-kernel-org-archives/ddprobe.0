Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADAC167D98
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726576554; cv=none; b=skdPklG2hTBepjAMDEPO5aaLi4SYxWlYYJjkC1yCHBNWZtYXLNNxZbbdxAQ270rTbm+Z/AmRXRPkC6zjX/LJsCB3lbKCn6ydNdBwh+G/mFCY79EVt/KK3udXL7iuzG3WSJ8plwraYJSZGEkg06AgKxxdOfT9/5mJoSYTR610LGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726576554; c=relaxed/simple;
	bh=rKj0mxfzVVuVbOHF67ykpG1bTfmBBtmSiQ5OMoCkKn4=;
	h=To:Subject:From:Message-Id:Date; b=UyhipHNTng1stXWu34VLFwdvfuNnMK4vimKU4ITgF9vbXdFSZe822aFr8Mvhyh45d2oOKqNZ5hgdAdjnj8+9tzP+rOZ9mZYb0ZrhQe7BGZ9Ri7TyXt7qaB1+J8Q6nCKkqGsnI4jKHvJWc6U4ZkjOLRggxP7x6L8P6Jv/RBg9TRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICuPkRAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICuPkRAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECDBC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726576553;
	bh=rKj0mxfzVVuVbOHF67ykpG1bTfmBBtmSiQ5OMoCkKn4=;
	h=To:Subject:From:Date:From;
	b=ICuPkRAXp74LZ901hLKjEDETDIo+yO296D/is4qe67kZQfXbkgmevyV+M2q4BhlEC
	 aGdAB3S0ywdLS4V3fV4EQ+0ZL8cxbM+Wk11NGQilgzi2cjZO1MRx0fH/A81wkl1ikf
	 XVIfLHg4K8tjkLjlJod7WeksZ3V4xDtYAJ9gKELB98n5sQwgvAiNjSc15mJAh4hR2f
	 K/Aq2MJHFJLAuvQnWv9C2c3jX+rVLJjT2+AbdZzykp6NQY62D216I1oAo7Fdj6hbKD
	 aNHVUrv/s/BCzIPL2kfBFsDMko0tvmVASP640mdLhWCSKykvwUtvQXf2rtDPf2VtHF
	 XcLw3ft3Ayeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B343C35FFF
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657655362.9517.761111049122848600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e5f6544a8be5859febd60a5be54fc8ee45ea8987107e0e58a633c3a36313f5
Date: Tue, 17 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726576553
