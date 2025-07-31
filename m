Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CCB22318
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753927194; cv=none; b=g6Bz0Vsu/suxk3yvNJpxpts+z+nHARcrYh2ysUFpvHnvtdcLIYIwDIcy8beYPps8baxodDgmknYcYOWh47y4ECwHhW8pc4KirauXrSN26fxpmYFmd4CxJueUCM7rSUjOJbCv5BfqJolMkE/H9qNtYVH4ybTyJcOhHPJzmriMzZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753927194; c=relaxed/simple;
	bh=roRuXuY1U7Muz2gocib5+zNej9gjPFsvDV3GpP90Lyk=;
	h=To:Subject:From:Message-Id:Date; b=uixuKPBSL2AAyo0A+RSGI0uZknERFaMnbqp3vRDi+fCvRQM/jM7uTvxtp9cPK9cx5S5ZOYKOGH97iX+Wn7ERf1Jhefx+GedFeNJFhBjBrBEmevkqm8LHjSwrdPldvrh2ueN0f/4taLuEEcsvxM2p/s+UvB0r3vvJgO9bnAEX/i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qArKbSO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qArKbSO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753927193;
	bh=roRuXuY1U7Muz2gocib5+zNej9gjPFsvDV3GpP90Lyk=;
	h=To:Subject:From:Date:From;
	b=qArKbSO4FeltKr4yDfDkvPInIUaVUCrGTirIfC7yts8QRR1cBCBSXX+UMfjmQGN0n
	 xTLZINuRxwLO7GdlsV8IYaIJVUOHEuUxYSE8M6Z8faVwGIIHxfln9bYL+0yXVzNuAy
	 Z2CwyRSOT0RMpciTu2roIe6cpY7RkTacUgvtJBJUysaVZL7MIsYegySEZ0ZwnG+Hku
	 1nzGmLs37IO2gvpK0pXnY6WSMEaD7HnRQJFi4XfZzvE33D8YDPuxNEe3Y6kj8NSx7P
	 9weMLCmWiphdgjLMX5DH3xaopyfve5s4XaEdLTdBvTwpkdsNU8MTF/1NNeQZAwtktN
	 FAG3+RweWKWzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C02C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392719360.30259.14812720233159817392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acd5c35186eb06d95299c2f0f9d704227aa5f895b494d460c6c83f6ae06f5f3
Date: Thu, 31 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753927193
