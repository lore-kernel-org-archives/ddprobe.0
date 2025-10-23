Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE8C28E00
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761248394; cv=none; b=UMREgbHOcVyWaXO0mplUdnDHrDFQfoiGb0MEuAJEYhhilsTh4yac4EuvCdI/1qcOi0ZDRhulbFtM4a58SkLO0rp5oWZjVYW/tSMWysGDv/l/OXCKitnDUl+YVmeUJIGp2MuiY39xRDBxWamce2HhweZlWjkafuY8Ox0WLqZWOks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761248394; c=relaxed/simple;
	bh=AsN7gWPbZ6yZ5E0IC+D9GdSWTnMicaTB70U8QuteRG4=;
	h=To:Subject:From:Message-Id:Date; b=XUUK++n7/CxlcmGhU7havsu63GTpDVXURB6xXj2HmuPk4I9nhriWkSoyacFc0VnTe7TFiOw0kHxOge53A4eEcjj4hXuFhNUDpLFxVkModyo3SrJtnjgwe4EqUdg8pASWdfw465j8bnWkl1JBdqSUvxbAmQ6aGXehe1FcdimvLiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGCFG0Rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGCFG0Rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1913C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761248393;
	bh=AsN7gWPbZ6yZ5E0IC+D9GdSWTnMicaTB70U8QuteRG4=;
	h=To:Subject:From:Date:From;
	b=TGCFG0RplhNUGyV/B5DAb5EL98Vz8uiLlzsEulBz5E4bb0biyl+KM2J2Rwuydko3k
	 vRFtJSHGW3xVa79odd1cJuSGeiEwal7RLT7/VxPv3eXG3P78HHGzswOYQLCgUbkQX2
	 0CHBjQkv3mCZZq2t5uj4K6Wmg3cFBKcuSQ8UFdVBsR4c4ag63TmoGR/4xkilsWNSuX
	 w6wala8on8n//Ze45c6s7/HGOoEyp+0ZMf81nvfZB/0kgzfKrWPo3OJwOvVQWDyN9G
	 9pb1fnc5rSmJy4u54xANciM5fZImyv4jYQhiSbU58Bp7pzi++kmrxDRIBE8IwVFF1V
	 x8LFaemTg26bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD35CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124839358.25870.5984813157850464368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39ad7bbf92b7fc32685b0e58f57726df5b1f1975da6d551e945f3dded41ef16
Date: Thu, 23 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761248393
