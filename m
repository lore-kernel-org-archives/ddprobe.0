Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71627A5F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720571783; cv=none; b=sy0q7cAKaZyyAlysHFFhNNZPFDbWyAA5lrAErS+FIEwHJfa2s+9U1UWM5dC7sI9TwZYBQO7PKn2ME6DvFQ2XGVMO0AVwEXhikwJ44b65oebxPhUniVeye6IWvqcbt1sgiYZtdtX6t0bxeV9ZQk7hKMeL00RJRUy9+lJk8JVaFCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720571783; c=relaxed/simple;
	bh=RpD6qzK92CWBerjKiCvUE8J4k5Xeoy3m/Stj0rvwctU=;
	h=To:Subject:From:Message-Id:Date; b=Qdxb0/b2se4KFuUPZ4omrnZisayDoEdi6cm/wuCJKBI1a2PMFTGR9H3leGNDnt0Lf1X7TN8A5WzAnADe823yBcKp+5+r1UkptSLOzayAWDC32Ks6vkqqLH6imu9boRBJUR5E8i9Kpw257BibfTgFVzmMVq2TeTr7g5VB7iggSSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGzraXo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGzraXo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47E0C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720571782;
	bh=RpD6qzK92CWBerjKiCvUE8J4k5Xeoy3m/Stj0rvwctU=;
	h=To:Subject:From:Date:From;
	b=NGzraXo90Ut0HR5kR0oA6vTMM89IImuF22pJQTIQBq/jUX9aiTRf/HUlmRZTfflyQ
	 QJEwIId+x8WlNIXRKilPYoPXDPrA8KBJtYIh3tg6M1H/FTbs5r/EwMWWBmatyV5Hu+
	 prg96GQVgqikCJWnc9nYC33VWStgDPn/al8ID7h9if0Xu1M5Z/nnnQ6uWWrEHKnVjK
	 ZTVl0ANNtYcCNKBS88MnvbAbwDq99lcNfkfyJF7dm52hl4aaJPsNGotPQfQyUy97XE
	 F+PKqpL7lA9jGD45btk1FneaSXkWAhyaQmeDYDMSw1I4fyUNaQas4hecIBZeYgmsiP
	 ATbMnUVEFuh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DE8C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 00:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057178277.3394.7699568588786610155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db480774415fa131d1ed6211886d85c8b4edfd57d2867a18e2f3957d1d0d1370
Date: Wed, 10 Jul 2024 00:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720571782
