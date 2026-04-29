Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410782BDC1C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777486654; cv=none; b=mB11BQX8eqwqHOR6fHzwWvdjZtqxY5qqKXn8oLr1TBjJayVs24MMQahaw+c0kRcSaG3TDPieezpW7CfOWvt6kACcIw7rjm28UKoCDmGsrttL4uCkUc/h5Y0IvqBCVViM8y1CNhVJ9cGm3U3BHQioZIAWSB5ajcq1vFOEQ9jYuhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777486654; c=relaxed/simple;
	bh=m1Zh9UCh1SPpRp6p4FHs0M9WSt4N6lkTihYgWUjyPZ0=;
	h=To:Subject:From:Message-Id:Date; b=mtqlvYRPllMvNN4YJxKXdI7fDp12N8+M/+Dhv2ajhMY2nnpd7B4IqRokD4cjZtGeXwpqB/rud6Wg3WFOTX7SVWs4jUfylRq1wiaRdBMGKamHear+vP44l5KGN/rdvBj1r6XzKy1ZQgoCx0JpkR9D4CQBiFyC++L12eeYsxMQtSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe6AkCqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe6AkCqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCA1C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777486653;
	bh=m1Zh9UCh1SPpRp6p4FHs0M9WSt4N6lkTihYgWUjyPZ0=;
	h=To:Subject:From:Date:From;
	b=Oe6AkCqpww79tWmDTuo4nYfiKikimIuUAfH4E0mF9cH7FCWq3HjkDGfw2kwckIN6W
	 ev6XsdW75jmf+3LnH9sDEXITVBZn77BbTI1o0SXqT7+0kUbT0nX8n7kcGlV8blExpi
	 6S0YCu4SzWUDeQBFXJZpop1ghToLMRmn1GEjiApxjrITlgfXsUyoY3dhC1JavFsoj2
	 HoOQf/ErOq7WlplK81eTLBbg9+C9Rt1ejfYMnvgYkaibd9CviEVg4vcufGhLeYCubm
	 x9Ak207IN0WamK1IOzkDSpPE2T2lDbB5nf68lCnl7c1SptdzHli82s6bUkLaJzBm4Q
	 aiEqEx/myMIKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B19CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748665368.563.1914041651323235795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6b44bdcbd5e9b543e8d38070c8a7755162245b69651fa0ab07b375af56cd36
Date: Wed, 29 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777486653
