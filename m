Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28F3126A0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784683114; cv=none; b=pEPxg21eyd6Mo3E1ief86G9ZC4uuSWRddDjySueyTqF1ohd3VEXUVV9jeCjwLPsAj37V4pJc6WmHPaE2ZPUtAOerhBSZWFzchem+TBoQMELAsgcZylZRP3zA27cO6/XytLsbL93uP5bbJFPiRTceUAJkLH99l/smyYXcwBzpOO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784683114; c=relaxed/simple;
	bh=zQNZ2tWngO1zE1eO5CaROAr2IAO9s6x24hMZDUmpD4s=;
	h=To:Subject:From:Message-Id:Date; b=hOcPGj7OSHyV9C4/KZu8k8/EqhVhQ7Le2u39qo8WlyYqg2bZzFjezW6XXkT1I+IyY2c6y1fJS9cob+08B7EBO5rmVduKKFyvD3BX8ZPxichtVCpqrEgTpQaEO3vI69MqugLlzVwZMsH1zH8OPpoYhbwDF6jJbm0Bob4UqS3ztMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGiKSIX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGiKSIX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC595C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784683113;
	bh=zQNZ2tWngO1zE1eO5CaROAr2IAO9s6x24hMZDUmpD4s=;
	h=To:Subject:From:Date:From;
	b=pGiKSIX/N5U0e/w8Vxls/Q6ccJo993lbAGySOoN2nkfqjrHJ+Px1NLZo3ttQ2TQ/N
	 cppKJ+VjDrmntWvEnOecKnIb9Rp+RIegZGSjRYh6RLX6jFI+3BWViGx+kEkNtpUW0W
	 JrV+P1Nobd/uHrt1PhbvohAN3sbAzKoGAIqkHlhvJqKcliqGjwbnc6ZuwTycqtBWJt
	 t06jhORSe9+z5lfMEhqGoyEllim2WanJSpWQEmL7y97RX8csuLnGhpLTwFC/UOvq93
	 dXruIYPaFpr/FoH6zQaZ5BUjEJ2wXZ8EgjXbLUaK/dxQZoSWFr8un6JhwP2rq1VCOo
	 b9HtBy/lWjp7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8544C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468311368.25060.17117143556341996168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937caa75587323a8900150fbb09d6d7d42fb5da1f3d3dd89b29799d052025805
Date: Wed, 22 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784683113
