Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A88D800
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747544394; cv=none; b=EdWhIpHm6/ZG+zXqapU9owAv/wI9l9qwRLSmIQLpNLzWuBaBmjLU9cV4A0NJUJd/1RMAg9qShbHCVDrxZPwpsWwVbp+g2SWukKqwTmdIHE+PZrOW8njvzRq4cCnUt0R6xncwRDgMwZOcbQrLpUZ05zA4y1jo3JaCl1pJZX05yQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747544394; c=relaxed/simple;
	bh=y4zVOWWJLll52sHEmVEmVXgWPI7HNZXqbu7J43rDlwU=;
	h=To:Subject:From:Message-Id:Date; b=iet52zoH0M/YyOchz2jMhhqzBAw6qVmNxiG9d7w9YjUyxqCT8iudD5C2AQeLLxu0bPZleazZFqE+7v+asl1Ue/n/bKOAbBEekbcYfeDYjXZRReuywNBXeEgpA1nTLB0LyDntDmVBYU1W0/X26Do7ulpkl17120at1mfOYHNVIgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1nxyFNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1nxyFNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21ABC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747544393;
	bh=y4zVOWWJLll52sHEmVEmVXgWPI7HNZXqbu7J43rDlwU=;
	h=To:Subject:From:Date:From;
	b=Y1nxyFNtqfXFiq6DAE1MnYvgar8BMpX4yMu4E9NB/cSksNgxGZ7I6Wo6Lv60guNgs
	 iowV0fVI0IIYYqE9H70xRyPYtzFPuJII8KiMoK77g0XPBXX284sCEG89BNCRC9vu0m
	 k03rVJ8GsAJJsjhKoi7qwU6vp1HJqv6skriLSyIpaZg67voALmwitktBD+6AVGX+8D
	 FqFzkrx3mx0kvcEmpLD7vwm0C5NtLEw8J/W1o4GM18cu4e2pbeeO9YEAh4MukO/sN4
	 WbUJIXTroAkDGUCqxrITnSxGQMI06O4Q/bNy4WCWlbJ2wjM9bGjj2H2NIW053/1MVR
	 pFV2qdqtKGDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E270C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754439357.11104.12019079588770190991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38621c286fab2a4af1471674f134b7b944c26bcadf38143a79a5bf6d53dd9b8b
Date: Sun, 18 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747544393
