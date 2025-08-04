Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325EF191F92
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754324995; cv=none; b=JK3QLCLVxkqDSco0P8FRKAka/Psi+/RSypapkbyPo/oG0bFtIG+reVnM9W1HUUZ+V+5cBCJeYVCvfqz637KIZcQjBhokPFeinqYrXHcomZz7rITGnaXunzsJU7QXTgYJj/sRvGTFUSLhPRLIycmHpgsMQEIm6NttgTTdIuG2UMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754324995; c=relaxed/simple;
	bh=zK9uhowJYYvUn1VbuC5y4iBfc8rIDCcfafs/uxIA+qQ=;
	h=To:Subject:From:Message-Id:Date; b=Ws+vtTUDMxEnhX8bIyGH6ZrPzYRAeFk+t2nyFGerl8WztEYHLwL7344+db0kbz2doUZZd51ZKdp77BXB5ClZ6El7i0cTyJ/Wg64lDl80fZwUVaIHH5x91BmlP6Lid7dPRAKH01KIIdwciio7ewQonY2jZivT66DVT0kw8a60Msc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrMQMsAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrMQMsAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754324993;
	bh=zK9uhowJYYvUn1VbuC5y4iBfc8rIDCcfafs/uxIA+qQ=;
	h=To:Subject:From:Date:From;
	b=HrMQMsALlVgLbNlvG0SiteceYXYAM0hMG5oVdIEET23hPDGfA1w+Gs3CQ2kIZ5Vpa
	 WJepHG5ThoFwTMekOWwWDtpNALa1/ztPn9Mh28aLWNbv1jN2ywwMMADo26lhZeaqhq
	 X2A2+MABH36PbQxmwlxqHUUsODqlofHMBWZS7DdC0uZPUfrq2DqXrcd18az779vNut
	 vQmaTqTASIB03+RmBd7AN1vjUJ6ieao3MxO55lqtZTfM5x2uMvkmLrkZJjmUepxdlr
	 XnjO8u3hQoPi5DweOI8TmT/4L7qdFWr0iZJ1XaN2hqX9ir0ofxWOBtuju2ndqV6lKU
	 7PMPRhCacAAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D90C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432499357.7652.18010549802477773986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d2a725f84b52e79fdbf839b3a28b8af03ab300f3cb07057f65174b8887e4f0
Date: Mon, 04 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754324993
