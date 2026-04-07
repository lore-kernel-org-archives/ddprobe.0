Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC56D1A682F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775600734; cv=none; b=mSWDISnLwEyH8DUit7OV1gYJm9N0L6qXCRxh2mWafC3QrYXxheK/qkA5hI3xhVkXdQ3T5IlGDC/n9yo4JIabHd3Skr9ucUqilc3RiNeKZoUBFH0xrfseew2StLelS/mLKxbbtP+r+wjD2jz64wwYflbUKSv4DPk85Kn9vwI8HKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775600734; c=relaxed/simple;
	bh=aitBo7K41vX/1uxyS/dNzht6DMxkRzfFOHDL86fUqM0=;
	h=To:Subject:From:Message-Id:Date; b=Nb85vZkbR7ukVZ46rULqPldRmVxP3UuRo6dMdUgOAKr8VFvzZaDBt6wETn5pXTiqH9gPEDtWjcwMCh93bbdCCW7kEF2yj3NMnI+XHF0XCZH8UKjutr6WH/oF2DYUrjsHCL5NRIDeOpGnJ7rrh1dwqwvT8q7zvYh1WZ5WY054e+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib3U3AkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib3U3AkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39B1FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775600734;
	bh=aitBo7K41vX/1uxyS/dNzht6DMxkRzfFOHDL86fUqM0=;
	h=To:Subject:From:Date:From;
	b=ib3U3AkQPk6uy0ntGIaNj9eVYYlfADn3bHkYOx1R33iHBjC073tkT6TQ5q4loVCEK
	 x9bt9mbwgB2xoQp3VgAS0HhLbkezUYjLwX7h/w/K1ZL1MwAxUXlpT4ij+EtU5hx+tB
	 IAZmHjhiUhhqGlCZg4oHl7foHE146wQY1cjmoNbHi/nKvGKTb60rCMwKhBZe5rw9/b
	 45MPEbNin+kN1rk9uMcY7zjazYzKN5nIRO098jskbVSKn2jB3SgCDnhzsM71ohVf3/
	 rr/iR25f5+zp1rfiLztjl4o5zf7N9wxae0RnkWxoQKq6fc2CIwOmR5doWByL/lPT2O
	 jUsPqLfJmOCKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00FE9FEEF55
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560073396.5056.12812587812114249143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36880d91237f4f2cdf9d360f63ab5b4c9365961ec94a2c508ea4be65b73510f8
Date: Tue, 07 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775600733
