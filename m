Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6AEDDA9
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777351654; cv=none; b=oeNLszVjlh110x+9w1FsWMLPt8KpEXBYLgde/dwfgzdY27niJnUz1pSqy6PZRmMtlevtqtYabhPwF+SF9VaWpfgEUQmAioacUv7Mgc19f+k7dWwuY6+rtAAo4A3717icb7yxJV2yp3plw+zvWdDvxePMj1pTusuUNyog+ToQbaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777351654; c=relaxed/simple;
	bh=d9k1mecFzXuIS8Po/0sB8K4XicX9hobyRkzsvFGGi6s=;
	h=To:Subject:From:Message-Id:Date; b=T5QBzHrcO1egfb70dUWzUzuIBe7wnARSSGVdXWQBguLxB6STSVBae8jMHJat/T3TVGGirdtprhYNRLrQhuPklho8CCXC8bpkGm+DQbSv33SO1kr1SbaE7zb2LK5H100xqcgFliL2q0oeTP5rnIkHPRL7wfItse5xmxtXmByUvzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qL/tMqQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qL/tMqQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF5CC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777351653;
	bh=d9k1mecFzXuIS8Po/0sB8K4XicX9hobyRkzsvFGGi6s=;
	h=To:Subject:From:Date:From;
	b=qL/tMqQxFWDUz3lswUfMKpWGWbIOL0hMTW2tTMzIrl8D58AOd80rKx5KQyKGc2YUK
	 Fc7EcOGwB/Ie3Lo2zNPyvAuHnAOy+VtDTvJ5xwCrG+onwNhEUcj/jUFII/qsbNZ//l
	 iccqPtKHYHEgPnLZVqrgOnEqBZ5zpsyAkoppoCOrvpPPq7lLCsfn+tYIlm2aQ5JReP
	 DAc2pjFe7UWvvVCceIrK45v8x8YMxztgAOqBN9MBT50sIzHtDQtqALmVFnJwuoC3JJ
	 iz1U00bDtz6uzonfkpiqebAGrBiKfEPtQ5ew0+8wGHCdNHrqexyohiyFZ8+JBPYI3W
	 MF3uOFHnSpcMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9846FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735165368.23060.5667162502198157209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee72a65f961d0fa850cbba85fe4d6508a483bad528fda4b3f2918b77b399c94
Date: Tue, 28 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777351653
