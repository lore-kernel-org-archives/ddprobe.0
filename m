Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F43C3DB31B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783634314; cv=none; b=Oj47ZIl8bFR7Xxh4//RrPznH03EJ1Fv493HeBsOX1txuvapPxKYgD3GAP+oY95vVAGfAOfzkuWc8iowbcXWKfiltN6t4vHQwjxxmA5gR1En/nmHTdO/EV4JWtyPzL4QEOELmleC1reaH0ZLCEEnE68YBvcFVrsYxDcnqtw+0Fqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783634314; c=relaxed/simple;
	bh=XKqD0dI9zMtjY/urbYLwFcsbRm12MANxd/0Qa1+dbLg=;
	h=To:Subject:From:Message-Id:Date; b=l5LVTCHf0rnNbPbE8Sn4eJEoVg/z7jO59p5ps6jaC+UNOr2l03V8l1kssXIQQJOPECLd/jNUfT1Au0DB+dtuSvCh1LYO3c7uMVyDMk1vozcm2/xsouSwgwV1i8zcmGFphWjQmZXnz696/BvQt7U6FZgrfIm4bVv8qDobpTHKVpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7nA3lvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7nA3lvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA234C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783634313;
	bh=XKqD0dI9zMtjY/urbYLwFcsbRm12MANxd/0Qa1+dbLg=;
	h=To:Subject:From:Date:From;
	b=k7nA3lvlYs0T86pIESR6P/Lwgvyr91MQPz+7Z7tr0R3ul3m16RpG+QMzVlpi5NUvj
	 cn1/dLbaYzrfntSUI/21+TxEJ+4ZjEseOQd1e4E6ADnIQsyPBUzyM2fchF7cto3HnI
	 UEAaY6kC8Js0wF84JPZ2hfJ1kObNUDzooXVxOIilNj0oImFpJbqkvNEO2cuv9awfND
	 j/hnqOTTz4lz3P4qb+Dd+iOHwcEEQrnQx0BAhjpcBKeLZjquE1cxkjU7kLsUy/zkCg
	 ZCT7TArP3av6O/B2Dcsw+YFowP2SkjJ5UURB1CR5RvDII1nEAX3NkSuhWpWoe1+7oI
	 lR+cev8o0YaKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8124C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363431368.10197.13199670770886142965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb676c63aa83f7bb5fc6510b86e970501ed933498ae16c87463bcee5a918231
Date: Thu, 09 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783634313
