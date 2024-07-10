Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEDB198837
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720629383; cv=none; b=qeb4lyPHbuBcgPCKEePSWNLJq8hxmB9wwes71W+InBwxtIDX2nPtqYAtfwBm7WmMYy3Zt+GeCg+QqDQeeWvpMgLKumA7rE1/UvAzFSESg61t+Zv9p2s0jUy/kz0GS+HQrAsd1RROGy6f3pm1a6XuBQSX2KgRLX5oS4uVjacWFt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720629383; c=relaxed/simple;
	bh=amkOJM8/Z9reIVNopLPDM92wBK0aC35xm8DQ1Y3D4N0=;
	h=To:Subject:From:Message-Id:Date; b=q2wfCT/VsNO8aAuxQV0KgR8Ko7iYZEh4LsSAtGtteKQrkkw0ur2VnWgyvvxrolp7j9dOlUag0gbSOIK7O860TdXnyX8nbvzBzuj484uHPx0t+KI5m0C7V7lxKSWvGflvS8JOTynTJUFkCmvAXsen7bDb1G2FndfKb5QAEMWNt20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmQybebg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmQybebg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14F0BC4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720629383;
	bh=amkOJM8/Z9reIVNopLPDM92wBK0aC35xm8DQ1Y3D4N0=;
	h=To:Subject:From:Date:From;
	b=ZmQybebg2HZd1xz+MNwLnyU3aL8a0xhRhJXar3aYrtxj8As+sACz2W1sqtBAULRXf
	 cmZVYwEvZpOzHDg0ptXYQaDO1WZnUKMsQnkFmE03flc/zB5SfVoZ45zMLKXfFIGc2q
	 zBxQg0WCMGk+MNG9zqtgeZzZXC5KXpFiFDc4ETg29GVbRoDsp+t1Pz3fkYlRGrFW7F
	 vp1GyLt6Ij87ezKbstTZMdgxI1DUpGfpNechkxq4+8D79Zgb6RdE0pNcgO1ygQOl2W
	 p5yiFjwjhexbhqh7o/ytxue0g5RffDbSFb6gGiroalTbiC66EYWZv5b04XasVyldPf
	 DVbSPShzqBJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0B2EC41513
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062938291.23183.1197967730340888915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1e4f38b8afd55fd1f54cd0e65eb9a0ffbdd94ebe58fdc0dab7c5c3a181a68c
Date: Wed, 10 Jul 2024 16:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720629382
