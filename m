Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9C3199FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730320554; cv=none; b=Yk0dXX0sUitJ04XmkHxPHy95+euXQJh6vr3qlSiWzScZwzf29CiHzMvR0M6SyRxJv6K6I/+m/Srw7FRVaysHLzSueLS6SwQTHlCfF74fjLNIyeT2IuMoc0qAhrJ4Kokbe7zFarcva33fXAfg+z4v+bRhdQabP29+DampD9A312w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730320554; c=relaxed/simple;
	bh=bWM8nh2ZtMc2VI/tb6BkBvK+tPAmXZbyJdo40uBp6UA=;
	h=To:Subject:From:Message-Id:Date; b=gyuOwWuJefL/K1NDgVkMtE5Nx0ADC6hUzRj0rp8W6JEnLzLmfSr69qI3PUTEBIxECaV1ZKttkfvzpFTdZBXo6Se1YqMaQXlr18MmS0fSrekF8QISmglbwgliiJmYmiRVNTBHAigJNPN4vWbR2PKkf0qEYbXvUW3o1vNRzGE60to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhVwSacO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhVwSacO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA5CC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730320553;
	bh=bWM8nh2ZtMc2VI/tb6BkBvK+tPAmXZbyJdo40uBp6UA=;
	h=To:Subject:From:Date:From;
	b=mhVwSacOSYdJVNlwILU3SCjkBQGyW+IbRiRTl22ba8hzQGds9boXpLLObtzsWzGLO
	 tJVK81+1La+vjqQhxfPBt4Nb0qXLzlDNGFH1OsHiaBPYUIBwUdLqpvhTjpJPF5hcv9
	 aKIHaU+cvQkU0lmJkJvPgtM4ETgaa/7y6Sus2D48QtXdtmaKF2pm5V+ubY8VjIstHA
	 WqCAdkTHXH8vuo7fAAd9kpz3P+0AF/dyUrwS4TnZdEUzjYf58RANFpnzrJ4VBnsNOT
	 nA7XgK3yzsFO7ct3c+EiiSkvo7ieQW+2wC0b+CuVqeUm9QQTX9fz2OAk2Qgv9MMqyy
	 ao5sQeMcgXOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97025D6B6D4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173032055360.21108.8963466989341644973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d2cccbb48465611dfc2df7fe8bfa5b71e1579e27597c3bd64a651a5f8d5450
Date: Wed, 30 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730320553
