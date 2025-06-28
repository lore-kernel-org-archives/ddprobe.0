Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0EC78F2E
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751135994; cv=none; b=KIHS58IqZjWdUjaaZslO/M/L9AoDX8lr6fiQ0FHy6KUj7MXHnEfk4TwAyQUYtYCfQ/0J5gQuf29gUfbCSYAPhbIxD2JQrBOMMpiZ0zwGFCOPOhieUHHv4B95WKu8lVt04H6pNazvvfyUFFG6S7UTRa+jugsRocgW2lVN76bp4cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751135994; c=relaxed/simple;
	bh=DQRvNlan1ZmZ3jxdYtRvKxBBHiHtF+KZZTSyFBgqk7M=;
	h=To:Subject:From:Message-Id:Date; b=YnkrAKurT2dm5xS2N8cmrbhG8nKUaR/7SUXnoghKQXbHht0jjyeO5orhieJippuiXQ0VaVgUC+s1fNCo+/OHl5/J9gCEYkW4sFsRIOIVcxkJXwP3zmsWvHnHf6WuKM6DYQ4om2nEbp5onKEC0MekGvgAk1Q014b7UHYGiyuEFfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJIcpNLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJIcpNLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63DEC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751135993;
	bh=DQRvNlan1ZmZ3jxdYtRvKxBBHiHtF+KZZTSyFBgqk7M=;
	h=To:Subject:From:Date:From;
	b=eJIcpNLOCwQbZGw5o9zfV8N+xKqKV2+CBB/R+OsGg12YazshrICF4mGGN6SJfA/eD
	 nXui7R5UorfV9bG9ud/R7u5IFwXaqgGwHQ049iomPcqTclz4a9LDS4YodBoZnz82x2
	 f1ralfL6ujZ25wEDjPY6mKyN4WyYYuq0Lv13vlLUDVio4tFMISwegY0JU+3Cl9FMzp
	 NhOfd6uAeNydj2ysBtIbfn4qN6wwhVswjS9gPTkAJGezK1DkEpRZY3WMGtXO96SCCw
	 38QklsKowNZ/c9vFU5b6LhElSk94aK9c2FyLsR1vwx8MwyrCW60Rjl9ORTSsg5kkDO
	 YxxtAtldbqL/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92637C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113599357.4287.15634143472567780722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edca345f2cdfb6841ec56538e64cbd3e5404add5f70baa284737391341693ea4
Date: Sat, 28 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751135993
