Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702181E1A3D
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788069634; cv=none; b=NQZYaK3HDYh0gXy+MnXNod2BRRRJ1XZnsUNbrqCyVdnL1xaGkMoh9R4vsUtm/piM0fyLIXaRA24Hn0jW/L57PPM4jLUn13v33Yf2Z/acEQBKcmgWlwfNUeUKqI+yMMjrrzIyz5W6LVHV0xBx00EhbxyPt8QqG+gOS9pav3tBJqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788069634; c=relaxed/simple;
	bh=LRhrc6/lsSilPDpdncVjMncwz0yJqHULRA0SDGCa+Bg=;
	h=To:Subject:From:Message-Id:Date; b=V8XXVSB9WvI+dBVbPLcR39/XeIet+ESYjUaoFg6YKrfLd3cj/W13zr6YIzhY8kZ/iQ0R3zjrogV717FFD4QutZmy/3vC1ag/5UnhBsFwXJ47dGb3zWfb/h9pxpB6BbB4ArF05HvVOpS3IhWbpNvLbHZEnjGHZDV9N6qU99wDtSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crrAp4no; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crrAp4no"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7921C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788069633;
	bh=LRhrc6/lsSilPDpdncVjMncwz0yJqHULRA0SDGCa+Bg=;
	h=To:Subject:From:Date:From;
	b=crrAp4noBXLt7/4WvN1XIXtoEd4ObgMwAcZET9aSEGwrNWt/TgDTqBnsyXQW5lcby
	 GpLhlTkQiP0txo78MfXHeE1L+kl+iRVQSz0GuzPZWx2Il2bzDeByL3/YhoMOho4cSW
	 ajIyc0alaaWHOM103KTahpeEM53MVOgqfCvsYCb0rknVDkNRAWynOTiA1Py2/raLW0
	 uDBXGCp1ll2ixdU6K3mVo2BogL6gDlWnjCfD/ytcKE1aRD/mnIXRGAFzuUo409+hEt
	 QRLEYjw+RkDXkvvhvHDs3DafEwjrP3fc/dMB8EJFQo7m3vTnnr4rnRW/jL14k6v3Lo
	 OnRuwaA0b5YEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29D0C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806963369.3338.13174247579502996960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bbeb8a22482370b06ce81d8de5ed798365500fa3526822138fa5b4ff5e4154
Date: Sun, 30 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788069633
