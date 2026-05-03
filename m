Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA9B3128CC
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777847853; cv=none; b=chQ4UP+JWtyuapn4I8XIuZtd2Z5vR1ESS2HCWhoyHyXyS7+vPpmr09GHHWCfF1yeFRgm97eOkEZHCG9eMv9ob+RQWnYrdvYH0HhhdB4AeIH8gjEk1I1V64ameFvW+IXL8gy0P0qjaMB3mnI1XYJxg4FBk7ns92bia7Cd4TmjEmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777847853; c=relaxed/simple;
	bh=oUnCgon423REM3EJNMKwqjjFgSmVxigC4kUhQ8Z7khU=;
	h=To:Subject:From:Message-Id:Date; b=triRGhKiwVrRilcUW19sbJQS3F0Ar6nO+bAoDmZkwnmhFe2aDOZ91wioZ4YUeMMRwXxei4VBpfQ/3gOcJ2guIhBtJLQmOFYz+3vYbO9sB45UfxdSdDrH13XfuMpHQCK3Eddb/uKeWyuc8Naoc9v+3VYsmBnlHUIEa7bSm764YeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A62L6f4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A62L6f4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C002DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777847853;
	bh=oUnCgon423REM3EJNMKwqjjFgSmVxigC4kUhQ8Z7khU=;
	h=To:Subject:From:Date:From;
	b=A62L6f4Ga5CGetO9RULVrTsm9v3sqAURoDgQpIREEpP07WH30cEp4IY0bPGl7Mweo
	 PJI8E2QyhZuAuLW83aUnv3qCm06nTcZukXC8k8OL5OF5gzTaYueXS8swQcwxASMuwi
	 Wvjwz4j6ZAbjAf7FiRaXQkxJAJy2W8CIqREcZrcdbwM74XdK2gx+FiWGqVWBsyptlV
	 ievdNKINwRAjRcnSNGS85n7rOr00ZO9bs81JfcpP7ntqVCM6nlHjXxufclmw0ezpQu
	 JhBBDunOYt8zkb37zADI717498l13cEk4qV69rdmBL712Rt2p0Gxdeck9NpJ4fdGvh
	 v80FU0Gbjo7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE8DFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784785368.13522.292838736020343138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d266c28059ad362915411701b574bc30d723a562ad296bffe876d577a0b635
Date: Sun, 03 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777847853
