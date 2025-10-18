Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060BC1B4223
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760800194; cv=none; b=TI1w/kRrU6kwWdS1KFlzXlpMkBBWmrlB34cctWAzzTXH9yNDfYwi1CdvGiIJZnLnTNnM/UxuoeGnqk+DpBEyqj9bAVHBk/ycZiwlxOUVznTCZeUHA87WQUEvwvtUcVuulWSYzQ8YLFggMPfSGelAg9nuZXij+Z/xPM80mRuiB1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760800194; c=relaxed/simple;
	bh=xSIpjPJ1mqKRn1hZT6VrruNX1A1IfsWhna7FxLpyWY0=;
	h=To:Subject:From:Message-Id:Date; b=gU88yWiAq7mup7Nltpl2adCwcsP3pX2VG7ojcP0KJTjATMJ9FFUAzT4UJujPdxLFr+FRkAEdp2VLCvZvOJnr8oCu2uSVpc7mvDwyvyHTmEY877YUIOU7XFeBVrTstTT6CA4dVHgZJoBJ5r6c4u1JP30xuDkNqVuNXNpOjPCTsLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQiLQ8LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQiLQ8LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A99C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760800193;
	bh=xSIpjPJ1mqKRn1hZT6VrruNX1A1IfsWhna7FxLpyWY0=;
	h=To:Subject:From:Date:From;
	b=MQiLQ8LMW5p9ocLfZogA8ia84sNmZQk7z2q9bG4sEuATLi6PMknU193rv/kUvUJAq
	 V1UYCzQ9QwBSxDpF1Nfp0hHOvrfrGfP/eKDQ97xVLvlRvd4j1RAaI0KDm72TQK+/uN
	 jgHSCwteIsh7eL7CS23KYGOHVIM7/99xeKyPQWIu9803uArteQDXazT7Nu3tSOp96H
	 YOHRfZjClqw4w6oBq8vOmLLFb/U9cDnYynemJLh2k+BI9rpBHp9fZnCnbAmNRtjFpW
	 AorictKeBftk8chZ3gFsz1zVQQQYO30SfQGvwAJpGhIiE5Lvnc8fW0BdXKWyBEuvRv
	 8GGXiocVsvIJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DCDCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080019357.8980.12434890778272077800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e01795db7e45c39abc7a1b3472064ff2d9ffeeb26575d71510b0004f7b4486
Date: Sat, 18 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760800193
