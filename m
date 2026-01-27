Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27D303C86
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529234; cv=none; b=k6x9obTHT5kJB1O8T7Eqlk8wQq1VlCz1Nft1gmiR91fIu0LIeND6L7b7U0yO7dAPih9KctoJnQKJUd2LSDkFVL3QPGAa7Ue8NyCCxkkMontuP+wzSpiVFjQkolUfqxPneMmzz+T1JNw2LZty54UTubk3m0KYMXuf3G/WuAEFB60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529234; c=relaxed/simple;
	bh=qq3EtoPw/BPLKxG6XdEhzf0fzytoNF1BwLJmQiDUr1g=;
	h=To:Subject:From:Message-Id:Date; b=os397aXziwhqw1a04SSzes6mcyKsyjdHkl0CzJkXgvIJbJMPr7Nv+LkZGg/zcYqa2j/SNzlubXTe9J2lIFx7cppMvUV+C+AQrZBINSb/EBsrlJBEiEalXw0Gc0COYH3a0gfnR2Sgew1nFLxq8vHUw/aY08KEOFsUjvcTGqbMbNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2Vodwqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2Vodwqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CAEC116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769529233;
	bh=qq3EtoPw/BPLKxG6XdEhzf0fzytoNF1BwLJmQiDUr1g=;
	h=To:Subject:From:Date:From;
	b=G2Vodwqs9oCh0exgQ9zQQE6Av3PpZoX2N4qzT9U+GbJM42tUOrn1xKzFeiJeZk8ws
	 GZWQ+pt6x9WvkoMQj/KZmvPLjCXsWz/sTg63z8n+bg15Ho2Enl/JbjsbI+hBP0Rlpj
	 CcNw8p+iyo8bUp3p893aUP23YDs3uZabsxRvTcWM9UuI03TwtfMYpYuQ8Kd5LfZo/6
	 z+1Y8jwlBUYtYwMCFfqepJR3qaK+xUgjF91VRI8Ni2wyWQBKrBqsjRMOn8jMz2oUAs
	 staN2KkGXyjBJdSN+evnd2W7Xhc5cMbuQO1wN5dStuUdv7UAR5gl97EoFJEog5d7cC
	 6C1u9aWXj1SHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93835D34095
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952923359.26036.12642249714400441925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2998c54c13a4e53bbeec0300e11d7026d074cf4bb6d28cb2824c6d91ab545f26
Date: Tue, 27 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769529233
