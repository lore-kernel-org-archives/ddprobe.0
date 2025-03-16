Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588E0134CF
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742137195; cv=none; b=f5TTOyC1aEByP0BifTcBeYzIJdAxoFWSS9ffSh+JHZaFFtVxbTxJNyuExUqNkkC09/IKpyu1e693HaRyUeSjS64QfJqiEsypHl2BUkHXFftDieoswoqK2yRH9V1wqDsTEsFWMlDYf3pCuiGZgldW6aYYs8YFHqdoivZ8++sze3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742137195; c=relaxed/simple;
	bh=TqrMwLBnJmwh3sUoYKFnleas817FguhBFY2D0Uipoyc=;
	h=To:Subject:From:Message-Id:Date; b=O9sMbU/ECC3Y97yw7QMWNSDvAsOREObjkLq27fJQ25KETdhCK0OSgYj5cFj/gimRTFx0cto86/EjvtxWevYNN/f5NC2xnolZ5cA6h7Yr8ZgYDwD8p16d7VNBZ9+xim5FxJMnlF6vIIM+HBueJpJ5T2xPDPZvFnrk01Tfsn7lxxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9AICKmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9AICKmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B935CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742137193;
	bh=TqrMwLBnJmwh3sUoYKFnleas817FguhBFY2D0Uipoyc=;
	h=To:Subject:From:Date:From;
	b=t9AICKmxSWojAyOQqqNfUCSbK4HWAnp1XhK8/YXKC2t10YMywEW8bTGmF1iTKVfwf
	 UbcEwmpetVtIxYwCDM2EybJykajACWBe3XjzwJw0LqEDKAsjkCQXeGFFj9gnHIXTzd
	 0pchetP6b1mxp5xAPoHlfVO34MIPEFP6A9jRa7xNSYZL17NlaLx0CKR/5JDWcvPbAb
	 CXwkpitP6JANyD4OfYfMfWY8SoPU1PgIjIcZ4kuJ00eZZXXBTghhppULhc9XMcH88G
	 fyitENRtS1aowPVE07h49pWdMgIawv6qPu3g1QVfHKMED8v3OZetkbeQSTie+HS47F
	 SVukkzcnS8kgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23E9C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213719360.5563.8092994727411347029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db62bf43aae0fad5e76d0db7803c1e79900b6320a6c7ca29dddfbc7428adb01
Date: Sun, 16 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742137193
