Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162F81684BE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776110254; cv=none; b=WCOdb7JVeig/82i+lKnNSjX8rGCIPN/nbj08l/MJW2F8rl53arfv8g+8lvIAhkJWuKmAKuNLhppPDwus35XTY+vgNgYvGnTxYbPuWdb84+hsGPxR1E5wEWCf6Qvzk5WduQImte85xlmsfkwohimNr/79bYDU6VVLQTLVBQGofEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776110254; c=relaxed/simple;
	bh=e1EvKgLQQhxCsyxvLlK33XgSYLldAXhXjW9nUh9W6Fg=;
	h=To:Subject:From:Message-Id:Date; b=JsyPv89OpaFi8isOMoBdX2F7qewlD6YWA5uXoPE/9Txpwt+4iinOh5Fuf3C5vDp/PAKRH5yBXgJXslB66ILGRzGCufyf6tH8EjkfHVyqk7/+bglWGu83z1WHA/NiYJLEf2Qk//EWxGMQFfu4uFC0K/rHdw+Q5491wv8GhGLLgM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stpPvqTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stpPvqTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB892C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776110253;
	bh=e1EvKgLQQhxCsyxvLlK33XgSYLldAXhXjW9nUh9W6Fg=;
	h=To:Subject:From:Date:From;
	b=stpPvqTNtGvnCcTVG92vX95O410RNnHyhOIdYoc4LshYK2xozXp5gUnho80AuqFhH
	 9QgltcyJLCCXSi7TpStGTTWUqCBZBOU5qYxn1z82dcRG9wYk4VGv7JF/9U2cG8KRXp
	 gS5AKXo4Tsoa8lpSd1W86xnEiTzWT9ynCfQmkZDoqE+hbnXd8VXWRebgMFgyejXUep
	 Tw7A8/qtAj5h8znuUr8RYITywwPzTlrXcvF0l0kKoggxMfJ2yDqawL5iyoOJLUGpFp
	 wdOi+DFVrnieNmBj9TLqGwi5GL9AqJ+4O7sLnB8acF4485D8KDzaMiyjJuGh2pKuaI
	 MEsFWbLcSr7/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD320F531CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611025369.23243.6885652377393365014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54c103461c03a5d9518f880d83b6b6c4d0b7f0b7d9ba6c4b8bf86b2acd44720
Date: Mon, 13 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776110253
