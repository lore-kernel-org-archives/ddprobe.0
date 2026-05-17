Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D95B2DEA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779000034; cv=none; b=uZ7V+kgd7rLYXBYQ7L4GK6tmniAicfZTiZDQXjjG4hnerSM0CqtYceVo1LnLLbWpWgSext0Ws5e9U5NtzeGtRwZLiKHOxxahb2Y6g7CByp2Cz90NBfnLEC0Lwwn9w4E+ivfaL2ZEg2e/8w1kk0o9N0HT6QCtCGAN7mIJRNus4kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779000034; c=relaxed/simple;
	bh=iB33gYCGxHp82kWfoGiBG1znpmXzqpoyhyoHG5sW5Xk=;
	h=To:Subject:From:Message-Id:Date; b=avYvo6tO6uXWd7UVn0EYn4N56rFrXZqbUok2TKQU9EqE5HfgQBzlYQlvWDwWCo4lHBgmArR0rt1U8Bp85/TJMZ2temDX5Pe0DeAGmQvJ4/FQv9hap9VrX0z+Jfauti9x0mrRRtuxmklOlPzM3rb2DOQeSzA2rS1Pzd2JOLRY72A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJlh+JaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJlh+JaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB306C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779000033;
	bh=iB33gYCGxHp82kWfoGiBG1znpmXzqpoyhyoHG5sW5Xk=;
	h=To:Subject:From:Date:From;
	b=MJlh+JaUydpagCyqBH6+bvyDyT2P0gqEt2mUYFBFcxunxzuHDijqwJ5P8JtCOVbZS
	 QjVyiY9ETQwLotKLMUASv5pzZrs+5B3H8CxdE/NBigFF5DnVojGlxPx2bgIG9tFtic
	 Y5z2ulaVQ3Tqwu2xMEU3DoGp+f9heYLnD5jN9KCk1GzwJQ6dEIr7K6QV4smuF+oOtR
	 mChdJ5CR7q3OHxCLa8y3wNZ6FtTWchmu7SFxvH0djrG4hU8aFjGLuIh4t+ro3FR35m
	 RRwH261VnrxfUMw4AUaMa4cCIDcu047vUmt1NwDf/Ec0RkZX4wKj3F/mnej0sdrfdd
	 oVU62p7YMdOBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8491CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900003371.21507.15653095260390300692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4c076e75eed0e66494e7e8a2c754659b2ca52728153deec0c414a993575600
Date: Sun, 17 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779000033
