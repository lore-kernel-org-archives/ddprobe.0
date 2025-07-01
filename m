Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3976325A2D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751354394; cv=none; b=Ox8wZWN+yw3ULZYJV7WmcAZsmD2zivumIDvE+U2skxa46tP05g0X4SqGwDzCzWibcpKTPWLEusCTZx8J5z+uro9EL+e9j089avN04bEKyb8C0EwU7DiFqFCo6biepNJP9DhL1nHfqZ9Uxh/m8xKi7766jGugwwBImNM+sfQq7Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751354394; c=relaxed/simple;
	bh=6GPCCCNPKKGQzHJXfk9qmpTyzHIOm+3Adsl6foyjmO0=;
	h=To:Subject:From:Message-Id:Date; b=JBwXYAqN8vlJnxayOw/axIMCfdE1LlDHfVvoGknCop6tRqlTFPmsCCLGUoZLbZ5FhR1yrXTaXNyQpZVtpwVtrDCzt4OrAP7ZavFpD0hikXOwiTbzV0jZrAH55jWMImpEs+6jL43bDPK/CxGKgLmlV5f/tA3cZDKjU77d/SXCkMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg1hyMTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg1hyMTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751354393;
	bh=6GPCCCNPKKGQzHJXfk9qmpTyzHIOm+3Adsl6foyjmO0=;
	h=To:Subject:From:Date:From;
	b=Gg1hyMTd6gJO0xlgsbXLenLZUr/ZAOqFc2PubpeX+0YEw56gHhMZCF0a5v86T8CX5
	 IjTUD7uFoUOsu3RxSdbfto5p9XnHY0AUcqqMaJSS3GhlQVpkBQ/4C/j+SAoVrAge7U
	 a0w8P5bDE7pdE8bWpOwAGVfA/7LdnYyl0vs+FmhgAnQrwXwLAWZOTuCdv3hL5yh54W
	 ty8uL2LTLEeB6Kb3IbBz0s7Q1yjww8rlD26e9Gc2v7SkxcYiHUvrnm94rM4LO4oBkX
	 FA+orZ6D32foFmYnAoVzB3binyR/gg5Z6zqZaQmVKpMUHClq+Vd6Ojw/Ipdycz3zPC
	 ON/CfeYvpkgnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90292C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135439358.21677.13814768162882014748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d656aa38a37f1e7870ff8178b72dd868613d242260567d3d3bc85217dd06a1
Date: Tue, 01 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751354393
