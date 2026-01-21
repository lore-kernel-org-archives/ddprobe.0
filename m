Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C682338BF7F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769022233; cv=none; b=TFuVr+kRhRrm/8O72aq3nY84Gz0SYoS3ALWZzw4EJEkCDuZ9dsJ7PqpOlMyt/jYzyHPYm+yCHIxMYutwxARvMAmMyvH1+34jQeYs6QgDO20PASsMDKFKTauOzQ9REpgVNQAdt6nisaHVtbJLu31WoPNyi2nsQgXB6pjOXLno1wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769022233; c=relaxed/simple;
	bh=V7a1Y7mJrLicHaVfea+o7NobTuPLe+B43fcGHaS+6Vk=;
	h=To:Subject:From:Message-Id:Date; b=R784ktitsAoH5MsFGMgXWerGjPgo8XpO5DGhNlsSv1k8q212KOO6sjiEQm3Xf4C9nsN5hKQbZu8tV3GbTBDf5eDvGmPxzogo28TWzo+CXmnS0PQL9kAa1oOOx1zmjTHWUY3gtaEjbfYpZbiVOJ3JD66gCzcLBtQN86VBNBIUjFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrIIZIBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrIIZIBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A64C19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769022233;
	bh=V7a1Y7mJrLicHaVfea+o7NobTuPLe+B43fcGHaS+6Vk=;
	h=To:Subject:From:Date:From;
	b=lrIIZIBTZb0C4l3IzqO+Gs1tE1oh2j8FTT0pZBDi7qGozptFo5rq1gbvfOu/+McUa
	 Q4rumgbvYPeJSEuNFkJerW9mhEi3XN0a6oLoMU0RXxTky77hHTDpxFy5GX104qRqEl
	 ttvkbhW/Vu8bce66pclHXikkbPF2gBPFpA6POkv0Sl6x/fUeJNh43M6V7ATuTsG2KK
	 leDarP6gI42K6o8vgfsJLoJ5tWjYtfZRYc77mMB3Zx2VGPLh8NjEfwD+xyGLxbc/hJ
	 ELdgyFHEnGPtOcyws/9szxdAiEngPBpSAU3SI9vcrWgmwhC1QZ3pUYJ8ccgRXXplAn
	 pGCTZcnndmOHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC54C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902223358.28482.14819179788622512290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698516d10e27656990ac4836a0de2dc353f78a7459d7a3fac7948aa263aac323
Date: Wed, 21 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769022233
