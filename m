Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0E32FB3
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705798696; cv=none; b=kNyMCW1Cj9wxIu6L7tcmPLLedOcmFtXKTNhstfAjwrnJ999SzjRjSLKRLidU9ltoChUDaXCHEGPlDPsHWM2GB35Y2Cpfh1XmkzrlE3zRfLifJcMborXRjirUraxKGUYRSfG4G872dI3dmazlu/0OLkgKTYU5+zgcOVGs5GpdxNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705798696; c=relaxed/simple;
	bh=DIjdoJdzG92tPgBUiYA3jFalhNgVc5iRKVBFQzzNzvg=;
	h=To:Subject:From:Message-Id:Date; b=A8YKvPtNS5wlb9wZMQNoWh9OqVszu0gmLBrWgu9HgfjSJxVtqvnzLiUqNyYDAAu4KmwXtRGDcm4dviJqBh8DT6FhUsUUAzNu4ngPBImSrj88m9KFfIabrOI/oosHT1p69R8RkQt4kWzoAGLyj/xJsg/niBfVioWUsrj7LVmCE0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5kyZQE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5kyZQE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7487EC43390
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705798696;
	bh=DIjdoJdzG92tPgBUiYA3jFalhNgVc5iRKVBFQzzNzvg=;
	h=To:Subject:From:Date:From;
	b=s5kyZQE/cFB400SoBdfvaV7khSEGt4QsGz8cNNNnJILS2rq60/5zmQinuz5cVOlG6
	 IuQA6JsR8TI5OHwroDYr8MwnUdet7WhFG8Z8PwnTQDSGAWWslt9ENLoEJsm6XcfOgx
	 eEHZ9JZ01Z8jLhl9JRkVy+smlbjtlWmw0h42QlOScuYb7CWBKnWYsUnu/XacYttpjp
	 88Ozf/lKSOT4oEXq3yYHd7vxGaP2eGpVmaSe0eu5Ii7TOZxxD1Mwz6VC82FHAPTc+Z
	 eplEeghn5wbtyal668zkRkcbQnK2yxItYwu2+rOHYV9/xi8j0mBltI2zj7BxeeZg1j
	 A2m50tr2g2Gkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8D7C47258
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579869636.32333.16399426871592469025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cbbdad78cfe7273da4223263662d28afb94b76d7a92630d7479e95124c886f
Date: Sun, 21 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705798696
