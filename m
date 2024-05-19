Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E67826AEC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716153143; cv=none; b=UrdSY0WReQyIQHlOh63tM/3aZJePq79VHM2TNbiJqxhIqZckaaIN4njT72yPE6XI4jm15fdBMqO+3mMC+SFXmKP+Jyc3nXMox+mOWtgiCJQZTcKXDszypYkmH0IlCXPOqJ5tUTReyggc8M61tuWXjjJfBAYCzwhp88Yj60w97cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716153143; c=relaxed/simple;
	bh=G8wF3vxDR5qrIW1oHMZV0Iz/mv596fvhfvvFmVx8DE0=;
	h=To:Subject:From:Message-Id:Date; b=UEUYeWoXmd3QHUsmkRKNLVmw8hMB9+MA9QrcmmOIZIscAHYvjLVXbAx5UcQcqdcggnyW1qlwOeD+d/r1HbjARNE5Vg6VSNUhY2oWb0aXWYgCIcnwO/Eh8D1xHlVTEICbzGDJgGHzHpWgqTGQOPtAAND+Gdn83J6yT7v0OurvUWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL+A2sUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL+A2sUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07BBC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716153142;
	bh=G8wF3vxDR5qrIW1oHMZV0Iz/mv596fvhfvvFmVx8DE0=;
	h=To:Subject:From:Date:From;
	b=oL+A2sUaG1iX4WpwiIQSRAqPYU8tHan00sAbfRClA+263dpGs8QpzBHZFO70itVW8
	 w7Hb0E7dyNPCUXv8rEcajgDD5trhrtDoYO9gh9r4yoYX8F53zHtdCtaNN30zsNO6M3
	 nznODVB/e0ygC884ELYEENVWRvKbWu2ZsDzRu57GUATAqedutK/S+Z916NRLd9OuVv
	 RyiUe4dzzUTsEPz/q4dY/sWiNU4v2DdhsJNJItMcjSJ2CpAMIY0+snud0EFvUL6RkU
	 F+BrGCDbehziFTCshLCnpcdrLDSFXQkiono+fV26tlLBVIjT5AQRaMvUmeIIxjxcbC
	 djUBqZkJIFwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29ABC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615314277.14273.5151322918385629610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c76f10239202360c863356d0e5870bebc0d512c0000acd882bf57375ba93c96
Date: Sun, 19 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716153142
