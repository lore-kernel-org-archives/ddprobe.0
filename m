Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B29C2C0260
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786310434; cv=none; b=u9M1FnkNSeIPyZOocqS2zVi5W7hFMqJvmtsE+iB/3Gf4qpwHn8Pf3HLfIscgQs/fmtwQVzd2Sm8tqAfAuByD3FkvWYV+f3jM5FNhJqiuOmHVXbN/SEFguI7ZkkCaRRSz63YXfPQiNsQVjlT8S1NiJcv+0Q3A/B440Yi/IfhxY18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786310434; c=relaxed/simple;
	bh=nTIBZWX7i3RIGaOTM2uIwW5hGgQ8QtBDU0wbmUk+xMQ=;
	h=To:Subject:From:Message-Id:Date; b=QQgALgxbLNi63JU5uxSqmlr5vioN/K9RR2LqdyNc1eilWvAeQH08uIGo9N2v1H8Vbqcc1GcehuXlEzsAsiAdzIptGCsTyb8Wqngl/2ZBr71OwaFyg18IHhahCry+kAO4T1Nz4GUvxj/BtL2+6zoyg9LWgNKnmFQBPbDWDJa6qlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vmlg2Dp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vmlg2Dp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BCCC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786310433;
	bh=nTIBZWX7i3RIGaOTM2uIwW5hGgQ8QtBDU0wbmUk+xMQ=;
	h=To:Subject:From:Date:From;
	b=Vmlg2Dp8VISlenXV95Lyvyu4iRX1KxZ9zezMJxXj0nxJdIaA31J0maGHoatYH/de8
	 SUH0cI9gjOcyPCzR6L/9KCmag/HpDIBR1ZhfGwK6hFESVLJm//YqDACa2MrwR3fKNy
	 M4QRGXvkwTEZIqJ7R8Ad11wlDiVaBKJo2NWk1UtO1Rrx67Sx+t8izr1mKHaCo2zOAx
	 Z8GYsA5JZBlLn2hesFdTz8X1MpyIVZ/4Z2SRulOR/RvBklEOZq1xU575N+Iw2NG4te
	 aSHMb0HOhtuCj82aV7dfssCzfWw14rok0tSrUeWRg0cp77zS83zEIGZ0fCjwsVna/S
	 p+sWqsPCx4txg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0512C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631043368.12007.10050968782222653728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58306e3445ea35978263db2a779f1d28594ccda9c0d16c7a2a84ceb8c4c18a97
Date: Sun, 09 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786310433
