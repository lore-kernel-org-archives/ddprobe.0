Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206F530C10C
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759253395; cv=none; b=mN1Ry70pDRE/fsU99WkBukAQyZN/UYTJ9B/O16YIxBUiIUbDBO9Ng0fYK0uLM8H/S/7Kb2rDtz1DlQ3LCyco4s1bKa/uYYPLOBFzBk1Vrd1qB7Nezpf2IrgkvgE5a3tjFV3pDue4njCNJNsaOYFkvMmqNUqMPOM6/RgQoieBhek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759253395; c=relaxed/simple;
	bh=S81W746W5bM581U94GgW48gnKQHYj5eaE4pq6Iek8jU=;
	h=To:Subject:From:Message-Id:Date; b=kUmW0rrKzyGcaGtgmPGELnZPgl9xQiFl3Z94TvCF48axG7RZhlaqdEC4q5xkYapO2RvWzxmsxQX5TlmQfTiOV7C+Jf4qdmZdPoBJ7+0NANhQY5giK/o+4giKAndGv+/9Kg9eJd6BPd0ZWP3kUKsRvbJD4nDYgRi24fw2rl9E75I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isutYh0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isutYh0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759253393;
	bh=S81W746W5bM581U94GgW48gnKQHYj5eaE4pq6Iek8jU=;
	h=To:Subject:From:Date:From;
	b=isutYh0jRMCt8u4vl1c75q0NA3YGgQ9Nt7hBzw20s5wwh4Zu4oPmGj45ykMCDzAmf
	 6ZRh+ZKuf4XmfMqHAlnz3pVkRMIYHxu27UcrLWpFXVOAr5LeCFofHpN7vZ/qsCV3l2
	 mJ4Ym4Cm5ATEFTf4ul/lkO36UCCbhVfRQ9/ttaLYOKAyNRNX5Q+U4G/3tswUogItNv
	 He1Sw29FlP/QT+Ua3sZN+TNbw6oSgVWEOcFrAXQPvdYBqzDOhmS+D0OyZFKP8/caNx
	 3z85NniyRvXq0EvGKI2tEnWQefBnth57r0mQA3dDIFa/aTEJacclQCzLsuMgSA0iYf
	 12jBGuGuTWf7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082ACAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925339358.29782.7752067710359358754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b403f2d17f1debcbaba28871c780baa366bd1351b86257c767aee246f2eadc78
Date: Tue, 30 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759253393
