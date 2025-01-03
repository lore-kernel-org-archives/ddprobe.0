Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194A926281
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735936554; cv=none; b=hoG3c6j6eizR/z6RHvCZSIX1U7WcEVHcZbdSF8bhaf1vXNEIAIMHM2DSjE68qQabzywE1h24B5NcAxbMNMtFPU4ynOjf4aklN7IkrZ661KscNkexp6WZThOzXK6S0FeMgbW+5MLoQ9okub8vZUqB6ZjXNm+Ef5iyrnhBevouP9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735936554; c=relaxed/simple;
	bh=bD+VAffzzyeB7Gk3PQ4hnzax2J6c1tI4pBTbmdnVnHA=;
	h=To:Subject:From:Message-Id:Date; b=suugcgdLhCdNeD8gjIKu4tZLYFIkalyBXWeE3+0Nctm4VX5YwNrG9JnkyClWQUuL4jHcgyfi8CZcywfcenRe59Zd6QJizNHBI/suIXQuoZgz+pN/VY6tVvl2gok8ewuX9d9QsoCt5BSLZ7/DiZX+VhDohz96eaX4iT6Kmk7iBt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSx6WQbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSx6WQbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678AC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735936553;
	bh=bD+VAffzzyeB7Gk3PQ4hnzax2J6c1tI4pBTbmdnVnHA=;
	h=To:Subject:From:Date:From;
	b=oSx6WQbIOKBgqDznuO474gMQwUuJI0cCp5f9J9lDugAVbbl3L5MBFmCEwov2XWHZ6
	 PvbNaqJ078h0mO34XJHFhnlZLkd4dHcsp1tb4ddS2EmDohmegdY3X6TektaEha3kyC
	 vOm0KEI3witwE6UjBr2KKgqAoARrpDmnnnjLf3nrWs9DAfHPIB23GZIFl5kWWG9PJ/
	 dTbdcXH3pFZtMi/l8MdAkh28WhtjbR60nnSHwcaqhcHivUKQ7nXI2BF86EPhRbWXIA
	 OzEgVdHODqi4FNt7T4o9TAktc0xtWO+b0dgcyZIbaRHcAtMkFkkfKBZORmq9KrXAjB
	 uASUgBE91MSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D4E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593655358.8501.16084438156647220175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880c009d02fb89e951aabb6430e142be36d16273559df8b9a444ddcffb68da00
Date: Fri, 03 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735936553
