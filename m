Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182BE800
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735434354; cv=none; b=tA7vZwDJn25vgiPMa07AyO5ILygA6oAGisResz/DEp1ttqDPKKjJak3XoGGaVpetGBEQbW6e9f1xOA4rf/G4KWQaZUoqKu3EW88iHHbb4Y/dTmLaxb3nNROuJ/ag76e4K6Ci7n2rHDc7Pr4JY6IzrPM572VbaC92pXvgw3hI9mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735434354; c=relaxed/simple;
	bh=vmNFymu6Id/ANmrcDqnDO3q50UtNjSa80oXFNCiCycY=;
	h=To:Subject:From:Message-Id:Date; b=CKemL9jWNwSh6R3gGFIAfMFV8syJ7+deVblL06HoenEU1OZebxv/p5Rp9Rj1p/xgzRwrQCo1vldCQQG9CTojpXQn7a6NGX3QzVGDMXkJj2TbjFLdt5g4NYao+V55Hlku7958oVqP6FDrU5IqswkAycZXN48S94OJWPwHCtmhfyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqvK+MZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqvK+MZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD72C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735434353;
	bh=vmNFymu6Id/ANmrcDqnDO3q50UtNjSa80oXFNCiCycY=;
	h=To:Subject:From:Date:From;
	b=JqvK+MZ6+uY5JhXlQ03g7c13jTC0CWLu4xdNc7Y8K+7jre+68c76GoyqhblmqEPCw
	 5iBGmTSYFaXfTd1VTyBnQFX2TliHiU0BMzh0Sn3DS2XXgBNmKgsJnSZpPGe8khaIJJ
	 mDaYVDe30FYUTT5XrGE22md9GMm2y9YwW5CozdFCi+8pzPgGVMt95pjiyD2Q/vL5KF
	 Wr60sdpSpQ03mzCpWjo5cdWQUCZB35k7iBo5nYkA8M72nfM4uNQcd90UnYn7bXAfv3
	 67GiZL/oLE0IcUphG6lKfy/1ohYDMaGTPdZ2Yxc4yuFypEKw8va/qe44p5fg9HSlF1
	 uqc2VLy8P55Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93630E77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173543435358.739.17145512266448003883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737992bb261b75acf838cb4c699f3d293d715c408cc9183e4387eeaf9c53190c
Date: Sun, 29 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735434353
