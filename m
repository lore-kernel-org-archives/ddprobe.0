Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF4142900
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736066754; cv=none; b=RHr/nEzmqFt5e9Wjbu2lIwKzv7ef4S9JViW4avcrEmLHzH5TcMI31IrsU1ZOgY8O0C/2VwXuNEY0bb1M5Bki/e3Yb8LLDkBUI2KKzoJKusfxkM9dQCbK2gxe4THXJsuXlRuG2xHlyHxyRqdPiMMZadGgsa7B/A08iilGrJSmGoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736066754; c=relaxed/simple;
	bh=ZgH8p8lvBa/3+UibIwmpyVYNqX6hwHOZZFN7XySQNUY=;
	h=To:Subject:From:Message-Id:Date; b=MHXSHaQgDVgE8GXOyySU9mPYzGTGUCha2XftSeAZh38YwWvAxZ6BzbKksLP5F9bMFy7EuonYlvKDWM7KNGAeDLmcCFrNfwNbFSdR/78Yq8YZ+SufZbrPjLQIpGt+kXCQUpujW06d0rjsnkl2c13LXZceQGHpB2xNp11F+JOtcxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMB3AuQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMB3AuQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BB4C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736066753;
	bh=ZgH8p8lvBa/3+UibIwmpyVYNqX6hwHOZZFN7XySQNUY=;
	h=To:Subject:From:Date:From;
	b=IMB3AuQC4ju3Frp9kiUhz5lmAQUjiZaer3axiqaVtjcfExSBW4Q9g5wfjPn86fcAQ
	 YsYgrHHYKlle8elIqjVe7kFli51gxssUqtim+QqVaw7UnEqASJZcYsI6OMrp2dG6Sf
	 Q9tPa7S3NKYEPSGo8cWjej95ShHnMCVMpsJz/D+OlSyoU5wYM2fvjlc/RDEXOvbS3U
	 hrOZGeQ0uvJ/8GUEvBYLlr6rwn+s2qXrZPYe7oj4hV5oMXqa7a4kFcrYtFr31m7TGl
	 f5IPSUA82U03cI9tJfOFRmejld1QPYtqU52s4prz14W2cE41AHtYfU+Xen/3toFkr6
	 Vxjwgt7zdJNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D6E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606675357.14061.7722091899684818602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924658e721e6be2541f098951459fc9e75d38828ed5b6d2a189f74a06c950fa2
Date: Sun, 05 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736066753
