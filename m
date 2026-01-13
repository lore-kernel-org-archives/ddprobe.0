Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F317D38F94A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768308834; cv=none; b=lZwh2XI5jVbKPwpHOJthUuxhlQmchoJpuXRHe/LfaQn7LvKdpcPiNEDayE16DsbRnuTDbo7ieQtrgXeiv1mqc06LRV92UBD9mR3RSqVcS82oX+fqjDtWculEjy8baIJS2Pz+ggIipfRj3YkLtkEqxGyikTRdRiKivruX9MaqASs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768308834; c=relaxed/simple;
	bh=EhyCg/61JhIqizXNf1ACnTR4AtjYn6lCXJJApFrAtqA=;
	h=To:Subject:From:Message-Id:Date; b=lKCjySUbUnlBK96nBZxkblBNtPOXzX6L/kJxlbZTVHn/nff8MyEr4/d+HuHENYeRD753q7Gx4mgp/FfjpUC/jVTQiQUroBWfmaBT5pT/flsJqQ1O0LIPntpyJO536dbq2ZTB3x1ovKaT8Eb9u4/u/EUi7Gp/L5862hai1a0UJyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcAXm+bW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcAXm+bW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1041C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768308833;
	bh=EhyCg/61JhIqizXNf1ACnTR4AtjYn6lCXJJApFrAtqA=;
	h=To:Subject:From:Date:From;
	b=JcAXm+bW49bCr3pWeAf5Wk044znQ58xfbjvicfxRyG2hYHobEfrAWJ/60U820E9nO
	 6CZ/0Jt8QGBsrNaAwPTlCdUK58efm63yIPrIWKNeQrKI9DWzQ39UjhWyzLvndU2jF+
	 MVdVo7a8p0tdxbZ+GkQAsIDeNTCJ3JTzJogQ5qzGdA4wq4z204e9lgWDyoM0bg61Hg
	 7cXupOyBVriy409p0TWQgpdgPrhj771Ln1nfuRMML91KQ/vrNAAgUWgP5j/LBUpaaV
	 +2Cq+APvUSE6ec7827SbJCEp0xXiEgCW5KR3zdpo51gtf+3o7NxIrNNCw6mKsQhEP1
	 VDQcwq2liLDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE17D2D0E9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830883358.7497.11322728487059548848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40049b3d627b220381cfa8c7fa24f83578d3c246d5e64f4b97b69094ccdd2d99
Date: Tue, 13 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768308833
