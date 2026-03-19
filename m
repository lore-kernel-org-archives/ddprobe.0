Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3047522083
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773885294; cv=none; b=VNJzUV4MJus06HLhB1bKQihDlFcw7fiGa1tQLn1Yu5Fex9fsPWNSeyQpVM5o4EVsdKPrhJFIlxrcQ9LhAwpfPtPCX4KRfLnPVZiKganOS4/o4bGCgmzl+L4+Z7vJJg/Exer0BHgov9uyoVYf3FfdS6wQlDOqDvOJtaJs4DLu1Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773885294; c=relaxed/simple;
	bh=g/SAGOJ6lrhB4GFTwuFmz7GGR6uqagwnGD5E5IYtu5A=;
	h=To:Subject:From:Message-Id:Date; b=Ykl3BJiQnTu/CdEfQlBjk3N6jj49bOj1iXFPFFVNkUDwO7/Qf9ON0L29OtAaePI4JvvKXHZl4NRuqy/TMiE0tSzsW1V3gkKQyEmHgpqX7K2HyqKeTr41OXtfiiyDjJflyVe9I78a3PXQhAjeP+irn65AEVKLSZD78qhInN3JMTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhwFe+3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhwFe+3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A367FC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773885293;
	bh=g/SAGOJ6lrhB4GFTwuFmz7GGR6uqagwnGD5E5IYtu5A=;
	h=To:Subject:From:Date:From;
	b=HhwFe+3Qsm4CxtHbJ6LCsfoFN1lWeZm9OXLNWfCDjJgNCf93Bs0W21UVh59TnEe7M
	 e5Bb7g3J+eq5h5ORBw9hcTGtfEAjkKXpSnmp9hjk+dLS/NfDmULAsIzYkvinYWcQyO
	 T4RpUXNeJ6PwefnPekNjCO/4HZmpjGy2K/9JDqwtQmu9pg+v/DiW544ciTUHbxdXNR
	 jo4HbrcawqENPXA5jC+HS4DMTfhMCARqK+pFMTrlzEYJEzU/D0sJBuHpLWZoXaYGvB
	 NUc5pGSRB2MSNNsggVKHfMmZ9Cib3rxl05UxnV3CJvHsWXRpB9p0WFzdZo/El6CHvy
	 QwDaYPExcCnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB91088E58
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388529357.29596.760508755127115576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71577d73ddfd3235418a8888a142b08f53464e51742601235d05680c12320197
Date: Thu, 19 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773885293
