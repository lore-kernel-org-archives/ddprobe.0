Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182153451A9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761667794; cv=none; b=ODWpjYNiSI1QRD+KhtsSS8pGHm/kn05uQADaL6LWeB9nawdfTth0oDBCLEXIO1Rilzgd3QT4lLco5MxyGSob9FLl3eWpy6lmwPR1ESzkzV9xCihxHg4epCEGYoppDLCtDh3X5ee1/PYyPBBpdcDjrkqZBHToJffmbCCzjJ8e96Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761667794; c=relaxed/simple;
	bh=lhtTJB+iC99fsbd16gm1NI/Eu1mHZPdlApic7aKDgiM=;
	h=To:Subject:From:Message-Id:Date; b=plhWyhu6PFvg42HPtmUMj2UUOeNWeFjzKQ0t5HLKq2nVpK+ktzox2VTrbyans+b5yWtAmnVnhpL3TiUrIQIXk/mLON4hIa5Ni8YoR1c98RhWiSLQlmCbF0BjI+7aLkn/T9bjiNVwQmkprZe3QMpmsyPKC3COcPVCyjPSF9FKS6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aI7NI8Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aI7NI8Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFB0C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761667793;
	bh=lhtTJB+iC99fsbd16gm1NI/Eu1mHZPdlApic7aKDgiM=;
	h=To:Subject:From:Date:From;
	b=aI7NI8Jmox8m7xBGeM1Ujg1iSWCIk2UlLZthhCTSUsYxqivkfTWVDHDciJ9nfSWWr
	 xGLiU3dy0/DsFDLsh2phvifUot5snDTT/Klwv7Ok4yL5J9hqRy2pnZK7cHDrUcrCG2
	 sbISHev5c67igTVUuudzH7y61/DOEOmr6yAx/Od6naQPKZfRZq8ndL2sWV0e6eFGjR
	 tSZNNhl+gauiEo4T8IT5CrJ7drdEZ+H+CvInak07ll+i4xCUgZkkwcjHkNRIAynkVI
	 wa978Sq4sDq/LuFQRo1uy1Zpmix2ugkc6g3jd5qLPEd6nEq6VNRzANequGU2wNNboD
	 LrhQ4/bozcCNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96845CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166779358.7267.4127708910417187889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133f884de9628a0b8de3d2015d42c79c61b39f60dfbdfa09b3d4b3caa52ab6e9
Date: Tue, 28 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761667793
