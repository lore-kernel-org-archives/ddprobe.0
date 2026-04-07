Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A82E392819
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775546734; cv=none; b=WmRzUwIGFPLMDuPY4z11ZJU9DgQKOh/On6SqLaIGBnCGrerjHdYDakTyQYor3tMjzaDOm86EDw5mApLjsS/p57svzCb47pp1nwbMoFKqWSdIz9VDdbDr1nyOuUfS2y6di2qjfJIph6AlkYVS/bGrFbCsPHPKsyCdRktltFtE6Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775546734; c=relaxed/simple;
	bh=/N8Jplu+ys8v8KLpk6aydD4Pq+ZRMhivmlYR50ogkKQ=;
	h=To:Subject:From:Message-Id:Date; b=f1Pz0GA7UimBHTl4PPRUoKo+wxGfwY163W2+GYQVENOGOqYmrr1PPq3JHQt/9bgljFRBSFls3x9zLQEiXEMUIxjB6Q6t3sapWc52NRKMvI+fsqasvtRkiGby4/vYiIeqj53iFHyRYuDa7QYJicWfKxiLjDF3vJlC6RpZ3fryfLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHUmmlJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHUmmlJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C473DC2BCAF
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775546733;
	bh=/N8Jplu+ys8v8KLpk6aydD4Pq+ZRMhivmlYR50ogkKQ=;
	h=To:Subject:From:Date:From;
	b=eHUmmlJ2I8JGimhv45FXdFCcaw1DTnuJpWTfyxHxKeT8afXNffU8+42CFIrYP0KiO
	 KRzWJRUGUa/PxKxvrv9tAKwvmZSAo1I3t/H/1tY4M9IknLau0ueePKNd7Wa5n2Sg6m
	 3CviajK3VrGNKo1FVrBVDTMllhYxFhTLHKwTWfuocQ4IrzWxijBsIA/gaephI1NofD
	 nf3bIThN8i5UVYCmIlaz0bKx0a2iM36dc/ku56gZ+UHXOv5mRoVkm3KBp/iesNmlvg
	 +VCwwgr26Ual+eHUBNCo2DipAcgDc+bRLGPNJ6W5zphJzi5KJ1kOHgy2lHThwvC+K1
	 vuul6BJUYe44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B640DEDB7C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554673373.14626.635330957923938403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf19baf3029f521e96fd7877a39b1e51c594932904d35a343e9ac67cce340a42
Date: Tue, 07 Apr 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775546733
