Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B74366816
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790741434; cv=none; b=PRbI7nBGDezscJn4zDcgfDfkqX6v7WdocQTcygIRGYj16FgbbZ+yE/oBcvfzzs8OfjT5R99mKxl3D1H5gdp209G2+5ESQlt28TxqN6BR7Ud6bPpxKgbAbubhijwsEIoFphogZ/uyDBYjIS7VSGD0B4jTte3UlqkLOgusEHMcsEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790741434; c=relaxed/simple;
	bh=gkIznUEo5i8etcALWE/9OKAn3vpSm6CNUE4TXqHnHiQ=;
	h=To:Subject:From:Message-Id:Date; b=pESPtJGWC5EHAIZvWY0OeFV5cqUKJRB269kl7tK2Zi/dDYQbdpSyHLX/AzoHnp+tik557XWn5pCcd99YarYs5c+/G0VRRkJBcblN3i3lULXKL5k4j0Osia7lNqI1SQ7vIrUuN+DNQHtvSBQgpH6fxma9fnemNxvsV5uDkn13Qlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usdChlLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usdChlLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2712C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790741433;
	bh=gkIznUEo5i8etcALWE/9OKAn3vpSm6CNUE4TXqHnHiQ=;
	h=To:Subject:From:Date:From;
	b=usdChlLkqRdljWcFv3xORq0Dwc039uELog4ZxVsaFPdISJpHaMBLfEfqJLJ+zrz/Z
	 COWqxywgvTwonqZcdBxWMAa09O9TKHRdU7O9Xf8o7g9Mz+ARyD5nPFRSB1oi/fCfOE
	 FmDA86W0tzrF5SWktkTg0LrzKfHKgkpS2QU1/+ka7G6AkU9GmBH2ba39XSJSmBW+CI
	 uTmZrZiELjXOtE3UPQ5R4leLjfKG6E8Sz1n416BspDI1rOQANIVuKQCP66lbmFYUMj
	 WGW0LJHXn7uV/xjsiXrFtJlr/fb0WnrM/hgAr/U99tqWLqYZEAJWys+MkgWc5c5tX7
	 6Wrt3CP21ksLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB91CA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074143368.31070.15610287511272520212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1263400ed3c95bbc43e083c5eb38eb917dcad93092e1ddd89a95ff4e88b5bdad
Date: Wed, 30 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790741433
