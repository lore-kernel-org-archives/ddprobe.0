Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710C317740
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718684363; cv=none; b=Gg2UVfjwgrI+6Y1J5P8QKtyuvrgRJIPVZXWGDiKWgqU8DPykrdYCSI+GArYT8T6CaQ63lHRwwJjlJSoWbgyNpPvkCAT/jjVIBMpyRymNqoSGpNNan31iSpqVY7gvWfg7+MRedWBkZrtPlBSBrunBIAKssiafDmxB7VvZFMnCgDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718684363; c=relaxed/simple;
	bh=Y9lyDvBjF+NwdJWv0sH0dkPTVFitPlRwDcib+jas+7g=;
	h=To:Subject:From:Message-Id:Date; b=Yjad3TW1pB9VZoFJPgXkB3YqsSUre4xUkzC+bwYguJKdvgEpb7rIeG5e+hs9dg4WtPhbb/Hm+hpyG6kkWmaFaRNdBDKFELJrROB9J0ocCmtg7Gc9MnV6mEkBCslC0z2KqPvSWjZAPjNeA/JdnL+RHNnvxdOB2X7qY1WNkreDU3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS+o/dW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS+o/dW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD95BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718684362;
	bh=Y9lyDvBjF+NwdJWv0sH0dkPTVFitPlRwDcib+jas+7g=;
	h=To:Subject:From:Date:From;
	b=BS+o/dW7xh2hsz8InI1IOO3NehBPdj3jUyb0V57ZrJqGiQCWqMpgbRjSp8i1I5L9F
	 kiGxnUPlmr/OdFwBCu714BOXDlvUQ+FrRCrtW6pcpuMMXbegVgyXoH/nJB7jYQ9b7Z
	 AIOkYz/rm+ecdO/K7/aTv2gJx6Yub3Gmhadv/b0aflMXkdFGLbhOsVqyt3pDSXX6Ey
	 MS0eaw2o8xThnebPY/wmPDh0Neu/i+R8CFpF5lP5QUDMkmI8DL/EkB9FxyGJDnGReP
	 kCIohNgMLf4X6IDmLc9osX1PM/RHjrPPCvo/rRgRBm2RU2sPWbm0FLBDNNFDL6e50+
	 F3eqIBugP62lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C1DC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868436278.32102.11787288689968705477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0e1d04b7e10aaa1d41f4810afe8d66456e408e65e4ebfeefc6270f5876346c
Date: Tue, 18 Jun 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718684362
