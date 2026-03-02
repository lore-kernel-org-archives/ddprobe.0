Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB37A411622
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772466294; cv=none; b=AR7jTRPKu+H6X0WEmJEoN+uXnOZnmTLQT57dZwubOwe6t1Oxysd1XXfJYQdVPa5oZFuwN5+1FeIrY0lCVVEcPYqqWbo39crC48wfggq75cfEqAJ0MgT/6SOowecAOsj8ok/RG/mDEGiHLqQAJL+YhTk9gbzA7h10bCvQbnsbhNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772466294; c=relaxed/simple;
	bh=tDosr9uAX8la2Q2mxHuVquca+8unJP4Kfb6pjepUrnk=;
	h=To:Subject:From:Message-Id:Date; b=aG7Hdx9iSRH7pGgAU4ZgAQdENC+cXugxrHN4CkOSDhHw6a51hr2fe4N1IxxauWBiyummqWd0ZNc3PGE2mMMUWIzNhIeKOXGvBNu5SvHMMLVDMj0xwl4pk6JzUHq4PyRgpL0GplX7VSF5WbOF+h5e1L1NYZXq8OzuwBgx6qdpddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYSK7ftJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYSK7ftJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18BFC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772466293;
	bh=tDosr9uAX8la2Q2mxHuVquca+8unJP4Kfb6pjepUrnk=;
	h=To:Subject:From:Date:From;
	b=sYSK7ftJm1uL1MMGZ93zFrcd8hMl62/0bL5kgYM4JBPoxYTT5SAZxYUYn+wdOYIGb
	 MEzpH4xSxolZRZ/A6N6VxMmn+dCKDtBdb22U5X/lw7bEXjxvi97ffbwMDSa/EhX1/r
	 fAFW3BjXO00I0ObS5dDkgbsiKMlLfk4Vxp8zpoGlR5hiLGlDkQUBes1BMh+QaMZZoM
	 J4PopJlAKkUrHDBd6VViN6pGdTUJyAvXAUq4HzMNixFYsmaKo4utxBQLYZXptjSnEC
	 tAN1/I3SkMKxQeVQikYbK2gm/LxZg5SFUpgvOv47LrxWmKcxGjPLxzyq1S6JccEumN
	 1s9e54IaHKqXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E57EA4E27
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246629366.20037.16695382527653552743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb7612cc949a99019ba94629316c130a71932e914b7564082b9864bcc8e2fe2
Date: Mon, 02 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772466293
