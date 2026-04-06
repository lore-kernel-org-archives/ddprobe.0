Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235135972
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775444734; cv=none; b=r6is7wpjs8MjbpFNeELPfbzz1cr5z57f7JOYreL8qtCuf9aN2s7jNJVESTUxsDfKA6REyeSBiTKJx2oigvHdWdVTXM7hfV0UDkZ/aWQ7S0GzcFq4QXHA9tseGkdrxFcTisvZ8ArTOyZoAkDYNC5Uz6b9mrQpJ66e6qNI8DCDtL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775444734; c=relaxed/simple;
	bh=6spflVXLV+rrABy9BLbzIgau8wr/I4I0IGNZ5xBySj8=;
	h=To:Subject:From:Message-Id:Date; b=FskMrdua0L6OcA1BVC7pA2LdG8N+yVD0jR6Vvr9P8KYLOZknN+aEWXVv3HR1JKgvALA6J0yeQ/7vA9/ZESCOuYlAXlu+OqM7uJrCEwPh1d1yqn/mFf8e5ZbmkWf2K7P2N/e+toIb1tncB30OT1g6hyo3pZKEAyqXNr0Rwtb4yfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EICHkmQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EICHkmQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EA1C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775444733;
	bh=6spflVXLV+rrABy9BLbzIgau8wr/I4I0IGNZ5xBySj8=;
	h=To:Subject:From:Date:From;
	b=EICHkmQq01nbgLx3lvmi+yGMPQObj1vZ5+taR3COQOk3vYT4Z/zAi1STYxfcOEcvE
	 5Nc1NttmnqqL0Ao3I5qtqifEnJE1Nz89chnnl+LzX/RnWZnGIdRU70Y9gz5KeCiuJa
	 hxfJv29O/TsqEPFVGhRPbft7kvs0JNO2iUWlRt5d/FHqOdOlCxcp3Nm/82++6nRBFY
	 r+kkdNuxo81aHvc/k0KEN271ULtQdxqVkMtJvF5YMTDottEEbBwrq3IrhJrbpKtuj2
	 VljZs/EXITsuTdj5q2Zfc/r720mcWj5qW/cq+p/GH8HB3xE70AHE/M9xbia4qG86U5
	 Rqx7Sk1s1L60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30BE9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544473369.24925.16581863639442789583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db07e96f9b5bc6f659c2552b6b59a0416473ae816ebfd6736b933ba43826192d
Date: Mon, 06 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775444733
