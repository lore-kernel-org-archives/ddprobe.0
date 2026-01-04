Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C09842AA9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767524034; cv=none; b=uHDyJHbsVOkPBBnp6ZNcDCpLtluGvcMBDv9RWZRU4IuVizNCMy10yVeOC6WdGI6pyECBhAfnkDB+8nxCqc6ey/e/h0sxbchJh8UdI7LloA6THvTdruIl/PbODZaNYp5oB60AYZn9wDD9L+qJLVL45Wly2a20+tCFyiPxzEgp3oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767524034; c=relaxed/simple;
	bh=KSUwG8jdZfbs9A7nGqiymDC84ADnsBskZbAW7bQJiok=;
	h=To:Subject:From:Message-Id:Date; b=alP7+/qceLAkAFj1r19UClalo4clN3iMlWlJiEx4DOAuBFy2Lfuyd6VD1WazH8T4xz81QXflVnTGLjZPq9+6/AlmoJp+6npr4d846TMlZMzSNh1DpIp1JMzdr+vaKrDYWCx9UqjCUXVJKdGvlyD10wAMQBxpQB5AWC1PLRixfBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQOeq1rW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQOeq1rW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767524033;
	bh=KSUwG8jdZfbs9A7nGqiymDC84ADnsBskZbAW7bQJiok=;
	h=To:Subject:From:Date:From;
	b=UQOeq1rWJN9e+npKF2DrhncrOcQrNrv2a5c0DoFBYiF0Ate+igrUpArV5R/XyxPrB
	 h/diRBdhS3hZHhK4r/9U+PORNqZAh94oD/0UAsVo822V1/QxkFD6SdN0FX0Ym7vV1b
	 /s8hROIBnUCqV83BMyGbixIzHnqdrtTgtF3TWaikY7B2ciHJ4EP5v4QbRrcdusmbmv
	 9EMcZ2J6k82pRo0BX0dZDaOkCCd7u0k6ZSJW92BgiyoVWSUqVm9lqcBCBMMjnQcQrM
	 8B9I1eYdAG62In8ROZ39SBF5rcler2/kii9CnJ9rxPpC80tbrxz/UNqAD3rpNTUdHn
	 Hg1o+7TSRFpHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E1C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752403358.27360.2922683402592417085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66aa7d2ee6149fdf0565d213b4883ec08bac7fd6e37f0e4cf4db0e2cfb63f14b
Date: Sun, 04 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767524033
