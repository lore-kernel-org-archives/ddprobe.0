Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211AB4F55A7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788535834; cv=none; b=LK/hnuWZaz6qijZizN/nrG9UQVAk1Kc/Uciix287YV2rdfiZWkVjfWFIuKLM3863C/x2/u+c2eY8/YJt29JBrTmoyXlbQc8v/5sH5EcRtiwqruCKp/M75kRhKzcVbKieJHWIAgw/HniPv3DyVzDAV1O7MLhc4KcZmrDUzpyO6A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788535834; c=relaxed/simple;
	bh=t2DSToIFxxufNZuzx46gna5Tw4Ld27Goc/qI0n6m6LU=;
	h=To:Subject:From:Message-Id:Date; b=X2Y/U8qo7v+PIk9Cj+ZRtM1kN7ynQBl9m9jJq8EnW4xyZOOvhyrumCqVvMEurl9mGGyMvquCCgtIqsmMEm4f8pgQJLAJR1qQRyII/SkpuVByy2w41MiKoqPzr0MN0YI9uo4iBDI9vKdCghmJQC+d7+2QJPMfGb5MpWaKCwz9+6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fepfwk9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fepfwk9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF942C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788535833;
	bh=t2DSToIFxxufNZuzx46gna5Tw4Ld27Goc/qI0n6m6LU=;
	h=To:Subject:From:Date:From;
	b=fepfwk9dlJi/dR+khPETvS+yB+eQLtbnYzfDyXk+sVkPncl2X2onDi1StUEx0g0l6
	 hughWCF7bmm1WXnOpvDJ9gOuWppsC7WOtqRd1n6I0++h8Hxzt81ddWBcsdhIdK3VL+
	 1l5QndTh3pMAg+FmZ7jaidQ/EMGtI8qb5805cfCX4KWjNK9z4UxlxPrYXr4urrwmhV
	 sVC2jHggaWjmAXpU2AaGJBjZ5zZwadUYDXhopoTcWeTvzqt3lVuEzB9kNexYdJ3uRk
	 y+cZRf1R+ReYitlMSgUgD/Mv/OKWZukRWoaiWpCgkSoTTgOnbmu4tP457Th4VA8AOC
	 QROrpMvrKjopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03CC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853583369.7125.10236475878789571816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1075bb29497063b24d8c188e42f2bf67b3c5a607c012d390042c93f4e0468b26
Date: Fri, 04 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788535833
