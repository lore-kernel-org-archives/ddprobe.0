Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F33E6FB8
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715551343; cv=none; b=pMFFs8WplE96unCQvd+GQZlsPM4N4z8K7UYT3XgW1fjYvGwAC5P8d2zSPpxh83K9k4hn7dTjY2KrM7A7Vl5AUSRmhRgulfB2lrgTkROGEdFsRfj1vhqFtuTDSvP4e4+pZK7jnl9NGQ+be26LrgJpuZvjlrQD3nVw8r38K9UT0dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715551343; c=relaxed/simple;
	bh=eVbMUwOGcE3T8hVbEApqFSeLd4IZwBN7PnO68WXbSXU=;
	h=To:Subject:From:Message-Id:Date; b=FNrp6D6xmmGszPbZsqzATmt50k9EU9u4K4gsI76veOnPMJhSHKpjGAQH1c5W09HXo6Qm2XQ4syty6Jx20BVMHsiZfCy/cuOIr3YrtM5AevoNdAe08GM2nl/X/mZF2sCnw6D4J8jgttFA5CY6N3KwnPtSW66lj1XTxZpNw/SCjtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtdUXGXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtdUXGXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 168F2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715551343;
	bh=eVbMUwOGcE3T8hVbEApqFSeLd4IZwBN7PnO68WXbSXU=;
	h=To:Subject:From:Date:From;
	b=EtdUXGXDO+vbdROOZWmo44RlbBGgtTeRqo6kddzp7r9NFdYJ3LjY8jYBczfGIqq/u
	 GoZ+GS+gT4aHfpVcnKLSXBHV754OlqO8w8MXPpj23gju3BQN7xKQF4fHPfZQ8++k5B
	 NK7a1sxZB+T5/FmeY7OR+6+qx39A97Dy+XdVRV5g4vLeZZiGDAifQ4CA4X3C+22W8e
	 ssD1NWubH/u9M1FC8EUbtMrcCfZU+J7yE0SbWTjTbud4umcWmnhH8bw3WB985rgqnS
	 qLgb72MVdlbbr98eX3J22LN3wgfoR0W3mA5PCQYOGUjhaKE+aCKjM+PngopEUwwjtW
	 XaeZ7drUX1Prw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5723C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555134282.19940.17835708065049883463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f734f2935bcf5bcb5597bd1e02323f89b6d050310e00137321769c65149c66
Date: Sun, 12 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715551342
