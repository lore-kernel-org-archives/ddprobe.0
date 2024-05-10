Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD7717109C
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715356943; cv=none; b=TCwNGJjyIQpYzY8Mwmt7JZe1BFSExrmLym7xMivj7FC7CB9t6dzBV9C0/HJr9dDswVKx38MPugPNUWqAygEiFhk90Fb+qguCPVavbJ3b9Ejq/sNLWCLWCNJGfhwEjJEqrMCwnWoZFRDnH4/FpY8tb5PK5Sl0yMrxaxj7vxA/cw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715356943; c=relaxed/simple;
	bh=hBhdK4Qpf/pw534BGPz/tmUWHs6YNM2ZUNll70I9RkY=;
	h=To:Subject:From:Message-Id:Date; b=oqsLZ9fwQd1i5Nhek4rRM0uQu5BbZ1Nqv+zZOQCi0WgERwJrBnPB0yP8u724ESX30bAmKZE+c0DExF3htp079afL9nlyVxmDGzHlJOFPI1I2yL2iNMSVwOcciEHDD4pprC6fQdwLyBXFHAU65m/1dB3jMsnOj00U3jmtIuyViPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyG76Kby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyG76Kby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD939C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715356942;
	bh=hBhdK4Qpf/pw534BGPz/tmUWHs6YNM2ZUNll70I9RkY=;
	h=To:Subject:From:Date:From;
	b=HyG76KbyMhwgVyRW084aOGLzh1LBOR4pcwXKzBYF6UzM7/1lzRRH/PZk7Hms0R3I5
	 w4CEtbdHUWkcem2x7DYFC/+mdHmaQ4juzb0Dgu2WOaFb1UUwuepwOGMXjIUFzDNS1B
	 rGYO3n+sXhswZ5MqLtFoalFw9uyGG5EXN4+YtoBrVMZbjrPdiSKTbT8B4JZFicV5xs
	 Bj4tRKf/N7yD3YtXGdsyRVhfqyo6pHzpU5Eu8UPppB7izkhcPrH7bDQgE6apJDsoKF
	 ryQA3wbMSlFq/GS9DmWrZLMWluN0ShjtAm/1xvOXSektB0+3ZpM4owfUjttC3sQIa0
	 q/KtcLUWQjJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F37C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535694280.10026.16016960779554894994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823ab771549ea2c1241f14829096aa4f725506400d3c025cbe9bbfb3e0e24b24
Date: Fri, 10 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715356942
