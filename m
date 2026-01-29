Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2462D2FD69B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769712234; cv=none; b=Gzuc2DLrt5nP5B3qhJzsl2g1GodZWaED5AmV8fmDwWfm3gehDr3DWtE+FiwuRB90nWeaEt1uRvu6zMFubvV1jJLxrJke4do8lHin6/ugKWYPQ/GIBKonTG2nU3dfyVbtPNXWtEUOmiEDhDE7mLaUFrQdDAvvmofoPMyMQBNGgDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769712234; c=relaxed/simple;
	bh=Zf6YaWJheJ21rxnRry1hA8BD11KtaVj9wxBLHqptzW8=;
	h=To:Subject:From:Message-Id:Date; b=CsIPF4dvZHirCzOsaoqjh6ks89MlEliaKszdY+lVfUi+XtfNmbXld60JMgEy8gV6x1D+e6oruQ9d1rR8S1YptrL9rnyytUU9NkZnssALn/AgfO22uLSnBRhBHNXmkdp/Exa/8nl2FbLNiQbtVXOSUqqVsO6GwlOI9zGpWfdwDz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDt49XFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDt49XFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C70C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769712233;
	bh=Zf6YaWJheJ21rxnRry1hA8BD11KtaVj9wxBLHqptzW8=;
	h=To:Subject:From:Date:From;
	b=LDt49XFinBRz9A91jJGttM/VRf3WydgW3tmQ6Tn1y0dETwW0/gf5t7+pPNHEcrAE+
	 TaZPYO9+cQwgOPqd8tRJUiIHwsrVCm3TXr1JCrCXk85mveQp3GyoxFmestFoJ496ZF
	 V/Yf+43rKZBdFwH14p9v1+6dR5ARA2Hu3tQ7bZD3wCE9oNYwNGcB8AsD0RKnK5Quig
	 a/XPjFzpulDs/ftiNDxfOblxoUyRaDGdobHXezvapwnmrCF8h5SsoZzjk6lKL/uB7y
	 8UJ+EalL47N8RcP5S6nxfoOMa1/W7RDkXyiKb9ebkizVREqLvDYNVDbqN6fNZy4kfY
	 +nE6u0w3WqubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC8D73E80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971223358.30767.15903435612707841024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74fed40a75ec0c487c859fdee97fd125cc9c82128bb5e4f5763a89a6ebfd953
Date: Thu, 29 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769712233
