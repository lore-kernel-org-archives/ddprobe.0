Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB71DA625
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725456354; cv=none; b=OBSR2z7CP2bSPqEkfjN+9oRRiLzpXau7OrHGTg3kWoE41hPP1vkNShcxF8AKCSd+R8ywRoE0JdPfvomrWEf7ldk6OQGj8fJt7O7jcCIlWrn6k40yYsQusBuSHDndWKt9m71pFxyum40Q6WCY1AbFkwBb6zh3nvnXnLGloulLzc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725456354; c=relaxed/simple;
	bh=SwNKrYZcVIZ/OgQ1p1bP11IvnEfRll0gmtFOcmuUU58=;
	h=To:Subject:From:Message-Id:Date; b=rNYKn2bjjGHrQTs4OJ4omFa6N/Em3GRmj9VRJ0LWpfgVtOzU/Ec8CGrx1V9RuzyxBu5SRgkSG6cJSEhBHWayBwvm/lmL5g01tnNa2pFWfCvnk90qgpwcHuPHxFm47IVZUCrCcIJ1lXAGKpOez6Fyrzcs7DjBV1WkK+XCgi33d0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbvtQcrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbvtQcrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D60C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725456353;
	bh=SwNKrYZcVIZ/OgQ1p1bP11IvnEfRll0gmtFOcmuUU58=;
	h=To:Subject:From:Date:From;
	b=fbvtQcrVIn9vreuUAUyOV8ROcXOHbd+TZtYszRPTNKoksJzXmgr0q4k4UJEDF1/1a
	 uZA4s+yOoXL3QqB/MmiOHIpK0ure/BR0Jw8UjKoVi+R0WhMv3dwo1oWqqnKI3O84Rl
	 4Suptr7xfwum891FoRyOktkbXCKkruGzCl6nD9c1yWW3okBAfS/nlnRatbmXAMcT1R
	 N3QCES1kUx3G48tQmk8ATl/ElEYgpJncF+EVj77ItkoXKWMbK8WLqueQaeRbYEO1ER
	 z6VLY7+H+d45LGg15KVszgFoC5uQk59ZydsRtKEuqJivXfBaZtC/rm+kPyWNW86Nnb
	 UVfl7Gyv6wZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984DCCD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172545635361.21097.6943002653336452509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074a58a335e87df67118a49a7d19248ad130a188d55a3476c9a3c84f210d517d
Date: Wed, 04 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725456353
