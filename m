Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC883D75C8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777899454; cv=none; b=ABNxq2IYmB7v+bKuzsmBGVQ23++GO03gu5Q52OOV1X7qetiQ1GR+3Q/K+WnoDpB9AAzVPa02B36LKSDgH/orcB7YiaSMnK24vDy00qaN53Z3ZXPA31GhGG15NpC0V+7rpcrqfrBhJ3RAot6/t5/bRaIniHNX+8p9anzin9PYdXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777899454; c=relaxed/simple;
	bh=DrJLKzm+fFgWsNg3D0wo3OgIpVczDpO7fpwr5ZlSvFw=;
	h=To:Subject:From:Message-Id:Date; b=O2k6NbxzMJJ3EbwzaCqUtYuYfS3p4oIljekEpxh/RkaTxFEWQLiE5umZNG7tWa8qCMx25xIvZYKQkVssspulHpC6XzkAosmG09WA0t2BHM4DSDAABXgq8YJZNtQ6rtwT0F4AdlRy37DJQT4HLGs1CGFEJPdzK75oGupKEn6Ari8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maT+/qlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maT+/qlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F1DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777899453;
	bh=DrJLKzm+fFgWsNg3D0wo3OgIpVczDpO7fpwr5ZlSvFw=;
	h=To:Subject:From:Date:From;
	b=maT+/qljaJarAZZ+HzS/0qdxWRFZvbUhrhZL0vh4gZw/8/j73Zgc1ftw4xKBwFu5w
	 c0kJEMLB28q42RovO1RTOsWtJYzgNujrnpFUX3QzIewEuGBA89zV127LQBzmwe5DKm
	 YkutngMZm5cP4AR7YBUUMtdjmKCCpUQv53gz0lGUhHaqLvLvmNYfo8R9MXPa+/0SNW
	 tAoITVOerqS5fTU36rnbcEmAWpE+gMyGOXKpngn5MWDNu/aEiihBe2ILk3pSncOAP5
	 7OiIvTXf+X1to2Ii1V/3rF/M1cYUDM1GkyCUpDUNhLb+P+sC274vXsGKg4ePGyyYDb
	 4Pew0fe4K999Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9467FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789945368.19694.3795214011108277907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad3791cc53586341e854ab7979b06a28247ae4e9ceca1c8bed9606a01d498f8
Date: Mon, 04 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777899453
