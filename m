Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5D821A92F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774067694; cv=none; b=pFT2nn5FmSzDPeAEC6ImhpppVgmIkPNgJZQGuVeoe3XPhlF6l1RfmsiPrrwGTObP682dbXOeknySNbpeMQDyWBRwc9GQ2j4FFG10sVqzQUVDQ3zWgpFxzQbqZuGhnaA4KOJa2F4FnHJZKSpQYDZLCUld9l6W2sALC5sweiwBoVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774067694; c=relaxed/simple;
	bh=8zJvwU1en0hAAvNpUUclhXN12N8koVFU+c+3f2f1jlo=;
	h=To:Subject:From:Message-Id:Date; b=QZZwxP63+Xsm16DhT1insgsgDEIvugVdfLvoc3mDQreePyRYO5yXYy1c7uxEME2PVywkIiZ9LxJ6xJ3J8hVTD9L64eF1Jp/C+1q1XJfdPqkGPrCVX6O8Y3xbiX2D+HRXEjTuW2l6ZkagAeBKMwjtUBMlrDhfiDiph+4VZDe8AVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQQWFtyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQQWFtyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E49C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774067693;
	bh=8zJvwU1en0hAAvNpUUclhXN12N8koVFU+c+3f2f1jlo=;
	h=To:Subject:From:Date:From;
	b=VQQWFtyV4SgMkCaaVoEWckwgjbts90fbL94bVKRZoQsRlsM0H19Y2Up64DNGoAsqZ
	 bwvrfk7AsEiz5pmIXo+H2oQ0uFPt1h4l4pZQY6dJP12WUAIJQE5SZifNlHgK+46xkK
	 Yl7tiQy4uwVHojMNUo2eFf5ns+jIy7wZ7tDaR9r2GqtDGsJLgceBTM1YCZctGJ551W
	 5xZzqFNBnXe5O2P6nr4K9Cqq3drMYf5q9/doSxa4gCaroGorDsQqxXxHqgiC9B17bT
	 CeaKjMdtPMnl8sjdY2kMvB6yXA57FafM2AYUClAsJFU4/RBJCQj9vgCVKlsXPlumP0
	 sYwcEaNak2+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416B108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406769358.6765.9301283836366356924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccd764e0dc1576b2ce7b9f62978f9075bb9ca818d92ee0f83d89adf372f88d1
Date: Sat, 21 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774067693
