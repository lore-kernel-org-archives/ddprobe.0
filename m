Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2303516132F
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733453754; cv=none; b=D3LdshvfU0oB6A0Ahk/dk5f+eQgelpsbpmdJrcUEKIbAaF0+tt0lUqnzWUgpEjSZRWqfoV+rnSNbYSdkN5pwy963m5+OpiWWH6REuIsbPlNIcJL1jAcJyaxnHwaRc4/H6V3cwNqdtsS/wWaLYGDFW2TD7cxHgnoDb9CkQwzC+kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733453754; c=relaxed/simple;
	bh=0TvycYyx3oedvX+O0YlKnn9rg+6XBxUOZTQ30h1ULqQ=;
	h=To:Subject:From:Message-Id:Date; b=BC7gyBNKO8PoRsdPxuoHaaI9Ino/3hpLDRqnyIZBjkovjmtBxv3wr39HTpxp2+WmxdWCxGUUCOwKRA/PgjWrWEuDUlV43+eqLRvS6v7je+O/l5jmMWIzc0WapTngrwLG7ncZCgH5qIj5yTBV3y/vNkGIYkpZ+cWww70CuCvqLyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2EO81Y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2EO81Y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1312C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733453753;
	bh=0TvycYyx3oedvX+O0YlKnn9rg+6XBxUOZTQ30h1ULqQ=;
	h=To:Subject:From:Date:From;
	b=j2EO81Y+Vdk3MjO/Ac3vvAbd2NWLbrMZRYhfmkPf6Rg2HxCfhcQNFVrbLIAIhC18c
	 MqmWzFgc+QRBEdyV2pMszL5TvKyirBsT7/tChoAMUh+yJJrV74Y5C9yJiXiOby+DRC
	 47MBft1Ku6OF6fJzHe0hmxK0d9tJGZmhFZzjU3d6s1R2Nw/GNvTNi0H/WXNOilhcDS
	 3A1PIQcicutfPcXyLOHq7FJXI228W0KGH53dKR1VPuUERtgE49Q6WXXb2quqBYBc2N
	 anziOUCsMgZhGyoEYS2B6yHmyvJ1Da7te7bdc1UeWykU39k7U+b3PCPm31vDWq4j/e
	 zFsKCarbWJRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36B0E7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345375364.27540.13079624379518750964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d04750c6db2c6ec32ee71f00fb4907ac245e5b98564bb6026c40a0bc1b1a1d0
Date: Fri, 06 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733453753
