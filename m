Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231124963CF
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789602034; cv=none; b=Kpy7H5hH3Olr8Ux54K7anMxmAyT7TRJ/+1O1qhZjKDJQiRpaiBni9glSJZxqdwheu+CVFViBBDsKR+8xrLaYrualEt90xpkqee6q9avIZt+zm4uIrxAX9GeuiTmwlyLuejIZAFPhYGe0JZfn/iSe4btlxjS1teKRGCC+sHpVlh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789602034; c=relaxed/simple;
	bh=ZlJZUsZ3hwh+r0BWAZGKTh44bjBHmfk5krF/4h4LQks=;
	h=To:Subject:From:Message-Id:Date; b=np5ULRNsoxim4PQhW5S6zw1LYDKaJqFzYyqdlk5bl/E2CNOsPezCsS/Qqyh1y9GcdMXZplFgxTM8Kfqw96XUhhf5ti6qfZlGQxfs7rMjbsDUFqdtBnkrJrffaUAbrpeGGTx18wo/avZsBNsx8c/TahK29WsLRmzOPFodATqJlus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDArL1v2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDArL1v2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02BCC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789602033;
	bh=ZlJZUsZ3hwh+r0BWAZGKTh44bjBHmfk5krF/4h4LQks=;
	h=To:Subject:From:Date:From;
	b=tDArL1v2KFqsUe+r7M1sQWvYiRSzu11ZRLky+ijKHQuu7VPmvDY2k5ZDq1K47/KDQ
	 wpCvyo9+nSyELyz+94++YOLQjYLbyuhDpEX4aH/Ant5vSbcY8P/L+mPpUQAZpaVZaL
	 LxyYA6UMlQ7m9xRMVr8gvDkXXNjirI6yl4If8TGKL6ZTXjPSRNmb0Yw3i/TN5Gzgg3
	 trAZ0BkxCZCAPYCaJudRR9uVxrgKLk+h6dcFQ1Xh+mjn4GaYk4ZUD+DjSsP70ti4Y/
	 BtJgqUxYOqLmergsTSB32dWSKkc8OQaSKRikWlW9QOoyeG2J4l//nEaQWpsAu1mkjC
	 MJipPH9aJSg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD462C982CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960203370.3587.9067687573571204080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1904d01f94a98dacb8ac8f0e2630c4c9e9d14150524be632d967776e3d87edcd
Date: Wed, 16 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789602033
