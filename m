Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15930C2FB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761972594; cv=none; b=kZZTvKxTh1/Ik6JwHhS0uuudaTRVQt6YDKe3HVjQDq3/gA3qy2DBQladPTBxWHoqxDakhgIvtVjjqSEqIkZsvVGCEPwN2BpgAQpNsV6ooiYszYZYCFVgFgf/+9I8NfPkMyz1Z7WtxRnksa8xHg8wEmC2cPJuFfrvss2mJiXvbD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761972594; c=relaxed/simple;
	bh=fYO91Wili3nRUBSGTPdaM4T804Cbt06ZOmt5txK68fk=;
	h=To:Subject:From:Message-Id:Date; b=NlviXMXBznaysRTzQve2TTPffp9MgoFBX8NJb8zvkeWx8jKmnEm9dvznLCdWsrWfWWlk4yKL+fwV6w9pKXsHAxXDHYLJzoA3IkHF6tGNtvgmwOJQ3ejR9Q8jAst3ExctAxo4ytaDMD1vzrqr1ph3/6w+XU4WxJve9H5ZYWjGAoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+Ikisgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+Ikisgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F86C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761972593;
	bh=fYO91Wili3nRUBSGTPdaM4T804Cbt06ZOmt5txK68fk=;
	h=To:Subject:From:Date:From;
	b=L+IkisgmGG60Fwd3hINYmbeGG0SAtVSubjxKqw6J2Lmzrsk8opsdpoNBr6vIFDw6i
	 2LXKxw79XfFEWLOWIL91bvM51qp5EZNF1vunS3ZLjvElERyL9vr8yjAEC05f1EF7kQ
	 F6SuCCwUxLHtzd9SBl+cOp6ciVmpvBQSAGPTxJDLyDtdTMODfVG+PcsreLLWBpBwgE
	 68fMJ1NxHrG6wXMRLUlIwtNzG95E7h4dQLn4FmncEzx8+lVeNUzP1f6EiRQdxoluQ7
	 zBi1AD8mbRxuGMyISDV3EPPFmHH3vo/FTAFdmIyiRPa8OUe7BN975unc9v5hzggBx7
	 pSIh/Bj9tcl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4FCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197259358.2640.3199844444380341983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9d8ead16a427877da5ed4b5634fe6200f0fcd9328c58c441e6fe9e45b0799d
Date: Sat, 01 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761972593
