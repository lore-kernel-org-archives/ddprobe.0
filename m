Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D47B524F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747606194; cv=none; b=nqpd70qfy+oDZFRImILAIjuNTDyrA1FqTZRRrdFu8oki+9c/Rhdk7j3at3FJ6K8PtCxVERjJ6hzY4Iq4p/II7aimn5hRG30d06iwrEaQv5De7knwwucELtk9goi+lYpFuca2HewW/NJitTE7mOKX6mfG1hGew7kR7QGpGCva0aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747606194; c=relaxed/simple;
	bh=VYOOtrA3u8ssx+/dIHxvX2O1a9RTb9XdPpsbCBDar0A=;
	h=To:Subject:From:Message-Id:Date; b=kn56JbzMKoX7jZTKpOJzjbr01mHT6URhOF5IJ4gD7Q2r0sQQCf9kGt22PbY4bhjsyJS07IN7Ryu2j0RrNwbJL1m3dhV5OtuZ66zV/BWKMnay6cY85oZpC59AY1hmDN65SZqB0fL+7yy9cmBDKLMjqgna7dfaqpTRSjrePY7zX1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mrj+re7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mrj+re7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2503C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747606193;
	bh=VYOOtrA3u8ssx+/dIHxvX2O1a9RTb9XdPpsbCBDar0A=;
	h=To:Subject:From:Date:From;
	b=Mrj+re7PW/yAjSVC5/TaSpwaTklB1yEh1HTZJNgA1VHw24CJRvmVdhCwghaGYGGFM
	 2GJh0+ZjfCAo2JAPmVXhAHuSa1SiRZT94kxZcJy2awnS1d2A/xaih0oij5B1pVgxA6
	 nBpsWJivRmEFPy5u6VQbgroivkuJ9w1uT7hR13ZOs0v+gUF+tcB7KMLKhC+GOpMkZQ
	 KTns5xQGi5F6zBmSPTUUrrMUW+axTuua6o46JSi+/ngSAn4KxJioFucoM4c9uifEdP
	 xU/8zdbMVGxNAFbQpDno1Pz5LPhRrztPECIKQOQuELvkGABHT8vOlNB4cBpGFUbiUl
	 CWXINa6LANrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA7C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760619358.30771.17652401534699705720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d029111d5ddb4d6379ee3f25bb71e045a01b2bc4b7c0b787275f85edbfbdeb2
Date: Sun, 18 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747606193
