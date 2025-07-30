Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142E2293C67
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753873794; cv=none; b=G2sCkD1KJIvhiBLOmbyC0kU1U49dM53uR5OIIvcHfB4OEhd/L8wEia+vCJLUhrpZXWfFm9VdIDFFqsKO0525zxMZXjOs2Tv/TtiyDETAa2nWY7TaD/eoKdENkBikCI6zl3BFNY5ti0efZhRaMPlYzE+PZajIgXhnqpLM3DbJPSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753873794; c=relaxed/simple;
	bh=xR/hHIXPAP9f1FxfaL1WJTc5Sc0Vw0lHQSCLuRvDrOM=;
	h=To:Subject:From:Message-Id:Date; b=FArOPi9XZIuHmkuzxRWz7OP+zdjFs5fXB25nQUHjYJEo5Ou8/PPDHf4Q7YBrCaRzxSrRUCLJUDaSGcniVpx43UnEwi8366pSI9PF3ZXAyxDcKpT6u5zCVZLEngarR7ALJZGPKETra+5b5nwH8NDdDVmr3TWSnyV8yBJhf0d8OPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2sawsJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2sawsJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753873793;
	bh=xR/hHIXPAP9f1FxfaL1WJTc5Sc0Vw0lHQSCLuRvDrOM=;
	h=To:Subject:From:Date:From;
	b=c2sawsJ2Dk2Webg3CMzrCYPcygbU6CZYmv7ye58mytMG3iqCip3pW/KqjldE2J5IS
	 60wPgbOYNEQXLF6boBfoW3DdFd0bKn8GZxXRmEqh04+fknE2x2Yg2qQylizR/9oHkp
	 AaGwdZAUdRuigb6mAFx9Bedq/8Y9Kh+Bp/oIIUlCD0KB3Cn2A4FZdBB8BWkv1x59HN
	 rm2itVKtsT2GZ2jM9Ns4CaINfZVJV622rRFYErn1ab0PSAPYo4MuXw1wHukDi3C1Uj
	 QhZZ10zBV2HOTxvLgxRJxmGSYikavXp/h+Qpaj7uUng8F+tyI0K1sgz5yxgkg3mjFM
	 d/B2vD8MSybNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B3C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387379357.12266.7619196956665681398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8eb3336c716c25ea6033a899796f7ef0c4e00480b236ff8a0e704ef4000ad0e
Date: Wed, 30 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753873793
