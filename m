Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CAE14EC7D
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725258954; cv=none; b=jtNBeVA7osyXJofKTYoYSdGmKkdvkzJT5Vaa+uUxnFToQWsLBNALI4WLCjcH7J5Tl8WV/cL/WkEBUUix6FJ9nv9Oe4rbFE0rbLAkmNu1D7iYlH/Dv6oTlcN9H3bPL3h7quuXju7N1Nd5IIFn6Zdph2AzcnS4vp8k1vSqk1i7l5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725258954; c=relaxed/simple;
	bh=UGN/TaPeyVuC/el1HuIzDo7ewS6hxXM3TvwRo/ssNyY=;
	h=To:Subject:From:Message-Id:Date; b=JfPP3h5qOu3+5yQg5OT/8u8exKWZQ7xirfK7lZ2GwgFfMUfGfUMURy0QoLvd7kt0y+SxprvMDEZmXY9YFDJMlZJ1daDerBpi1ckfwluQhxXySGyf5jIjSjF81+sB25PTzr77OjvwUIU3Op+bsGohP1iEXoS7cLx+sazXZ4u5UaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeLp3DbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeLp3DbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F51C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725258953;
	bh=UGN/TaPeyVuC/el1HuIzDo7ewS6hxXM3TvwRo/ssNyY=;
	h=To:Subject:From:Date:From;
	b=VeLp3DbR+pWy/Nb6KNGCGSMTuBivtk6Pj9y3k07A4BaVHH2srybSg5DhE9ae1ShCu
	 u5DIPj2hghd9unnekkD8av88LWnUrhekAwmOL5EF31PGM2oHPsFmd0Pp7yl2u/C1oX
	 8tRrNDUR7/PTUGN310q7/QNpTHb2SWf0/HW0QsVvNBbl/tfhCPjQ1PTW54dX6daTRV
	 SacDvdG7Yv/11Tji9m8ASQBn2kim0xQXKT293PaNjGlWBuhTjoiJvrxbfW8v5UgcjM
	 doBqW1O19uxDNyNdM8ivDtg228mg8Ycr2YnXutGRGylpaF7HBqtHbhcaGUYHhMOdGC
	 kMPQk6PflOWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE54CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172525895360.9764.4539287413151495479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06cf0877a724339533d37689d223fffe090a895d70cb56f0eda651af8509cab
Date: Mon, 02 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725258953
