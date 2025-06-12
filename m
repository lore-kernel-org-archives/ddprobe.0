Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1671F1313
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749715194; cv=none; b=oSaarFadzLb7uw64ZrdhOFEhM6uUJ5AyBMpmW+mDcTN2MaXfLY7DQR3aqLbTqmQE/fguoVprPrOSFLWhOSzBlNxgwEGT+FAzr1d1iEtsYHcvWo9Brj8E+enj3XFFXAUy0pD8cTZxcOAtLTdSN9svN0xNby4SF0PNTsnCQYFlZVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749715194; c=relaxed/simple;
	bh=YGlM5ILrnKBBhy20/UTsDGoXCPj9wpYyle/ZgZY2Wlo=;
	h=To:Subject:From:Message-Id:Date; b=rrw0g/wGiq8UH0lz7Qhi5EqzO52fDHqihG+1uI1Ak6H93OzUpMo504Y9rlhxJ0y+LuQmSPl2Zf8uwIqCANjd7DFouNH37ShZF9OnWtdAr/j3mPTNEjDjv9FmWDEIOwYft3dWPk4/UtKV/s0i+hsalTvSvn2IQGcDRXEwhwm3dXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwThvThl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwThvThl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749715193;
	bh=YGlM5ILrnKBBhy20/UTsDGoXCPj9wpYyle/ZgZY2Wlo=;
	h=To:Subject:From:Date:From;
	b=nwThvThlf/1lwk+BgtR0H0RBKAa4QdDMKWOmVC0qfxY9b9sT++YAl9srogRvuAbia
	 kGEmJJSRxQhxQ/LHzJqMVQD1Gxdxu0rRJpxapAAtRO6pUrwRCLbr7JRa3Ik8Me9HtW
	 dgDLhjaQjiGK2NA/bMOEg0eQYuvrRdX1J8DNx891xyF8lfm+zdrA/ZumJHWf79NjsG
	 4nsx9Qku2RviqfuKgN6sdaDAYsAc3/2DQv3bN42wk6crV9WFRAr+k8iEZOFgCIjgre
	 v35VPZ1hKA/IYExGtR/YEsXV3DWjNWSo8Kawci3O6XoW1scYgxheelJsV1DbJNT00R
	 chqPE7DxdRufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAAC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971519357.12101.10818000009517118562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ae9f5025eeaa255e6fe06ecac554cefe2403f011b60c86bd80737c0b597b3d
Date: Thu, 12 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749715193
