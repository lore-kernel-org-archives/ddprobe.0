Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CD12D0C92
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762174194; cv=none; b=Ef+9n73/pZbSCQ5lmNZgKzQfAS18gLI3+2z1m1j7nn5/Bt3zIB8ccylShM5qRKjST7K0/xgnHg/Etpf3skkxnmBwFE14EhwrR07HfMiGjfrJpu8gZb5o8zoxf/gO7cEvbHhnnb2xHN0n6qFQ55HH+uolUOW2mPq1D7XO3aPYh3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762174194; c=relaxed/simple;
	bh=chbMcz87G9Nac3f0SICb8fi0ukT6UN0tz2SJ/Aw4K8A=;
	h=To:Subject:From:Message-Id:Date; b=th0iHrS3oi3EuPvCtw6GdWU+HSV+Mrm63UeuwWeajY6cneA/P3ui2ZOcVELAhSOWLULP+prUQ0GqYTJ8MPacs6Z/zHBh0CTENKCPEj4Y7mlOUZIfc2Ue8HQfD4A4anbi7Pz/+0MjglSwgmr3znHu0G7WDP2RSBSfo0nghAjd11g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MylW3xQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MylW3xQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA2AC113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762174193;
	bh=chbMcz87G9Nac3f0SICb8fi0ukT6UN0tz2SJ/Aw4K8A=;
	h=To:Subject:From:Date:From;
	b=MylW3xQ8iVbZ0uZby09xi54lHlHGtTCUSqPayzv1R/0ihyhphmu/XlqdjGTB9NLja
	 l2vSJuq7/wxBqLcmpxL77J6uCTFWy13ylGMvCrXa6huxkMEbiUzRTiNChZgg7fN/Of
	 UcACeXYSUOjwGsVoxogJ2QiH1/+Icw9E0TQxqDGPo++5bvn8iEQEIpje5dWFcS9NLa
	 d4gwcuaLdlSxyusKvASKMAmkWGY95rovPnzP+L/kXS/+VuKZErWU4FMZ11OVG6grQt
	 YdkSXvQbC2L4kC4hxcr3XbaK+VrRhlFbhGv7rG5MrB1liVbVoxcv4dkLKsSMxKXRPD
	 G4bn3HWTQnhCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F0CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217419358.12300.10985767001101186138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab0a95ca560c8a783a0fbc29b249732405f025e690c1e19ff1c7c08f36cca1b
Date: Mon, 03 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762174193
