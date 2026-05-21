Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407DD32B105
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779381154; cv=none; b=EB2r+bwCCITQtvuTnBBs+lRNgLfOc9fhfBzRH9+J4bVkALAeOLMITGbHTBCg2BTI7dzIxpUYr+tf9FH/yshyWJQk3nZQ0+TlxvWGgyGPIAzFoI7uthwiW9Peu9ghh1c8AVA8mmlMvc3CjTuk6hDRZiI7gtecauHYgr49I4800f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779381154; c=relaxed/simple;
	bh=2eE7Gn0LA5kjtChKhtngWmwXy0mlGzS5wYLUNi1kUY4=;
	h=To:Subject:From:Message-Id:Date; b=AhC4PsxdOid/3mVhYbTXOlm4HXBVWUgr3q2/bq9jnxz8fsw1pc/bJ/Zb/0G2cKV8804AnRL+/9LNafZDlCZuw576yglWk+1ClOX378dNz849PEcqMy0aBV5jwFgke3BznNopIrzBnGVzqtt7XObolpVb/um83ATKJaaDTBdZu3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8orYa5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8orYa5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3157C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779381153;
	bh=2eE7Gn0LA5kjtChKhtngWmwXy0mlGzS5wYLUNi1kUY4=;
	h=To:Subject:From:Date:From;
	b=U8orYa5Xhf0i1sGW/Aqm3kjPEJEw/yKtcWzvTZlYbDHbdIN+UQECZgEj3Kiq7j9oR
	 oRGXut5eXXm00R7PFy0Axq2fsO+tltZ77r+6LjZZ2Fdpll0j1XXI52GB8M6f2Su7P7
	 EGoXJjPDf/NSJQ6AYS0FWymXjquxKB0CM5RU45tJxWq7wE1e5fypB/iU7DEZtYzxIl
	 lWTP05jlSb549hV0TdYQPpPq1/aWVKy05XyozvfKgeYq6uVP/I4+pdbrvP2FPruJ/y
	 x6XFG9inrtn0k08a9V8Q+4e6Xqj/sVIwcRjPia09uu1ZtzEXAWUu4SES/x7XApUJ/o
	 voC1TTsas3sTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D42CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938115368.31426.822478671065570363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71caf3a09700b9f71708dea19fc3eed3b9453c54457fcbff8cb12a1b7d8e5a8
Date: Thu, 21 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779381153
