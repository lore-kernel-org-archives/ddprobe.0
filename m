Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DFF25BF1B
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757618994; cv=none; b=QsyS4EwYZ2pVPkUHyTOLf7Gi6Pn3pOUWgiDXPREECCXdV0dlfvHPHJ/PDMQU7xtuoxcyt9xRG29gBuHQH14/4kV/2o9D5WEHeGVUCrdouuXXHbuFtuyHSRzHpvZ6iKC8YXl+3em+O+M7v3P5U3iQ6/Fg+t+fW5/Sy0KurEl8HMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757618994; c=relaxed/simple;
	bh=BzGfHICNSpfPY5pm+xmRtcSGAz1ovXR4GGKWFc45gRU=;
	h=To:Subject:From:Message-Id:Date; b=T92FSUvET24QgzIYE/kuoeF3LhCjIhzGbE1ypH2pfXx+9miImI9f4JY2SsiGKqbQJBorw8GZr/MjuuCUQ7SJ7UqAo6HFW7NEMpEPlwioYm9gv28r1BtTvKQTvUg+jk97k2iHn1rYHlgtZY0/cz8KiW7xCzZq54SAJVGGRnpYd4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdFnRkoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdFnRkoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41BFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757618993;
	bh=BzGfHICNSpfPY5pm+xmRtcSGAz1ovXR4GGKWFc45gRU=;
	h=To:Subject:From:Date:From;
	b=rdFnRkoUi1jaobJ3VrdFt3NyoT/dlyBL/lsEZBUDlEyH4ml+pD+BLyTa+8k4mR7w6
	 lNuGcH7S0xDTQJl2MKjDt95RHEjF5mHEzxWln8JoVWLz/3+k2r5N6LN0b4vg83g9LE
	 8PZ6u2BCp5XNNe2k9AwBgdEmCR9uzqLUb3Yd88H2q88cNPY25WW1nqpqhbRWNWer97
	 JNgJujQZCpd6o67Te/Ev1e1jzDctFTIXnETDLZQyqnrxPIBh2ebojupqvyIE/FtHky
	 BQMftuZlMBt4A8VwESnCyDhPmOVCpGuHkx5g1MtSNy9qFccUhByF+ntq3d73fTk0Ag
	 P35Cqkpq694hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91471CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761899358.25910.7664243678251695138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ecab1f0bc6113b22d552d9e68ee0c6380c2ac2ddb5050a28b9cd4fc4dee8a8
Date: Thu, 11 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757618993
