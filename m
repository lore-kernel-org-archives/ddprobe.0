Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC7B397945
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786360234; cv=none; b=ZWoAx4JCklUgiFiJOWmU5q+m06ej2psmkTLsWW6A9Ad5owKJEo5x6nKiVSXLA5URpp31azsmsSKPYm1rjVoeAYp8XXsUCa4lShdZ/61hsGzAm8j++mHIiWlRkBT/3wi8LUjj/iagEy62dS3rl8M+2iJ+poAVZvf/HQKqi0xs4PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786360234; c=relaxed/simple;
	bh=f5RsGyBRtO/Z34zRvEwINtSJr3IghtCuZJn6vdhDpNM=;
	h=To:Subject:From:Message-Id:Date; b=ksdOCD0yluSeVf+HEPRDAk5M3vyieFy9XRYm+PsPQyZMadpstr91JFR67E/bWBZ5bWi8wmDAzEqnfj+auQsUvzVr52zw0M6A8PBCCv4jPqGb0kwOODdqp2PJ/rDZWPWC8MaVc4Bajgy+TFInAjzS9oaRFCJqykvFQm3kgKdy3PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQO3uD/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQO3uD/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D080FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786360233;
	bh=f5RsGyBRtO/Z34zRvEwINtSJr3IghtCuZJn6vdhDpNM=;
	h=To:Subject:From:Date:From;
	b=SQO3uD/wd9uXIqmcXbbvXC6RRTHcacaYhoirnRZUdFS/8SeGABB37dkifJ2il48gw
	 AoqlXzC5WeIrExPvZ8zCZwUSnE4Wrs0S2vMjy/FuU/hZZableTbGo6sNjXO+MjWceA
	 q6Snc5smGACxbldfXFrDZGQB9vv8OJvT0tOvFxvyl6eF8U6wmfQXbuctTvD3PAtCyZ
	 8G4sHzBm++768+RPn8InaYo61rhkYiPhpNMWSdMwRL+dd49LSqGFGy3u6TdK2bPIu+
	 M8Vu5Tnz3CVsjF9h3+ezw7i4eWXE6xuYc3tBkBnc0LunXMpGNexSCwpuIzeeYMPrgg
	 cPm07gg8DrX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8C3C5AE5D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636023370.2104.6099991366077930288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c2d63df771066e2164be44219dab6a4691d2c9a78396ba7f2f9735158fb8ff
Date: Mon, 10 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786360233
