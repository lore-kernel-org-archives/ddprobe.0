Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5296C287246
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750894794; cv=none; b=P//stm2X1fjP0fpt/ZWVOavCbLqjGhOo41NmH1zaSoVozFWEReSLvqKOPfkpig+B7/rGad9Vf6sr36osYFlPTDvvLgPUi8DGpSAzEyyBbFlM3t2kF+cFgNYvtbopIVjnE2Ryc1TM99kqxD6qyCuSkspvBxIbv40qy9BqaiZ8JfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750894794; c=relaxed/simple;
	bh=1siWonymJm0Hp02Mla8g/qr10YBw2m40UIENKSIforM=;
	h=To:Subject:From:Message-Id:Date; b=RCGDNv7ElcsPL/30PCIBfzZF5dChVgMdOZwaMKqTqnBC7BBC79+u81cee2EM6pDle0Hrom5GnKtPo+3RKLF51WJdNuS8BCRTPnqU+aTuc2N3Jii5QZOuO/cif2A32kz2Hx1ufi4I4UcbAmQYURdg6M+YpQRh9qGWaY9YVLhzqGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXbcKBWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXbcKBWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27AC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750894793;
	bh=1siWonymJm0Hp02Mla8g/qr10YBw2m40UIENKSIforM=;
	h=To:Subject:From:Date:From;
	b=jXbcKBWdekj9tZhMlDOlh+ZOZJZo5q27uwzvCsDEsB4eU51/qBm7JWop6FP29DnOF
	 v2sFKvqrdN6OwoohSE87tR9FNnT4Nt4+FxuaosEDm7NWsYYR+ZGXZ/t0eW6mezTOh2
	 iRiJhIhJhulsqSrsRrLFF9Bd1M9AF+B1dtYhoVBUlzwN9Z+7xSspBbpcpTb+U4cIxE
	 QWp2Npch8432fjutE9AxMu+QgjmPg/+e20r1GuwW4QMVrdecytf302s2BlHNOKNrdw
	 MfBRSXxP5N52X0nTWZA00n0S0gdipHQPNGlvlzxfFngxlSrdme0M8WANlCsGfJs8IG
	 WFmPq4pv6sxUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230EC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089479357.30563.5115338414742742518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ff538138deb7a33e53f21015d84bcae6abb1c1473e8c3b72529eb3d9fc5ec2
Date: Wed, 25 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750894793
