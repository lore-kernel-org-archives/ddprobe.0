Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FB72E54A2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751035194; cv=none; b=O41/qR+sG/Z8v0PoUbCsBu7+nHx6h5XKBNpqywOS89Hea99/ryB7ZNsRENuzA3T00GvRAcGflSF0UrrTJVbwU/kpjCD3u7KZh+arlQbE89fZkG+SGnP6Hse9KpsBW4by2NJAtZKf4XWfDyOLUpqTyF1Q5njAUUqA/M4dBqbyNSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751035194; c=relaxed/simple;
	bh=x71qrVEV+Hw9USUZgjhhknQUKPCtNezmFQ3UPc21un0=;
	h=To:Subject:From:Message-Id:Date; b=M7i1mOeUg+GlhHP9as2ZO2loYQqhWiDuaee7j2wBuCnfNH0klk2GrTSsxuee57j7ak9/FRil9rqDm2iubkuw8W0M5tJQPrwALnjeqQcrLK4ltIyIqr0fvtHC/p3S2+FZ6h630lRaBwk+61AV2BQQYXytCuKBAPudK5Eb4h3FtAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA4s1J84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA4s1J84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC97C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751035193;
	bh=x71qrVEV+Hw9USUZgjhhknQUKPCtNezmFQ3UPc21un0=;
	h=To:Subject:From:Date:From;
	b=QA4s1J84GPVPctjY9X7oj33NjzvkAPnVuCEyC7ThJO5a8XKAKDqkLPP6DecCBGwZ9
	 hhuxTo0bd9FcuTj92mVVtT/k3UyKtyp3B6vu+MNQkzvpSfhV0wyHclRG+y+/zGPFUA
	 LbtOfjIPc3bg6I0rlhw1Av1kxcUweljU7Hgu4Hhh9hH64rSCXTMnLFWGapX/YDEdHE
	 yaucScN6Yj0YvsRyJea0E1tiw5TxuavJACXRfPSFypaga9osZCfgfJDk6W1/WNjEcV
	 hhGbbPorcnloHRj3woDs7YOAsNKgWZ9e+85bZj9godIF6yX2gbwgvnA3tATBxWEAz9
	 a02dMJ6pobf1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA08C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103519357.3090.4637863086480006185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7efafafa76dd46abca8aa217a6b91e7b1942475a7c556728b4d2e81c014ee0
Date: Fri, 27 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751035193
