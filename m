Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463B131E83D
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789357834; cv=none; b=DElHpFpMNXbzhC2tH0T9eIO5dGfw5Yl89P+t9NSeai7E0OkdkUqfNwX2cEGWmcaGZN+LhE7uiAsJ88MQLaQqPCaqbzUIoh2W+5fNFxwGvq5CNYxllxl5GnyG0+8MCfb3Je25Wg2JYUcRREVvEhymYdGqdTj3a5EylUZXnHNwGmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789357834; c=relaxed/simple;
	bh=3JLQL6+Lw2Q7o6tfjn0C9PR50/nu3pWrxjTk44gItww=;
	h=To:Subject:From:Message-Id:Date; b=SjllmitWFrDXaDH9XbwfjwHIPIfPzSOInumINSHwQOWdD7aB3S/WPzI9GgiWhs/rh/i5w95x4Tbvc4keUfaHOom6265Mu+sqwiJPKJc+KQHiGmxV7NgxFKBhgs4wbu9s5azxXqn7yDd6n+26lNFmSD/crcMZ70lDpBD1jxUw2gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3aYzbXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3aYzbXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D397EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789357833;
	bh=3JLQL6+Lw2Q7o6tfjn0C9PR50/nu3pWrxjTk44gItww=;
	h=To:Subject:From:Date:From;
	b=l3aYzbXGJOguAl6R2OfURyARpPAydyp/r0xTu80HoFqSOo/a1KoBAhoMlWoH+AUe1
	 wI3bWFa7dWAX8DUOHjT037wop8q8DX9Kr4tg1pXmZ+t8u0jhkRyDGt5TfsZRZz/Sgf
	 daadnViSI9M0CKu3wGwztDu/Voj/BWu1IoZ4/tuSZ/kyGMafPnWEnPK1I2e84qTNFs
	 pXQiwc8CPVusvgWv3N2b7qyZCpC/BR1mTqPYVYUCGtAn8ujaWhJcwcU4rTjgXJ6WyX
	 idTt09UCHkNhkn4/rLipk9pnvf9hypX9A5zM1DAvSvAQQpcYTdgMNtLUInG22+pyDd
	 Il35z4lgCDngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9C7C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935783368.20298.6023851148003316096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1368c80888ec5d701d4f735568809f394db3bc3c43903ca2569ed1424a3b45b1
Date: Mon, 14 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789357833
