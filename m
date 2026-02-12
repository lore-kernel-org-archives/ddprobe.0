Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2302DF6F6
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770889494; cv=none; b=pPpEasso7hZOpygD7nu6mV/BTahkHfdmc3JTnotDAyY+kpUpeaPdlRk5HNPghRwVxKjc67IhFXK8I5ZeJk3FIrvdfvM2eb0Ud0a04QgjCnFeRZX1wx1E7ML7Z7Uaqj3OzjYUBcgYTdYqwMJqPntlQNJAwNcmnbPe5sgsX0J4Ybc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770889494; c=relaxed/simple;
	bh=qHNcqOJ31xrmbQQMw8+gq97rshUCPSue7RV3/XBG+l0=;
	h=To:Subject:From:Message-Id:Date; b=YxUQtoacsSPGdXunirD3CjzcqGNt4TtlJjwX/c23G+6sXLg1Ct8tPXwEaxWFpoc8pspBW2/qk1dAvo7ghye30EEU+d6ByojNnjByG5z61vEnmx9qivO0nuIqwh56ZuwXHqg/rt51If0T1f50wV/cP3jQdyFHlAbsTPOE4F3eh+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S593/aWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S593/aWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEC2C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770889493;
	bh=qHNcqOJ31xrmbQQMw8+gq97rshUCPSue7RV3/XBG+l0=;
	h=To:Subject:From:Date:From;
	b=S593/aWAsElLUhV7Ex3ZiZmYzduipryTN7zKe/xnTG15qobqtGFkdRfilARxDT6c0
	 56ljfc9gO1f4yibKqzXSjFTjlRTJ2zpFqY8JxEDfx1lnycXCdNpwVBX3qBfdT+HJfn
	 wMz30gGpxOI5Yj8+DQTEmF45gb/KHFFYzsFY6IRPS0WJhCTDITYfl/zdg8ZAZCAeXq
	 urihpsJ8x0p66R05Cg2QWbVQSaQPbqHUjJPh1a9ehibCTosS8aKdzDXvChhMCBS65a
	 X/F6x30r9RcgvTu1xLSMPavewWy9GcpVbmgkRXsIKZTzGMx/Gq50RFxrl7vTiTGvz0
	 zhQwmO2/CwJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A4FEB48EE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088949361.32052.512146093720099966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8539ca3ae750147d76357aeafe967927fbb921fcb31faa02f2cf44c5a1546ab5
Date: Thu, 12 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770889493
