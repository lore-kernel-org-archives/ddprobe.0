Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C473D5661
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779695554; cv=none; b=hkZn1ONx5+aWKSYBY4vsKyKeDrmKvI9EDEzkzLVxFr51CyrHtP9tULSt/1/NzP/Jvzit0x9JJrYxkTKGmbuJmKOrcejjHtVffZi5/ysEmkGkW8DtsZuITJsP8kUcoUpvtahOT8jEhK2fblkUgkpBT0on8GGpEmbh3+/x9jckoug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779695554; c=relaxed/simple;
	bh=dJn3KxZCDaRYlScbVDfuykcx4ucGD2lKzf78TMiGxM0=;
	h=To:Subject:From:Message-Id:Date; b=igPsDoeMKKV/pi60RaWgK0rBL9LqLOSs+RPqx0xQgQwybYKD54BBrHWoioxbetCvKSVV6owNs7xfdP5OfrUpvbe15g5l1Y4Gr+D3ANapgZ0j6BbTrRp+CfaGVKTUqk8g7aFD4M5GwQnmiUcmMwpqCt2kh8P/VNWXDsvewHmKGNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osZrpma/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osZrpma/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5763C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779695553;
	bh=dJn3KxZCDaRYlScbVDfuykcx4ucGD2lKzf78TMiGxM0=;
	h=To:Subject:From:Date:From;
	b=osZrpma/zRVbreY2Fah4Dr8+GOwOuco/nAIPHy0ACgHV7858uGIny3mur0s1/a77c
	 jH1Ebfy95bwWrZ+2DAYu08jmiouZGGy/ITMBmT17zLu0obI3VGPeHSFgLPgmYCMpdk
	 nKZRIW2/MqaLXa28UVYa0L0QBGxwTuhxh+BavHUI9uQV6vs3m8SlZ6W352vGfsZnRK
	 HLtsxCId/gGgVPyr9aKDa17nXaOVyZ1Ty/9Kz02BbFkBIL1GqyytD2Mqcr4kNaWI3f
	 cIL+kHofj8wWEt9Dj8g+PYCIELSI9xR1hCAMPqMQIV1+WTfmHrfRwnFVynu6+jzeg0
	 vCJkgt9jk/k5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A979ECD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969555368.17566.12059434659778283159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c610d7a01032324ab629ff31cc3f3dec706216ba5c9c52ef6adf214c049cbb80
Date: Mon, 25 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779695553
