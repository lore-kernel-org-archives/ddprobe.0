Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893F336728C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783700314; cv=none; b=ShDmqubasNCzZCXstbDNzLzvCD7Tf+x7pSI0tvZUKrWzQLbAh6+N0DBg7g8yfVO546Jn8clti5Xqa2WOrI8nTlJbyW3TXpX3wW67SQQ5qo+f0qMbpZO7O7tx2CYJhpr4fc5E/7vL0AcHognNwc/vnLAINIkXT7qZFu27lF6Ambg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783700314; c=relaxed/simple;
	bh=n70p9+E/A0OocPG++wBQ5Bx97OOSQV5K/URdSgYcKPw=;
	h=To:Subject:From:Message-Id:Date; b=tvdh21aNQpJkFKSUUvQpaDwb1Kj2UDqDs6E5tQJkKIyqwSsOzJJZ48WxdVqFaJrtjblLNmHzqslKdyoIv/WXS3/puOQse9+O1j/6tWsxlBccr6KnpDOyubFr6XdmaTn7/WVDd4CkpwRrcFf+d2Lyd2gMJ1rBCFsI4NTLZOv4yj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gupSH66e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gupSH66e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF28C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783700313;
	bh=n70p9+E/A0OocPG++wBQ5Bx97OOSQV5K/URdSgYcKPw=;
	h=To:Subject:From:Date:From;
	b=gupSH66eHCkHMx7sQUC/5OuuHJMT0lBuLFCD7Q8p72KcddIgm+lz+pRLC11gwur08
	 S//XUcqqPrGw8W9+dCDy4qmymgZGC6+nO2A6u6MHTEI7RObxvTS+31bL470KietUQ5
	 9sVcv7MyemBBfnzd3/j8dafec+MEtK5g4KBfHXr5AzmLnDq5EBOkjIVc3/WLT2GRYd
	 sH0Sy+GqjzZYcEhdOf22JNtL+UbLk68mH2J7Rgptdfzlj7ALzTHdaSAyvmcQg8xgPT
	 NJ9xfFb8gSdzMTxeCQ9Mq/OS8ingRFUJNAVTZXUw9SQwsrmWEoUHbywKYGV/fb/i2B
	 TFQk4C79ECpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91AEC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370031368.12979.11476762018021595822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42278c727ce1a34c0b4204b17b6698a6516a646eb43f1c2c85bf15526a497cad
Date: Fri, 10 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783700313
