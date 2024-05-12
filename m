Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F95A5028A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715542343; cv=none; b=kI3fRblTPDHzoRlKepJ8L0YMaIUQZXop8Kr55ShICCWQRGmtyNfPfkq9Al9yyZ0mLV5ffGaUSinicwWibfEVo7BTJIASBigJqDDwilH34ylpX7joTr2mi8gRnj0XGB6cEk9yvCqZ+6BFEug5Atp6s17skC1oFYD+WLHi8h/ySaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715542343; c=relaxed/simple;
	bh=j2ylnnHKiQXVJ5bfmtfGwvW4rZjMx0q36LvPMxC9/iE=;
	h=To:Subject:From:Message-Id:Date; b=C2xEkpJY/1yxKFgbJNqiZDP4pmGlFabCVCjRjEQ9TEg5zdxbzLKs8Y65L1XK7EVB7k2bCx1wSxYVlPVZI3rbVdOb3FYGksMa1sxv4/7CsiXJD5NgqooAuXZj8ehH8sxnA5bp2osnU93EpuoAiQB59gwIB1XjdsD0JoMKdC4+6DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOkN1aiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOkN1aiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45A0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715542342;
	bh=j2ylnnHKiQXVJ5bfmtfGwvW4rZjMx0q36LvPMxC9/iE=;
	h=To:Subject:From:Date:From;
	b=gOkN1aiEaHUSA4Mow/sCQyC4uB63moLpsEEUMNrzvN708HU9Yc/yKKa8rq105CzyI
	 8njLCQGnurrqTiyUf6oWm06x6FZ68K2QTRFOBwS3MmPOp6Ey5idr5wBhUaK7aqp0pI
	 coByPV1OVdY5w6fBcvEpUztl1XpH8rSCnXLs5rV259n5bEw52CdoRbCUB8gULGkTBi
	 kioGvazSj41e2AqxSJEhwwz76c2Y/+/PjTeB6AT07aebpKV6YK2A9U6hlpIKk0Zupe
	 5xWgfV7mQ97RXcQzsl8votR98P6alVFC/zvG+RNpbjvLNkY77kle3BVvWtJrNebbcM
	 S1Kh014aHEhoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0126C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554234276.28820.16486787976712215448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b47cecf82c64a27f7fb0021c0f1c2db2270af1f2dc8647485e14697fc4a7ff
Date: Sun, 12 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715542342
