Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D3B4C62A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721850354; cv=none; b=HasLNGIoMTouXLbwNJca7upOOqRTdoDRSMcHXQ99G5L5nMM2/lIJR6yUdcS4Cva2fsIGwM9sVPf0w2kphxNYktiqbM0h+gjO2dQy0af3To6Rk/S8ilOhLJ8CREGceIE2mr4EYUhF7e73eoPtJ2l+SGMCshb4LrxyNtwA0Q/NdTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721850354; c=relaxed/simple;
	bh=89wYm0yCvw8PCUxy1iYNFOLpd8o0f2Hmq6tmfl46uIs=;
	h=To:Subject:From:Message-Id:Date; b=q00PWHqBEDGJa9glAozP4tgEdmZu9iI0hSVhthyWf+bMHAj4xANyfVCQdJ0c9OLVc/+3VcEhuW27DRedFCHSHujADBLEewOOoq252UQ3OQ9Y7Mf5v0r49ZgegvT7sBLoX7lrgHpSUC9JL5ZIX4XqFmpLda9hlHfovBQotivF/yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBEXxNtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBEXxNtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A65C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721850353;
	bh=89wYm0yCvw8PCUxy1iYNFOLpd8o0f2Hmq6tmfl46uIs=;
	h=To:Subject:From:Date:From;
	b=oBEXxNtmWJVgyOimbcVNhOV5EYNE4/nVh3uYy16YplyUrdSREw1DF1zMsQck9HeuC
	 9ot81uT2DEWbFp1O05d+2TIRA9/wL1YODFDmYFThWwCfoHICMtazlfBX23gqbdK4C0
	 kKFt9CwFgX1k3SUccq47U952IfhCgSDvLQn5+aEeFcDSJQotH9QbVX3EWK+oHnQway
	 jZbfggz9z9k6/hwe0Uigkjjp00/oWI9g4KhAA5H9XJTKGLOHBMnMJ5jByDiuos7mXM
	 giUhkH47GIJzxpEpvtwXayXIjvlGAUkQT6mF31lHEo7pvZHxStGGbLVe1yq03/b9B3
	 iIv5O8EOEKkxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9907FC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185035359.23808.4557002472320207491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9b56cb6da8558bd2477d224b18584e49ae205a304f3bf1058499f51139dfca
Date: Wed, 24 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721850353
