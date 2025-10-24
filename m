Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7B732B9A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761331194; cv=none; b=Mzpi2nxIuaKYi2X9NfxJA5dfFFGKn7ZdUqGXd8Q2hfR5OSYjkzdaiD+wOL5DsmLVfYKEVUlOwyP46gGO4MoQkvDsQzGmnoTz6V2kPtkcSKNShvI/Kfo25GtOymCDBNDRhqgZZcD6qSE55AtGvmjwssuzxBNj4Jmf2NcKmqErlYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761331194; c=relaxed/simple;
	bh=qTHf9KoxVBtQpnKooWM0ZAsttaljojZ9ZnJLs5ylGow=;
	h=To:Subject:From:Message-Id:Date; b=nKgrLdfZFCpxjUdlR5fzx5dSJ0KoooTfkYFY1/gXmNiFsUzhiCShfdBkXfK1FMubPxoDNJ2DahIqmOadjs8N7NwmgUaSriQkHWsGd9w35i2q2bg3a/4MgxQ2qW1symzZXYyw5Yg5X2Edsn4dnckrcTIIVrgAAreRWdtUTwwxmZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVWhaSZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVWhaSZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01A7EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761331194;
	bh=qTHf9KoxVBtQpnKooWM0ZAsttaljojZ9ZnJLs5ylGow=;
	h=To:Subject:From:Date:From;
	b=sVWhaSZDc4DGUrGKTQ5Q6j6MNUawdatK2V/E17tfJGc3aT/SCNBHNzweR850NgynK
	 7YLj+Gb2JVRuumq2vcoZCO5cmCNjCHBJoh3YzwBoyq9mDjdK3HvhOJkqxtyKRa2c9o
	 2XGDEEMsf0GI2V5qdF+bF/2Su+Y+9tvDe93FIwcyX1RK73dq4/Mw2UGszcmvU0diEA
	 5dnKhkQGjERuz9/bRHXSox6dyIBey/W164bjp8psoEkqrioL3PLRPy8XUyteNjZwE8
	 bup3BcImpIcR2TaU6mHBhG7nGsK14lcTC2KtoYi3sxSTY4a9LFS3ximwHGIY5UMd3J
	 VEY0oy0MxYiAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC417CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133119380.15434.16821837522688141005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ac8d1cf2e590b39b5d20ff203af72748281d8664c4fde26b0e13417c063978
Date: Fri, 24 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761331193
