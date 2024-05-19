Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5D91BC2A
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716106943; cv=none; b=uQxhoUKembTsaG/d8hpdBIQ0DYE51sLFUD0kbPcAHDb6A28MCyPhA2IK64oz9HV5CcIg9oMT38ertGdctBoa2UNKU2I9UbxF+rcZ7uTNLVur6+aBY9j38xN1o4Eb7j3SrsC/lXaxiT7mrS3yseGraYBzXthQLybgox+8tL6scek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716106943; c=relaxed/simple;
	bh=L0GTSON89yqd3Xn3df36742gCu3yQbooHBs0aez/DHM=;
	h=To:Subject:From:Message-Id:Date; b=gJmlxg//XNgBR3LkJyOUiL3v+KlpY/sczviqasIIguJRZ08plqUHaiCnjOplSYqRKcUngmLpJoWLtphppMSE7VeO5ejjGCqsW2T6BlIY6VsRFucJpsQiNIb7eTKSAGrzZ7FSERuOY84oTI2myGVKc2rJZHNX5CVnNU4R352E7+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR21lPmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR21lPmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA92DC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716106943;
	bh=L0GTSON89yqd3Xn3df36742gCu3yQbooHBs0aez/DHM=;
	h=To:Subject:From:Date:From;
	b=JR21lPmkrabsb1+avKsDD+nSyQJsiQT9XvWHo2FomQdmAAI3JcHIOZ2oScK5jJfl+
	 s9n9bsZFrorbaXvB1UeV2giPjmbhRoyZBr1Oy7YSxvZ8EHwS2fW/hQTJ0TrIbyst01
	 5cOJV5s2IStTDJIND0uV8bCZ9G64f79VhfLxle0qcmJSlSNBmN0TQ8zeawJJcR2Bk0
	 ZfNJpEwpfPOkuHdv05UhqgB9anlSLVvfjXTCEJXbuDt2v7RPsU/Lf7rsZH6uwj5EKc
	 jjqBq5KpyAeojYsLhPU5bd7OTX3+k7xjqCc1KDjpHFzgD8UCCiPthnS05t5cEPS02U
	 oyQ7AJdH77OeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08E3C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610694277.5959.18087725730256000927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c3db30f70b74d2371f6084939b4fb45bbfe11c614aea318e5d74b53a70cf44
Date: Sun, 19 May 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716106942
