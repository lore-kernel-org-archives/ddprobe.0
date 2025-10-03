Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFCE20330
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759457994; cv=none; b=QeltXevggIjjSpSyaNAFZg/UUMsHrP7nShLu7e7MZnOKumFABUNv+phCwYqV4aqPiygz4rpQFjZ/dYOymPVnZgK+eHbKOVQoPXEVYl5Hxj1tjkPaJFyI2Nz+dzZiNS9r5Z6QN9dSBL6oCgXnOydQeAXfrmlVFNGQN06TK3+dvw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759457994; c=relaxed/simple;
	bh=s3HAnwTDaMMBSLAXGP2xKmPagLO/DVpvovOzqq1paOY=;
	h=To:Subject:From:Message-Id:Date; b=ATcMhN9tytvkEr4floi1YZgO9B4JScwBdM09yrPHOpA5rURLV+BUo9nvT6m6Nh56o4wB7yA7ex2IbE7Kcpv/YtUcy2vu2WI0/RKjX98lSpJvlsHQpKuqzLYlztQUpwDPwJW1mHY7diO2+Xq38mHbsbOVHroNr4iRmQkDUTbX4x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuhVqYFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuhVqYFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED8CC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759457993;
	bh=s3HAnwTDaMMBSLAXGP2xKmPagLO/DVpvovOzqq1paOY=;
	h=To:Subject:From:Date:From;
	b=MuhVqYFGwqTgdfxGPnqjdGVyKGaQ6qzvUrWsZh8obAVzXJAZOFJM5+ZJr9Z5+WwTp
	 Po4hZWNMiU1SWVWtjI2G3E4Z7yBGB06SVRwwpmx484/fyG9ftS9YLA0Nu7cBPu9f81
	 Mj+OffuyoJBu7A8+OZWKUXJSsS/qEmKvzaFgJDfBP61qK2DC27K+aKegREG4CgUcFt
	 3C10LjIGJGDwNPxAY1KdhTs7+3oiggrkEzJUhvHxNzwv+IR7IYzz+29lTlrvipRsSd
	 AlPmz3EwNO+uiIAlvR5Pzc3bc59gF4nHVnC47g7IjJI5mY0mI3Zg2MeahpLpPm42yI
	 gGDL5MxjOEfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D3CAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945799358.9819.17593842720272180386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b385c9a0ffaca819ca553b69b03e7439205316c3fea7d3e6d02e8aec9fd43888
Date: Fri, 03 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759457993
