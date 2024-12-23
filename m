Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AC91392
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734917154; cv=none; b=GERupzz6DAsSD5jFgaGRtDHOpdd2uHzInhEAxkMv3lf/O66Rn9npIgy7/xC2cCE91dwE36Sj9iLkvWT+jC1pML5DBox80cdeUVpU3QseIr+USSF7AARvkbq7S/g7L0cER+j/iGa+PYC65t2EivIkaa3zLkuzSM+1AfV5ZXUohV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734917154; c=relaxed/simple;
	bh=BTOgPFbGI9D82Ec0YVev9uS6rwNJUuO+BzzyBpeXehk=;
	h=To:Subject:From:Message-Id:Date; b=pJ+oiGW9recGPE+IMnnjneKXx0JTARehwCjg9KdRqxzaS8axZiV1/ms8lDALsxJ/PU00xGiYzAgMwgh7BSZHrlotV6T4uIpvTHvlNbdSjRV53zw4/aos91400hzmK1kOseHDj8c4jVDSiKsR/JJDQb7V1V9cFnoy8uVtOc+Ff3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J45oqThx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J45oqThx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6160C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734917153;
	bh=BTOgPFbGI9D82Ec0YVev9uS6rwNJUuO+BzzyBpeXehk=;
	h=To:Subject:From:Date:From;
	b=J45oqThxxoJ/NNvAxoPodkYhJ1qx/QiTey/fiD6MrYb/HxCaMjJpo7wTh4zDS0WJp
	 dCDKt9ZL5q+J1mESBM4djrU3l2xK1KGqKDTpaN80umfj4oo7QXdpxWzVb19bD9Ztbu
	 jPmAuFlJC9G6ae/iPYkKbyuX9qr3UFa+pfNspiwNPI+/oA3I4Bc68OH5uiBt0dbHCe
	 ey7wpMDp96ulFxmpCwL2T3JGK4fCmyIjFowpHQrnTHbujdGwtk5OEa8+msTejLQyRl
	 uNmxJCgXrnH+GvluT9YNsCKtPEYoCoHM3n6S9KEVo4qfRefNP6HpQ/AG8M1u+rbzvu
	 on6G6WkkkbpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB3EE77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491715362.31629.11387782414910061650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c14c3beb300b65534db4e5b81f903951d8ac564ca6ad9f41488df221b2092c2
Date: Mon, 23 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734917153
