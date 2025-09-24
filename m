Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315AE153BED
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758748194; cv=none; b=CM3tImyoQk3auQXXJQ0GRYXAG0dH/hLgBATiCySQYRJhfM7tLpv+uLRZZ5bfatMp34M6FuBUWyDmB8ywzzBW7FzXbDWMBCbB6M1V3o42If7cYFZbiSjPHdlfWSrGpBviFRkDbZeLBp6FcehSmZnhgTQyHn3kM9ENP3FGAEwoEfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758748194; c=relaxed/simple;
	bh=YiE0nILRHOziaQzwq86AxQAk1gZ97Po4wKKn25TfCH4=;
	h=To:Subject:From:Message-Id:Date; b=C5aTdp0wyK50HQI6+zUT+ODzzf3UR8mLX7lnS/9JygrDvuhrDwQ2OE8iGjLxQS1pl1rL5qcNmlCFEOX2OeKsuQztlKxX3wDd2DPu/Lw/XkkEvHQTkgcAdkxOx4LUDSyPWnEJ/5RDyopkj2qHk//E8DEFkHozS7d8t+vcv5017I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4itZUXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4itZUXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16CCC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758748193;
	bh=YiE0nILRHOziaQzwq86AxQAk1gZ97Po4wKKn25TfCH4=;
	h=To:Subject:From:Date:From;
	b=e4itZUXJxOyiwzxf6fCIITIpUa9pvkgoHERCrrbe677EVC2muKMF/1oJ8UOlS5Ljg
	 icKnJ1wALlWGARpW3YqV1L0ruJxugTP73G0vzVb8Fe6LtDo9i+bG+9+FbbMMdOXGiw
	 azxM0OYVy/R5WRvWjXxG7EehMDN/j96PufUdmh2EX/+rPGCSANGOtW2gvuVlODKGjk
	 XthoKFoNNK0mg6F46uyk64SxNcuQrRWKBHT+U6l70GyVDsOIrnBVtT56qF8DCoccKZ
	 UzRRhMXwBZvn9SvDHx3LoB4I7IOmBeSCYgchhmwOYkMtgAZKamRIrgQ1BIZEb3yNw5
	 7yMMoh+CFWvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998ADCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874819361.32180.5062935346418607874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23a19d5ed18d472567da1d704ea1c22034564ba41f109aa19e4be6f28c96cc6
Date: Wed, 24 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758748193
