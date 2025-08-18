Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E092749C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755545995; cv=none; b=gw9c/WQSBnCZcUbO3mMdi2xxWPOcU7anRS4yLmkPo815J37myqfD4GArDhDOm92TRC9TbjW6YZ5NBxTbVb7UjR0wWH9V0HkXvdu237fj/b/C8Cpai6XMKsPWTg7FFwEfSDwvPb1MZ1J8AtTCLtkPkacNIu4pqn/XZAUebODt57M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755545995; c=relaxed/simple;
	bh=0qvzPan33ew285llVA2a+nXsG1fEu6h/A88zthV4kJ8=;
	h=To:Subject:From:Message-Id:Date; b=WkgmraKW40FDS+Ke/3sHjPSO/oo9wvIvV7JVzl4moNQw7s0nkA1eR+0MHfA++BYtmrc6WtT1HAGA8KwbsX28Ejyz/JVJpJKhBSoRhy1VyI/dAfs5eK55s6W+8R/oniPLKKiCQORdswwZuK7N3Nr06qx38NkxLQ05HSJcXffQqLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAknVX4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAknVX4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98C03C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755545994;
	bh=0qvzPan33ew285llVA2a+nXsG1fEu6h/A88zthV4kJ8=;
	h=To:Subject:From:Date:From;
	b=pAknVX4IUo39OSH1rnpObMjMQc00XUIHNPKe0S9xwZMoT2jcQsYMUiunlgvp5/gGx
	 PKP2c1QxjTQtM5eee3tIU+XsTrPp7trvr4iZHSQfO0Dz4e1sWXmyNjY41Io4WtJ8aX
	 qKFoIES6o+BLQodB+hpzWNe3hjm/VtSoLRxoxBK2kkIMsFnXww2/Cmz6Twud0USgbF
	 rMmaeTFuHo/Aj37HYnl2J0bfg4rNaU9DxjALx3wGF52Tm/AxuyXvu+HesXBZVvlO7/
	 yr7NX4do6gXhC5oFWaT1RaXY+xMPI+pL4Y2P+bfEhfPzQ6AQtE+jMjDcVor6TO5zKj
	 2mUpV0ALszRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCAFCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554599358.10576.2445021270833670339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8848847e32ef3c5a0f9c0a8d050b03838f5aa2c5574a128c4aeae61afdb3b7ac
Date: Mon, 18 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755545993
