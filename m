Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3178F3B8950
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786266034; cv=none; b=KZ6V0KpBwwHXe659L0D0te5n6567DkrsVDrq0un2xNaq38ZHJIo1r7yzz263pqlj578PSid2YFHDO/MBPirT/zSowW/ft4Qy+KKgqBnvm8YOJdj8c9x6HI6t+HsczhGxFHvHPMq1kRZ94vJPZYIklomi41+LSpLSJWLwcbgau5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786266034; c=relaxed/simple;
	bh=uyhNdCJsezYmftjcw7q6cFWhR5RruRtY+FiR0KW42hc=;
	h=To:Subject:From:Message-Id:Date; b=B7/HiCNhg1yOJEsLXSFpA4I7F1L0YrLbR313Mbv3mwhf50iOfIrPx9RmN86EEZrdhwOCSi+xzRGKOPsFdm81Tkig1yKpJ16BxDZslG5QGGJ7RusoucrUSmQ5iXrXbDJOG5q3y6JjYfkfcciAzHV2NTKRubglu9cV0w3cMEBtltw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuvW9oMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuvW9oMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27CFC2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786266033;
	bh=uyhNdCJsezYmftjcw7q6cFWhR5RruRtY+FiR0KW42hc=;
	h=To:Subject:From:Date:From;
	b=QuvW9oMSops0b2tOMDUpPh18mbZLpnQ7A9bG49S3aPtyV06VC1J0rqzDH2YK9ifyE
	 0rincJ0k0qt0889tQx3ghoPCip8aJNXNIUm93hG1HUSXidrh5fgVThfaTFEh+gIHv6
	 ND7CGV/21dAnyz7qO06fnhEY5/7YFlgkS+im63ykq4sNXm7rdS4hpeidjUWCQMbpQN
	 ijQswJ+dcSt3jXkidxczeQc2KuXVRgjRrew41+1Te/YCq7+VBjTaObmOrp5c/xGS5f
	 sU/FxrE8S72w21w823E+Bc05FM4WKoYyqV668rBrDFwm/6sG0iHujFZAhggGCFT2/s
	 ZkoV6hUpRz+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC67AC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626603368.2218.10195415648367671390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef499c51f7dc560124aacea37f2f76af632c5b138d9eada4f2cf60bc5b122a0e
Date: Sun, 09 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786266033
