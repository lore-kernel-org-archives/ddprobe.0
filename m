Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C00221FA0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759842594; cv=none; b=LxbnlBQ66mCyNnmD2mKjqa33I3yTnAhBLWNhPDuDxqBrUXcoul0KCktpPnlNbu1xIfzWgJVTe6k2aw2kHENLGcycq6Yku8ZSwjlzufmxni+iuASaxEV2MvyuQg0AigYl4rsrNWHgqF+3y7TnHLp3LF9BiAZUZWudiArCq0n5Vac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759842594; c=relaxed/simple;
	bh=hleHb6jZY+iF35qphdEh1UCEeg09yg5LluUi2HpZRZ0=;
	h=To:Subject:From:Message-Id:Date; b=tD9UUEIyL8ujhafXc3zLlfBlKe7uD2OR8/FnmCvzSDWnVgTDOX6325gKK6VHm1W6wl/niDZ86q81+f9gl7MpE/9r7Hjh12SAYyEDo671DtS5OhSzuyy9qOwdIq2zAlKkoIiRQjum7UydFKuWNeP2nRcl7TLqwRwAcBwAfO7P/Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srQGMIdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srQGMIdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3397C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759842593;
	bh=hleHb6jZY+iF35qphdEh1UCEeg09yg5LluUi2HpZRZ0=;
	h=To:Subject:From:Date:From;
	b=srQGMIdkHorrajjcUb8ejQLPd4zBsVW+z0HgVad86gkgfYBn1GKbuiOBzIdTnPEkt
	 odaXbGaBv4Jr0wSYmSqHfIFAvkRQ/aJF5+UKtPYXHlS6HTnWmdNxGlvUPQS2BCdxrZ
	 FxdvKCQg0N7TpJ+QF8oOTcNHeIGvfPh2Nena0c9cAqV/C3d/vJAfMKNr3NoJQMd2FF
	 EMUaDRK/F+42OWfS0Xys7ssTyKvonDdpWc1CRqy/7nswurZnPu/OG4c+7BuRHkZZxp
	 tvwUE9vdc48ocMpPvOuZF+dUes1/1m9AXUfza+UnS90lYwV/IF+VytcLIJd/jF1yTr
	 y54NHktVqvxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9322CCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984259358.28848.17811380130141635454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68dd11346b34d616e6c191d6d1b3113fe6dff7bfa0575629bd1cdb8d5e97f08
Date: Tue, 07 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759842593
