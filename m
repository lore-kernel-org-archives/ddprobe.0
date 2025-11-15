Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B522877CF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763209194; cv=none; b=QddWoUrg2LGnah2WV8+gNMaSl1beXZZsmWv0sjztsz7D/p1RZEZIS3eSkLSGTXrqglTfJI447RJ+mLgVix0iTMsLo8XTG6vnoUX/o0D6IdreMyTjoPImyGpVSxEK0q+yaQ87OEf38jIP9h3DHT9kzptfmdrBgcK0Kw1IGNQXxLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763209194; c=relaxed/simple;
	bh=gG6RZsAdKJde1QDn6qVmSSVmPzONpZZYttQxePqxA0Y=;
	h=To:Subject:From:Message-Id:Date; b=Ke8VlHMKPUWx6ZFY28ODc5JmlWhsbsda+BemHD8NW81a2imaGPM/M3nv/TL1MvmKrT+ZXGMIHADJRpqq8nygalEgfxYlBoKfvZ767RseqkHzoudmrOdSDVC88K2NSQcV4rCIU779LA4Sv9Xz4iTaTmC7ptLyw3QJM+aDcasT1wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6d4kxaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6d4kxaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A4F6C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763209194;
	bh=gG6RZsAdKJde1QDn6qVmSSVmPzONpZZYttQxePqxA0Y=;
	h=To:Subject:From:Date:From;
	b=B6d4kxaX6H23p/vDk7kjdzieReT/6WdJ2tgk2WJqpn4zzq2wR0/XDBjjE4NY9xiBI
	 ILVJd84bRmq0vk66YyDdP/kBdBpohprfF0ncS1kOqOY9aGwnZCv+PxMR+aue7OpJCR
	 BB1fcj/w+elIxDP2sVwZZH4ll0gyGV+J1xCSsoEkse5cxERWTGZOclU/4wpSUNjIMv
	 /h5p/QOM3YZ5sv6pm2f76VSTld6NrnzP4qmxKYbF9iOotgYszAQlL+1A8wPIC4j13v
	 zzuluSZtek1nAyYNWRi3RK6lDDcLjE5Pqq2yHBrq0SDRc1loTI8X6+s2cqEZpEfg1d
	 dHE0Q3OYOL7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA235CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320919384.27029.2983391114342656635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5197517711a110a2fcb8a420bc7dfd558c1b5af6fe2e9196c43ff1d5dd8f04
Date: Sat, 15 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763209193
