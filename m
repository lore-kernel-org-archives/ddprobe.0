Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED7E1F5838
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759661994; cv=none; b=LKwxOisz8hc4ewhWziBXJet4aTH07vfAUrcL0s9tDuDFnrEq0jsLKj140ixF1/2UrdyIzOr4YNCsnMdvrGj1gzjHU9q3vT+XTYkalxiI5oJtp06LJMx1zazUvObNnpKfBaRkILmU8D/4AOh3y4DGjDC7R+ifPZI11itOfFVU0zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759661994; c=relaxed/simple;
	bh=dhB3DQof0zqZ5SCxUKstFCxf4Jevi4KxyXmtLPBalSo=;
	h=To:Subject:From:Message-Id:Date; b=sTFIozEeW3l+y8cT0slYYRo/xSGfUsNB2ZdoU4kZL6x/39tnXptOWt37/AeoMxr/goB62ub/J3CCXRzvckjXRh/rp8GVCzzeRRji5PQy8Zrbmbxg9JsSCYiy0eKYWr27M9VWYC5pbrq56mLvj+XBKzVBs3sb9s6zzkZfYk+hTB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzIvQYKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzIvQYKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C73C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759661993;
	bh=dhB3DQof0zqZ5SCxUKstFCxf4Jevi4KxyXmtLPBalSo=;
	h=To:Subject:From:Date:From;
	b=qzIvQYKFdNi+xdh8ZoCE4coOhMGK2mdpYCd2a7MZmhSkRwkRzn22d9xaJFLWHG8be
	 bW8bk2JLM75aUSUvbauW2MDZVU/6In30+DQHjxyNzCDFjUoSCNAZdkRQynPbPhlmbo
	 2agaShkbsil/vQnGUHLNTYu9wo31yqsqSyiRNXYfU9u15MxbIf6+arYijuPJG+rPH9
	 wQtS4/VdwGaKuoPkKqVxk19jaGG/+Ydz1U0P23ZmHzE6Jep0Jw9eRyZ1waugaH/+yO
	 g2ltaV+rqy8XIaF0VLw8vImg8RIOMQgAVM1bkbPz7xHThwylXy50BNnb5kZhUg4svB
	 g5JtADdHpSsKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91969CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966199357.27398.9082628168131128159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e3ee69e4b8979cfb588cb346dabb871f2d4fed787456c93e0aaa50f94e3349
Date: Sun, 05 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759661993
