Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519EC1A8F7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787528434; cv=none; b=Uc5A/P+miG6vz8a6JJ6Q2we+3T6cyqPplOMbXvyX0cYAfDf9MciEvzA7X2WFPY5mytnIq5TFKF50T2myCClivgEGD3qxbdNzNSPHkXqaA0WouJAt2QtYGPjm8xdHnpa6zkdG38zZkT0lE3UCKJ/4ZeCHpGsWFrkSO2Aj1O9udHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787528434; c=relaxed/simple;
	bh=0kiywVH71qAWUYdAOJD5zrlQwqtdYo7xNgJA4EKV+OM=;
	h=To:Subject:From:Message-Id:Date; b=JaKOnLne/yjMPw1F0VPCvV4SzUGCK4d5JNfhRm4mPF/bY9N2g1FmspcYDSJHn8yEdyXGCXgHiBLHM8s2+VDy4LnTNJH+AQF3HMZPIdXxWYpv5D5wVxDtCVEvzU5MOa9/m9QmmgqwQZSP5C87F3HIASd9cxQhaXJj5/KN6vbeiSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwcQZwYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwcQZwYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA06DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787528433;
	bh=0kiywVH71qAWUYdAOJD5zrlQwqtdYo7xNgJA4EKV+OM=;
	h=To:Subject:From:Date:From;
	b=bwcQZwYXXLavaOl5e11KXTu0oFi2nOaZr2mWc40PiwMZ0HEM5Xt2ffTD1prVB5Dee
	 BkNutcUkNIan8maazslIbE8G133Lsc8cVgw2evTWDuBm1EPP29Xic3hcZvdms3J/7B
	 LL1/xmccERdYGkV1BX045tdxzUa9h8GnV04cYJnONlhteN1hqOgTELbYDwqrcRzPlS
	 I1iE6Tqc9w0lNMQtYeyKNSp7DL45tAzZMDECxy1vhv8NJhCoNuWLXEJ9u6WeM0uQFq
	 lX1d4jVy9huK5jvXEM08VzOr7GEYBZSoqWHmbDWDeTQXCTAmJUMf+JLdunqJMRFsq4
	 vQHfTY7eWTSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F57C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752843368.20723.7254087121568593967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ed12fca50c1cdab0e7706fffe10989f5ae841e82dee21c1102dcd0fbab53a5
Date: Sun, 23 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787528433
