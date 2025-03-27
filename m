Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5601E4B2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743103794; cv=none; b=Rr4x6obsXRjW4/h7BrpiXqp3D1MTensF/bLB9m13MOPyqNquJOoHVxKLhRqpGbWDfhWM0P3ph8/h+O6A4ldNsZpVRBBW/S9kx/WriROpBpmZxkkdxpTUDHA3tMfVNul6Y1lGnNGF3/ZlJ2KKMTPkmA3bFTTi3b/+HUTrIWnyqns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743103794; c=relaxed/simple;
	bh=BPoWzQZqHIhehx/zggEDPBwgmIik0TN2cNLf6utca28=;
	h=To:Subject:From:Message-Id:Date; b=KgGeqCUKtpeCYK+HXx/zbPqSrnDGURAZtD0kPJn4aImPV7bMic/BSbipYhCbgolrHiSjop9JCnWRouI8TVqP+AVSU3suI2h7Cc2MOeeq9Nt9kOwJjdX9g42uJnulx4OZ3WPNJOHf8Nx6S6RL82tETE33VxX05HxcnE6t8ACuTP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g77pETRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g77pETRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AECC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743103793;
	bh=BPoWzQZqHIhehx/zggEDPBwgmIik0TN2cNLf6utca28=;
	h=To:Subject:From:Date:From;
	b=g77pETRsL8WyvrT/rqqhYYPaTZBuMfaw0PpkN5ed9gFysWMoFy99ElKRr3pPwdgA2
	 v+ymeKYlXwli5lZeROKdTcDiV5ZljRLldyKoO2Xc4fOJyhyq1S6VDYdpEsnzARUde4
	 UEp5f7v2vLnAk6g/2+xc/k4rfdleqsn71RPQJdMOcxYPg4inf3/BMP0Dye2YjvRY/+
	 cG1lZ2vuQAphQc+/zNAd9VaGF2VMq8StXwtUs5vrE23M1Cek0UW4HmaeSQ+KRN8tHn
	 2O9ehYnq5aji2T5ouHpjEWiqO9gNz2Yht3hmyc4F672pIsS3WUrSDp951JMxuFRTat
	 kbhu/jf5+rDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF21AC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310379369.8031.2349698929141201089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5915e624e528ae4fe8780b0ab8b9c3591195ef8fa6e1c52d19a33e0cd09fc4a
Date: Thu, 27 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743103793
