Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048C30E853
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780162414; cv=none; b=kyUDVnzpwwPoN34w0xy+WsmQpOKzyXCtxG6Fjl8+t2VPqD6VqwDevYBd1GqU3aGw0gxQrGRG/FnSzoSCyvZbaGN63ws/4guZEkNpJxuTOD6faG5t7rilvooyQ4lFQjLVxLPvqrzDHAcZSnBEnaKSWbcihA+w7BlkchshKvysU8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780162414; c=relaxed/simple;
	bh=+svE8J0W3QTgCoAhCL2d0Ef9XIjHBtagyW5m1hPDros=;
	h=To:Subject:From:Message-Id:Date; b=bv/wmyRkU2HDJmAgwk6cOr11f0/vJ3oW1LN2OJ23Jiee0MwZKMNO7wVWL60fh1k5H96vziyHbUAYAEI83dsMzTpiFEJ0RT2jsNonT5p5VSlWYIt/cPB91AZBFEqbhnbfvQjDtFZt48/sRKorg2LItC1Cpm7Bb+vVOsvP4f3L9D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHABBqpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHABBqpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE129C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780162413;
	bh=+svE8J0W3QTgCoAhCL2d0Ef9XIjHBtagyW5m1hPDros=;
	h=To:Subject:From:Date:From;
	b=PHABBqpayypF1m3tccqA34ZuYaBW/uJ1KMFeeGjORYkk6vu7oVEHjvTRFJQaRMUz8
	 jrKBG4oEErEcP84n+N8p+MSRvAWti2QdcjttcL/mt2J7kP2MnC0L0Y3zWXXAENq8gJ
	 3op9Yp+KYaXWRY6tX+QTtIOolSTYn+3tMbEPLZjFLIWUU9q4yNFObeLgZkih1Z4IQc
	 RbaNYs9N+2wKQzzXdsl6UB3L9eZQigun4lSW5zNo1X/CjSrCeMeDeEn9j6GTcjmbG4
	 fQL6+sk5sI/zu7FooPMUMJsbFpf5Jjuvvwfifi15zp49e73O9DDLRJcei6CI5ohi2u
	 jh1MQ3GOUtObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C2CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016241369.13999.7858212023296475213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03dcf29ea2e5637a3bf66a3d218c4984c5dac1fb7693aeee1f000e97a9d5a86b
Date: Sat, 30 May 2026 17:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780162413
