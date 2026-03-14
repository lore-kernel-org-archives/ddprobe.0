Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D9322C78
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773464094; cv=none; b=qyvysYPzKDrGHeqrTgO9aCd1e+2p0J3Ga/sx8kLDKGzeYxBVxUgRbU02oYM5GAntLktflwP+nsSh5ay/qZ5gmczIYhh5Zk1Z30yXdJLX37gpnxpRXFoMVvcfM5Yc1moHE13Od29c7V8CX31DakJ7d5YUsPsmwJ/E3FkECXhwkIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773464094; c=relaxed/simple;
	bh=lWdibnk3FbbcIsHtoR6QWpbozoAdmq3nQvpaOty6LVY=;
	h=To:Subject:From:Message-Id:Date; b=ffEfTRQOObYBue+CfJOweU1KDb3ftlXC+JqMx4tiT9QD+iSmjGdSkwpKkzqK2LbAil4Cpshqc5pOlCPF8Bg1zKuBtnlF+PEDQs2v9qh0xPHnBnCQXSPIl1NoPYpEZiWIQjysBvXiV90OgQ2l4nVXcUoBCAaZUFUjTpx3GEjOIRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITvm6WFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITvm6WFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773464093;
	bh=lWdibnk3FbbcIsHtoR6QWpbozoAdmq3nQvpaOty6LVY=;
	h=To:Subject:From:Date:From;
	b=ITvm6WFZ3dDIdrMEhJC8mRuG6rVZZfQPpuLcuydn6tE/e4HySVnM09JUUH61J+Zg4
	 Hiq+Zfg3ESQxuOHvoxUq+F0Ibfx+jfllNW0dAMcLukpSPjDwxO2qJHovQnm4C/vr6O
	 19WXIqh0xbdofxXcyZptCbazJGTAt/+vXn8NaIt/QpOSHeJJqLw1exIOQADPm8ef1K
	 LIJDJg7LIxWxtH4PObDldwwUBtJ2nI2e0yMqYk4aHhQSZk7PU1N7Qklw117rZJOoke
	 pUrZzM1gHqPJfqs6SKdZxlF8u0cfrAAMElhTidBuDD+dDg8+9UYqzuKJm4mYjZcAFN
	 TxAGFfMLEkIew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB7107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346409358.31536.9647031930245231252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb428a2e3efefaaa3c22df32afca86b3fd193dbca5699b73cc9f3f08beb007a
Date: Sat, 14 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773464093
