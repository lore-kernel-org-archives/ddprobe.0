Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312F4217730
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748866794; cv=none; b=HU7Yxzpy0kRFYY1yMeVPrI1d3OmiIvBV+szVWDZS98XdLs7a+7/b4aMB417FtL2obiHJw87YlW2dQAFXMjJizcLIGA/4N2dotwCmpNkoTdu/BWJRIEaEbmTOkcpUXgoVDiayZUm1LgwmFnXg5uA0XksiUreXECLao6NMEHMI0mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748866794; c=relaxed/simple;
	bh=CBMzhefecuej/45P11/rYPN6bwE3ZLvH+UZaRBPRa08=;
	h=To:Subject:From:Message-Id:Date; b=Ut93lYHJCOZ9ODSHWe8sh2mQiSvJpxKUxjaBiiISH+/ESDU4oY02rsohaeYEEj9rxlc4uU+22PkLxG5irlbAmEfO6W/PAT/ESL7od8NhzXeHHdWW49IKIVYge19A2nrplXnNCx4Zu6FhMqNa8hJvh6LkKL96lZCylsl8eX8+vA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK0YiEsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK0YiEsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB7C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748866793;
	bh=CBMzhefecuej/45P11/rYPN6bwE3ZLvH+UZaRBPRa08=;
	h=To:Subject:From:Date:From;
	b=VK0YiEsmuDPY7zrAHWFnKmruHYlV9dvem3SB7N3l0ihU4vlwUN+NlUERBSgNEJnbX
	 o3gy9J5Mk4RdU4NggcbyHh7CViRjM8lWHmsbPtdtsG6+2XBXJXAlivwuXAMuIwORs3
	 seOW0A+KA8AWU7EEu1wdBCnR9p/bjcIIh2rNKebF1GZ0BXAd0KRz4sJSuyBtimesoT
	 jUwfu9Lr/Hj4t2RsrBjViigxTp+2bvkBeEVTojkU1KQL25BeWu5rnIS8M6bHiDKLC5
	 v/iY939m+WbB9nkYibHn2outRQk8WG3dHAdo+DCIiBu5wvlqkUK5tjdXFbof94NjvJ
	 Zx2BEUFVsSf5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92789C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886679359.8095.2434970306464135647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65985cea8f4c252c76aa10612a47d023dae94b557be8c5b2f928330d5bacbf7
Date: Mon, 02 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748866793
