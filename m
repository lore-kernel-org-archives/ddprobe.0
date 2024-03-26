Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CC2128823
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711422497; cv=none; b=Rvw82czgpjFfQU3OQuyic3TvoDPDzaE+KMtfkdDeiSgXg8R5shJ5pGAzZyBmll0+uajzFmaftkcZQfLHOhOeiEXeFDD7vUgo+nvs/KVji5A2gcNKamPTSzXQQOUAmwmGC8S/Y3UcXkqUfPaFbrQQpcuY61IIBH/P/93Gu9gXMx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711422497; c=relaxed/simple;
	bh=L0rvmliSqw7OYgrohU7M//R+HJucrpU9CkmS7MVaEF8=;
	h=To:Subject:From:Message-Id:Date; b=eqCAq6Wg3CH4ZvqM33sGV3vgz7xM4c97OCTuNfQufXraYMenggzmFsd336ocRZ9BCrBIW4tr7Ond0deQ++krmL+Ypuz6i9o04O4i0pCTSpOphibN2WKCYz7hG/WCidaAsJXxj8py9OrNbk+I+i1kdaDBbfVLenITiy/TnaT7CJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/6PwYDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/6PwYDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71806C43390
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711422496;
	bh=L0rvmliSqw7OYgrohU7M//R+HJucrpU9CkmS7MVaEF8=;
	h=To:Subject:From:Date:From;
	b=X/6PwYDOgaAozXbSWpLokLnv/lDE7idjH3HuyC/DoA0CNRiqEId7i8k+OoXo8Lpup
	 4m9jOK49xOh6nAuC7tTl7wbiRQ7Z2Q0BeIq5gTsuhLbxNgepmaXfXjbI65w4INnznh
	 CSZJ2eM7F+r+xsmCz0cRtDphCjonfCXWOw32rvBeemRvILKcQbsEiUZceWxd9tKHRb
	 63hE0SA9v8j6DCwcX9yc13j3rHhUSYyQAovpQ61zoangy4fhO4M0qv3uc55ICB5pmu
	 2JKL/fnOY3BcY8rG5E2YFTrVIPNVcJE345tUE0XYBfRiVjCC8nSJctWdll7aE8Fm3v
	 tqjInrdTbXbcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A13C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171142249638.11855.13852573296408223701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680828879f33ce345b18cf037e4adfb1a70fea69f2de82d256cb51617a12afac
Date: Tue, 26 Mar 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711422496
