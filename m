Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C283422338
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749656393; cv=none; b=rw3TPRoMYKQoogu0DAELgnGebpYZGfoWMGL8m9oPhuhjEa/5p1oy13bbfmiBg6+OQ0wpIOIRMmg8K5kWMj2d3itQJWvwlgx0LNVPxCw91CBGGvWEQG9J93FzivgRQFbMiSYX/FHbYD78v0Yi1sRhdRjspOhPnXTJguHNfZOpW14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749656393; c=relaxed/simple;
	bh=WBpD6IQRe4QQgDUEDTDvNaUjrU/XBqdnliVqYn6bYJM=;
	h=To:Subject:From:Message-Id:Date; b=nr8UGvT77ltP0YqAQoGwkJX9tuXOYI4qsktt6Oqfg/i8dHbLivnMXk8FZMYN1f6JrphC2urkTVSMq50/on6gEe6Avo6UlsRU2mIRi/uM7QGM7FLTjyNBK1cp6aZXAfjz5UuguTZtkz9nq0EtejPxv59QXfgyR5ZaFHdagyzcN/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o387yGWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o387yGWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2493C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749656393;
	bh=WBpD6IQRe4QQgDUEDTDvNaUjrU/XBqdnliVqYn6bYJM=;
	h=To:Subject:From:Date:From;
	b=o387yGWEiQaCICdR4XcMiEYzphRdnCqyMZNY6ncZi+YvpNfTR9p0lkRJa9dku4WB6
	 uJithcueieyRguQhI16zH44rmDtEBrHpkaEq56x+fBF/6iNfCRxKZi62BYPkqBywGi
	 9EjKk2G3LW+Twr2auKuDGC0iDcrJgfqAvgY4MNgujIr17gAhsYHP5YCV2Jb9n9jBYB
	 AxNtIGcd0Bk8g6gVqhYwsVVZvytlHIEVJPM4fGRhCiZgSvhZOauEtDrxp45WWTnTO+
	 sDA70wiS1OSik/YgBms9H+yX4b0D/4M6uRrKQ9rgqQ4MvWY6taHbyi8yl2ZSJRvfSJ
	 4B2syIxr1GoZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90139C71133
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965639358.4736.17011004493517271532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0c80bffc8d1e92449ce3f78f215e09dd7489cd0ab4d87e6e2c56fa00c9a7c3
Date: Wed, 11 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749656393
