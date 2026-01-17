Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6F10FD
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768689234; cv=none; b=V/Jz6uPYlRW2psoeSA6t71Cz36qml5siKlGB6+YCvKNuulHAXYezS8psh/utZs70feWhaoGPBcXJ/xgDWXkjnj1t1MzQ0t4/2L4EQJOML0WDHqk/TzrYhuEnR1/21R+uj76gQcoJ//vNlalZsvwmPMWCGjVmLVv0olE1eTAHF30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768689234; c=relaxed/simple;
	bh=1Imr7ZjER9fLtuHq2tw0UXDavNMV7eG53Jm7NwtMbNQ=;
	h=To:Subject:From:Message-Id:Date; b=s9GxE5TveBCt9XytvBP9hQuiBwMXMwziJLuJ4AetDSHaqYFoQfjwehM7kw6Uyvp+SmijmRbUNvjLFJ2LbtaToD+8dY86bP925MyEVobWPYPUJ3Kvsbhb/ZUEwwN1D75FgEYwpJWQeDZ0lDMvtTFsdPBiqL2seZtgq55v+Y5OdeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5dScCkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5dScCkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BDEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768689233;
	bh=1Imr7ZjER9fLtuHq2tw0UXDavNMV7eG53Jm7NwtMbNQ=;
	h=To:Subject:From:Date:From;
	b=C5dScCkji/oQ0pZqEY7qsiRwZctDWs1c7V2g0JYGNK7UXyuVoBowQCnnLdctI9bo1
	 LVzjpM15oNVApjGw2Drb8u2UpWte+ZN0aJw4MXKIt0KRb0o2uNh6SgtIgcqYT9qn6v
	 dcyngfijd8tFGabBHjHKbAflNnBMcxFufXY7bz0s7VCabgfM58U55S0Zv5EmZoGhzM
	 7KaXshQpUTnKJfK48AfrlDHJu7LxEWq0OAVnQYWTp9+1c59uQSioSDg8vezZ4Oauv0
	 WKiMENQUSlG90T1EXNRo+N7ZlzS5UWlhVNEPo0TZVoPqV3kGdHjSUMMbaPe8TW5d40
	 iK/pC10S0JYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95425CA5FE6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868923357.17283.7197237389005803678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb9bf518aaeca3dc1387d8b1c78871db8abeba5b48112ef2e4b2a1536ca67e9
Date: Sat, 17 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768689233
