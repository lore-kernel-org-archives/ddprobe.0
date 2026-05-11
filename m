Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661DC4219F6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515834; cv=none; b=pA1zYLJ+N0o9Ol740Q4oyi/arI6ZxA7UzRxVqasQuGcafw/vt3Suq/iOVrxavYHBoEMNdFy2WS6W+LqSOOxhdfvI9SGIFua06U8hZrD4hau49wA/gwQV5mNVQoCWj13uXT5B1o2MjkofgVo1hbzFkrS5SSl58rmAEu+rEevvlRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515834; c=relaxed/simple;
	bh=9IrOn4ulDYTFXw6e5jHRQAhIWhTMBBZy/mN+olIgkH8=;
	h=To:Subject:From:Message-Id:Date; b=IuqGbw9PCuz8aYaF4iv6fP7C8EMdaO9pIqx4FUvnBrbtoE4gGKCKqfmY0j2qF84Wj2Kgftu3v4Au6vmPhWNwn/c/NxLELm7g5YDY6kcYX+1rvAv+882hwYR2ePeNGM+R0w58ft8sI6ZF8EHMGvV0nbLbmhohmu46KKdpZCunM4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rjlkeuhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rjlkeuhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95A6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515833;
	bh=9IrOn4ulDYTFXw6e5jHRQAhIWhTMBBZy/mN+olIgkH8=;
	h=To:Subject:From:Date:From;
	b=RjlkeuhjHDRxRGb4uf6thZS2a6f1aB3VP8lv7wM0OTHa246PejOVk+dw06QlWuxTr
	 732kCufyG6kqugPvGYkpIuyNzd7lZqI2804t+9AGZBESATjhEKpV1umHqxEXK5dp78
	 dophOGYR5IFIGb6t4AXZt+Tj58V7ta7ECzj3Fh/0hPOnAOK1F1WkSDC/ioT2RriK3G
	 zDW5/riroutzGFs13E5vrsIYDEpmJBtTASG+HwD00ibd70AAcTQOSzqg3rOtSsLwEQ
	 /r5ceAYuKgxuvBlAH7H0c2k4/Egi/5bP9qO1QDHpQuApGJMP2WsxUg4vQ7mz7+rDEd
	 kEIXeYA7dfJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB009CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851583369.4777.1817185844147763356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37724d65abcd201fb4ae70e01cbd267b2e5d494e4acee4b0c5d9a33d7525a45
Date: Mon, 11 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778515833
