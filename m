Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449AC2F8BDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758229794; cv=none; b=tjFmADgUH86CtbrGb9zCRKvobC6zx5UDmYUT9qOH1Gbt4wKnrRBBDamxj7i/hSA8ybQJ5n2o9SyAPYSdJV3UbgLbCd/oD7dAC7zOvVZqyD1BV3CFYAlKo7P/rzB0IRBmKhND9mZDCpitXr3Ob34nKkiALUzSZKf4hb2JFAAc98g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758229794; c=relaxed/simple;
	bh=c7HvlpwJGQkYRiKtpOG3Bev13KzrZc13WqJU7BKj19s=;
	h=To:Subject:From:Message-Id:Date; b=fN1AAH2Dpz3XUPDHwRwh7s3QGmCWJy3qeFgfgDAZoAo26vbUo8SNZvL+mPIGLU2hetS78nvuJmymFui3effN914T4cISe2nTR1saEsJ4+VFafvH8/hS5MTpQDqDo09tKeyLoTV2K8ZfBXb2Mo8mYRLOpWOWll+AWbgYrz0483lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruzd1QYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruzd1QYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5436C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758229793;
	bh=c7HvlpwJGQkYRiKtpOG3Bev13KzrZc13WqJU7BKj19s=;
	h=To:Subject:From:Date:From;
	b=ruzd1QYOYCZJ2/2ZqEBg0Z70fVSb1PARbPGT0njPRzr7U1+3D593z+GpL0XPQSmUt
	 A+ilP6g6bj8whebj1iGYwKazrB5qXuA6/iDXpkbbLMEsWopZUK8IZtBCO0+fWnPI42
	 DFdV1u/YP8fEjeWpuCj5Jrh7fxiC78Rr8vxIbkKkdTu8MXrqkOk9XaHF2ZzHM6jEnF
	 CxVgOFkDltWZD1gpfh94KSqKLVUGfdst/U/j+YPzjRtC9ZjRM+kCmSHbsSJY/HOapR
	 6E34OwnQS7EYiJkFHB16+8iG0kUmF9y3ZEgsITgAkvp2eDmtonx7hmIwvYWumGu4wA
	 38sAnQT6qF0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1602CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822979365.20170.17315367577292754325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6908b9a8f1097c622d6ddebbd92fbbc3edaa874f4ef12a853a425307c74e08
Date: Thu, 18 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758229793
