Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC25288A2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770192234; cv=none; b=Efyh4xgBsHhtQ/mqkqH3ZFbVKjP0y+FDtJUbAG5dzC93cBGIvSAb/qYOmh6yLuoH6J//X6FmN3XehAQO5i9HwyYDyCi5RnOstegNDJvDOPtaFoERq/ZV+asTpjkpavoZvt1oBq/N1IsKlNKkVXKSs2cCPK8nAl/dZmrS5wEG4tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770192234; c=relaxed/simple;
	bh=4nhake2OFGwvx9MKCceRnRgxuXCW990sBc/Tyu+ZM3g=;
	h=To:Subject:From:Message-Id:Date; b=WHjhdXKCX33RzsWOsQLn8afGJsmzD0Mb/DfU/idnbHbSJb6yb9wlBVqe7bbZ4atKpd52RvmecJdVLA8c9I2o27R5lpyCMFtvNMFDouahKZL/aGJLcNfE0CqPj4CEN0Q0RMZO01u1dYNuAB7t53cVDIzeL7Fumfvds9hHTIPCwE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0fxSo8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0fxSo8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0876C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770192233;
	bh=4nhake2OFGwvx9MKCceRnRgxuXCW990sBc/Tyu+ZM3g=;
	h=To:Subject:From:Date:From;
	b=I0fxSo8wTw3/tbVi2tJ0H2cXqpnCr1sNrPxN2Wz6Wda9hHIcgBoJk8JlOBQsLDiwh
	 yARcga9sAVG3aFNnVfxpZC+PVTUTAGiGZDPbxAbBlHv8MHg7pC2ckv2+QL/VVimvpn
	 hWyKPcN7zxfpLcuImycW1Tw6YIMVYWgABjSn2Xq2f4kpTHSi6Y1XmYyK/IruNrbqp6
	 nhCtZsbTscmx0OhmCGLU9V8SxopNRtQltUT1VKzw1xoosWpJUBatq7FM5Tm7vvtfxX
	 UtXZ1ziQv3TxMvwgBHIv69BQomxo4YMxEbDT6qXOSE2HY/B8ZhkGlkPDxbYGeCZKbi
	 CMRKHqoOJl1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E6E83EE8
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019223358.29396.3783770904401998482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0effd4c5ff5214b220a9f099632026bdd2da3d6854b5c9e3c18e31c4bfa62f
Date: Wed, 04 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770192233
