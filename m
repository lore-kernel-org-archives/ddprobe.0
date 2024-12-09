Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8E414AD24
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733765754; cv=none; b=FTs+YgWPKmXgJuklmNqowWiCGXhDjtiONa0utxpixO4j67V1iiCKMmnCimNnl0B1SVOmOXpeldROw/QN/LDCqiwlAjFefIful586NiINv5uyF3k1r8dxHIWAzt3HY4pFmaCq1bfAP6rvWRstnzPImruXtRvP2QYxDZd8lUQGj48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733765754; c=relaxed/simple;
	bh=3MmvtquxAwx9rwgHBoDysir4k/RXcRwkFuSjqiHJSiE=;
	h=To:Subject:From:Message-Id:Date; b=nK81xATwfx9iEqYGsksKzcQEFfWSFsLoTkWugaOOdUFokInF2FVExky5gUmoL017B0JRjUmpHdSIfmPnpY6LrBRLNWd2TeCGlPYG4Zcti7YRG/jj+QjwwkL9bIU1fUmtaFtTLfMPwXAxm1uaYLOU7dED0PmsdFLKsFezjK/x3Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgKTavLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgKTavLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBF9C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733765753;
	bh=3MmvtquxAwx9rwgHBoDysir4k/RXcRwkFuSjqiHJSiE=;
	h=To:Subject:From:Date:From;
	b=pgKTavLZ8h6xfoevKUnUQxGLtAIojsAUPlTZuu+5yKE/4iHYWsCWaWSb7rbJiIsKz
	 ieEL5CU2PJqsoWKX666Jpai+q40hjAXjwZD5AtV3TVunY9IeD+KjInQVxl0jDp6KmV
	 o5XJPeuPzBF27v+2jHR2MwRdlc3AeizRf7JmRCNC1rPoV3dGBxwwjAF5qkEgDIY/+t
	 ojSR4PTeCb7g3w1iysVoatnSjevYMwo9v95PVrgfFJtyfZcUj8oTSVIzjoliHL7QUP
	 UFUAnOdAn4FZftLxlLb8D/OF/lg7X2GmUF+K0llAbr4asMZR1htnx+fHYXLO8q8yUY
	 P2GgqhUhMzkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C20E77180
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173376575372.28842.3149483673553835296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d235d54b77c1355eda8d8751edd88d98264cd1f712aafaa5e76bdcd4bc8713
Date: Mon, 09 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733765753
