Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A446163
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724548554; cv=none; b=OuUBti+lpFdFZzbSz1SIYS4BW//dYbuFAI8keZQRH6RYflmK+hqZT4vEUlB4eLvDAwRKq90P5WZFoXjUwgT51qiXDt/S5hWu5wET4IQq4WPgKM4BVcExchf7wia+DeOPhxcKoL9bQ/gAfXVb6xia/pJw98EAyfLCzs8bL1flFFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724548554; c=relaxed/simple;
	bh=tVXdBgkZArAYHfVlAgGqFFAPCKKn4n5B1x8YywhOo/Y=;
	h=To:Subject:From:Message-Id:Date; b=rxWhOacOahlY/GEze5Gxz/4UnHkM7JAEW3KsGB5bMUi5SlwHvJshEtCnS9XdXoBxFsskXGnik++qmsUnKoLD++ppWEljFxlxuCY7sUxkti76oV3/nQkJjgzoKUGAq+aFVF3q0fCE+4aBHuvB8Yi8A6a632GghNwPTQGRez3SznY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/A+nALb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/A+nALb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD15C32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724548553;
	bh=tVXdBgkZArAYHfVlAgGqFFAPCKKn4n5B1x8YywhOo/Y=;
	h=To:Subject:From:Date:From;
	b=c/A+nALb+EO/yIKzeiZPlby4kK5fqnM3JfSrrlcYzo/AXt4+ty0Wsd1egldIG8Lb6
	 jqhu0Onu6Wpfh1fENbvkAOuA3NWmUavv217OtM64yvcFXyImz//9YTuDo0HhfbxaFp
	 fcgFXBm1EXrP8AdK1ldgZXohaVjT/cbrMyU04xCO0vJtLjdyg1B3yYPtrV3qb8WrxQ
	 5TboISzv7TfF1Z0HcW8kBtG+o/aAQMGPX2qn0zHnSuDEIQnY3JmdY0NpVrWxis27+s
	 8XFCOIFKayAYAkMcsaafxbvVcRDjCukzQzeyT/a3N+xY7Wmkl7a3saq/CSytiL7ySS
	 R1wQZHWSBaIHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731BC52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454855358.13955.13169682603867104189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403c1b6d885ed69ea90847dade792f7bac1650f09707f22992c84bfcad236c88
Date: Sun, 25 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724548553
