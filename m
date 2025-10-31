Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E78E276028
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761881994; cv=none; b=JYw2IV1vZo13iDICNctGO75FbfnwKuLHavnJD6gYHQXSnHQApeR0UnGLS6BEaJTy/OQB4OkT//jp083UTgYT9A/J7TZfuoqrIEMhjjD2SowSqhdSIXU376S5T9Kh2wqcnNR1cXS2QdV16m9ONDp5jeP8wEWYIfS+CuV6KT0Qbog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761881994; c=relaxed/simple;
	bh=OXUKKOTp3yjRqvqGJPWDLh3oLbmkjwrLrKZNSocItX8=;
	h=To:Subject:From:Message-Id:Date; b=cj77V3MO0BE0CMqdK/wtElKiX9Uxoh99AaxOZY+5w3BGIp9eqtdK8OCxIKpYFm8mlbaH6y8VkIPtzReAAUTBFx/isQlFgNeTGcE8TwxuUNBDF3xIAL06KQI2IuyEChDU82GlX7jx1zUWlpWKTfa9xp7YRdYC04nLNWDO0Y4VE4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hpd5B/0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hpd5B/0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1563C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761881993;
	bh=OXUKKOTp3yjRqvqGJPWDLh3oLbmkjwrLrKZNSocItX8=;
	h=To:Subject:From:Date:From;
	b=Hpd5B/0xaB5+meXInt2K+G7GPn5a68F0OYMkL3TYrsoQqM7LTI0bO1KhCN+gKpcbW
	 6JvLOv8I+zHClRE6PcCJplOmXEkCFmJaRKGiP47+9dBGDBy6PKj42G2PPHdlt6swu3
	 N2W6QdytWn1Sgautm+EA1yA8i6hNUDrc1pcLyCIEc7mDaLeUxUze05uAFDl7ew4fM7
	 oVZ4WoBvvMQSTBuRDFfItilnToVvaeOrdJTUPoaWT6LPiB30DXgrp1izw8GA5W7N6F
	 ivBseSfk+gCOIO2WKhsoT9PCjBNoDv2IrzGDZqx2+4H5eRgzOm5lDKwMrbenKMu+fE
	 mTdsDeUru6flw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188199358.7560.14770923097731027725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e3be5fc07cc8ed63f648cc279128cac2b1e6217462cb9830eab95281f2bcf0
Date: Fri, 31 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761881993
