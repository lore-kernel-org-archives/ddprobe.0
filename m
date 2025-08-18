Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503C217723
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755556194; cv=none; b=HTWzhfy3ckZ6I+QzgDEj0CiWPPFjlue7ZuxFIFySCwaCvihOkMYZVhKYiURMf8RzDxs1oWXoFFHRQAQq1Kzf6HnVSaRM81vcFBSOCjXw8n3z1szo1CREBD98tLigF6lw+zqv4zvbjkvoL7EaF62O5SNP4dwAS1q9x6Ty0JbupOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755556194; c=relaxed/simple;
	bh=Yn1QSuTDAo2UnV3UqXmy77CT3oqGBw5toOehogxf3Bw=;
	h=To:Subject:From:Message-Id:Date; b=SI8qbr3nxQ7MqxJRRq6R/rwyRF8Gm2fW5aaxs1OvBIua/33ypremv5SZT4RdrK0p86BKvVvxiubmmwZAW4w6k2vyd+OTcoOzsA5HogDXEr2kltBqps3pqpqm+al7z3cyIddorEA7EhxyE61OGuPngQ5ETlreWXxysgwN+ZTb+pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmemFdLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmemFdLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755556193;
	bh=Yn1QSuTDAo2UnV3UqXmy77CT3oqGBw5toOehogxf3Bw=;
	h=To:Subject:From:Date:From;
	b=MmemFdLKqpxRxZu6ADMEqL4cvIl7i5sbZKhzWrWw3e7r85v4ZZ8jYAfa2R1Jm3iwm
	 opxJxTMs2/hrHSDYYkX5k8GMg64s98FyDHChxEEajrzorH3a/YV7d4VkcvXNND8g1c
	 DSPOLOASW5QGFoZ4eoCtR3W2jXUJLOpPDqOvdiOgp6IQtFJPnZRefqyIupJZngkFu6
	 39wlmbDn1hzzRodFUuLOClOFVkeLEdcpPiMfmTPdc6Cbh+UeK60/63y+Ph/SZ7VHyy
	 tfChFy05rA6mpK7nMvzjIWNN8xQBLBF3GZCs1mmB3UWoMmYDxqDF5SJbu2SIcn6cvP
	 Qqv+hb4mgeSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DFCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555619358.28063.17267272586147498492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022e3ea499c3845a9a565127f54305f9ba7aaa39ae2c96758f6dbc9374f2c7c7
Date: Mon, 18 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755556193
