Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6361AAC4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745585994; cv=none; b=Abywo73NIoWsig9g1Fev8B6ZhuW191TOAnFWGj53x60q/s87H04AY7r2BE68nkwwTB7ednEhZxMNJ8F8bdiOdRTVKFBpjwJulValGLP3aGU9IC9rmGTCXzkGQaL813yAjGdqCBOc2Ojb1H8+tIHTPbxWmJNpGIDPNAXy5m4Zas8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745585994; c=relaxed/simple;
	bh=Qvm7ZezwoIEUKXpZDeAQX3slX3lUfulPZt7Mb5WLbTc=;
	h=To:Subject:From:Message-Id:Date; b=FZG1Jn1j2zcIZ8f0dboKavPlIiO2akUFP+X7t8Cpbl9zdO54UCAG9/pzpADEkxkTBc+1vlsZKn/18TzdXquuBMKOKkb+0PKlEBZjxEkxXHR9Ht26bu/mcDQJs2KLZV+1m7FqHQczczxF0Ar1jiuVKX/0dmwlGjAT9JHK+UVi850=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDdw85mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDdw85mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00C9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745585993;
	bh=Qvm7ZezwoIEUKXpZDeAQX3slX3lUfulPZt7Mb5WLbTc=;
	h=To:Subject:From:Date:From;
	b=lDdw85mX/CooWMs646rz5sP1K91XmaeV0kEtVkpSwvyqT+r65kQBCawKQE/mAKZgD
	 bpBc4C8s5XaEMSt+F/X70WBmbMIh/hDPbURPoUpD7FMIMFSDpVlcbNXLPM5CQQKWNZ
	 Ymc9ztPl3ShKcO/YRepuQWn3rld2zuT2nFZpa7cVHQ0zN8S2mzXz8RsIi5fFtxDBuq
	 ibG0I+tXpnzYQGleGGNrAHTrZkPcylkm3Ow4Z4PkbVs+rrvZYYtEWCeQxH5HA7+l+l
	 xxPAenF4eQPFomHbcdaCKtuMUecar4m1t6JObkIxjmYZTEL8ZmWerysQaCX6aEiEht
	 96udUkHupS4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E461C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558599357.13446.8890917370145636097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ee86bfd9b9875a65a8430ad4cacabae88e6bdd592ad5d134b3272dd782f548
Date: Fri, 25 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745585993
