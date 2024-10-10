Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CB72904
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728526555; cv=none; b=pVjE26oJpvNLgnU8wpMgloxC3xpkAF6eovVftHhavyMk+kpf2NCwEUXKWW3hJlxuI+z1iZhw1nGv6IgtoqZRTRJ842Rgejxb1xhAX4/AMIAKn8Dg/1pC9xcY5FeCsxMR3ikNKMofNGsGv9bRAA56qLXcgsQY2Y61MzQNfX4X3v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728526555; c=relaxed/simple;
	bh=Hc+lJU9vR1Bl/45rvwcAsXF6DnXiPXkf3FBZLtRtnMg=;
	h=To:Subject:From:Message-Id:Date; b=pTIm84722KzXg5/4gZ+3SoG0Rt5tIiiG1JUCLsOlSabu9/LTMvaWbXUObPyQO4wvHTb2VoPxE4IDB/7kLqo/w44TyRECm4eVk+u+dTPKCDgUeSEQW02EKLB2q34DpyAeMMpNIKDsKd7GlJqA1UrvKfrlDQ5TbzM+5h1yPWMz0mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4JWjvfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4JWjvfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9DC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728526553;
	bh=Hc+lJU9vR1Bl/45rvwcAsXF6DnXiPXkf3FBZLtRtnMg=;
	h=To:Subject:From:Date:From;
	b=Q4JWjvfYhB8RrC/lXpGzOsCKpDnrIiMjSZrOMeTauY6crsMKVAc4eNDsvqTzFSOa2
	 4lP/brFhliCM5t5j4GbexXAYrSq/qiOr1g8VSJQJvHUoSPrzRfNxbwhz71e3o93TXm
	 Fk2ZIF/nUcjp5wvXqRbUK6+zcWz019R5HLWZXtWvjO46pCt0h/pfdISav0Kvq6BV5P
	 UZD4dyK0f+QOE5cOzg6XzaaMNlQfDcQPBqyUoXNkaN96uOy5RxRkvU/ju8AIkMpyw/
	 SkX/rguWj86Ni1j2Nrsvm8fBzihFVLOpsSmembGUS1iHb+1ptQ7RHGhOIJDsIcT1DJ
	 pvXwqAGlY8NnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBACEDDA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852655358.7713.6072097638098011424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b8cc59d491f17897c488aea91e8d318c3b2f4fc538f0dc8861108d44633756
Date: Thu, 10 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728526553
