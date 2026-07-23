Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB02C39021A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784819435; cv=none; b=CxUzkZaGjJjjre4WF783qznqQ6YAlzziVEHrBi53hL4DdnQ0JyMYhNhSbzXfOJdsNuoR6R6FCGrAQaKtA1f9kor16nTV0fX4sFEgZUuyYWz2EwwgHAm4a7+F6mZSPXM8nr+XZoHfqFMJ4xEFQjMCQa+eG/RLk7iz9Z35sRYBtew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784819435; c=relaxed/simple;
	bh=eCbi4HwrWoC8z1E5+ks1kzD/eu1uHbmE6NH4uAyytXM=;
	h=To:Subject:From:Message-Id:Date; b=BdfROvV02g7Qfvkga9qnjx+e8LQNZWRaHzCukYmGp6l2XVe0mWeq66lFVfxs1VZisfWqUBgKumVK595ZakmMDRThDNJYMJitp+vVE57mnH7Ugiqtg4l66t4pJIWLuIe88rqrB2zQy/KGSk4zAnUKi35TGgBBARqQn106eMTr6g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpdcwQSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpdcwQSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14A7C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784819433;
	bh=eCbi4HwrWoC8z1E5+ks1kzD/eu1uHbmE6NH4uAyytXM=;
	h=To:Subject:From:Date:From;
	b=PpdcwQSObQriAQ25JXkiioAw3H9pisxavfN8j6jURk5YODZhCR9yEzVQnnDXBIFeg
	 cTDoPR0G2/3F6ubkZ5aznIGcvvLgR/2n66/dtJ0DdsE9RG0e+zQosqvKDidQ+Eyqy0
	 ynLfCIwPvR5b+N4x62vgUCcwjDeMci+rsFGFnW71YkpPAGmMxwrMZeBi28K+2469iF
	 80VDy9gcNjyjrCWBARbbFLyuvpHtBEYU3kfW8VRtm+lMWnqSspAmy2OH5hPNWVENRv
	 3yd3iGKJjxgR/arPAKcRPvt35/Wc3d2rU2HPoe83eqiaVWv3zjQDEV407EmISIssze
	 2YCfaBhXgHoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA311C531D1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481943368.31615.4689461946961417162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1810983c210afff91485691b983b98379953be68ba6c01078a606f8f9e3003f
Date: Thu, 23 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784819433
