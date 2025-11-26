Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFEB3C1F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764126774; cv=none; b=PRNfw8G+VNIuK2x067xcQKlUvg/HoGMB6KuIxr/f/HuH2G85IkG30oy5CdgHc3/5pRlRjoRU32WUzyo1mooxO/VuPkcfTsU7p/zmS11NeLqn2R55y3GjPcNjkh4DTRShJDySVadLKrSjPkvQp+x8gXyHHpElWf1vo1DHaGfFc5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764126774; c=relaxed/simple;
	bh=+mZ0aDFZ6Xc0LanDT7URR5K9rsGTtYOUSsBT/4gxl9I=;
	h=To:Subject:From:Message-Id:Date; b=S6Prb4a5C82VlrBvcA33p4/UI3XXy2gbehb+KGAR5jhu+Lby3AycOS8uLpgQkPZfjo07N+gWG3Uh05tKmQCdDkfJcHx/QWFokpeBG+gjgiMQK4r12I3Z0B/UDXU3P/j4/3sg923PCGXLywfNxwWwL2Jp1WLTnQO8qCDYUbRPWCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls4X9PgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls4X9PgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A6C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764126773;
	bh=+mZ0aDFZ6Xc0LanDT7URR5K9rsGTtYOUSsBT/4gxl9I=;
	h=To:Subject:From:Date:From;
	b=Ls4X9PgKL37yH93NodMEz3GBNJEyUk1Gs7nJjVfRIcPnOuZMj8Vj8i4icsLz5HlgP
	 b0wdEdHuM39P+Gd6iR0TxsFO+IqPBgnbrvezttzmCmqh3dKd5D05c7cac30kXsYtms
	 GC4BKEpEMnCZp87RwBn044hknubtUDJw2YLCvNvn/1ByGPQ81IJHYAQRto4ZaPb9GT
	 rmrWP9IPcuKw/nxFld5zxih44xzHm/ssPLyrm/GpfAEYO0ZsJA1qY2hdPfIdTFlEzZ
	 LNDyrrlj2ia0456ffaoFI/XTWjC9Ji4OQdYyqgypHBIPJsvsXQx6GhhRw1Z5C/DCij
	 BkKzcxj36htQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9430ED10374
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412677359.20207.8415349706388905458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14680c4e8d346ff44d15d0352b350aa790d98c8bf39465a2138867a9168d563
Date: Wed, 26 Nov 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764126773
