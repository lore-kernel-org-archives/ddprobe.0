Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6807E8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722040554; cv=none; b=m1PGRT1x8+n1omk7IpwZS/82uRWUzG6dma+d3bgaqlBcBQRes8VFkgTuzmc2OEPjY166CJr1zsPp1OPSE1wEr/MOrqQz+AQhDTlQhBbxd8WZ+FMFzmsE8e0kFH77Q/71PGmffwI/CW3akdYB0BO4PPT0GTh5dUNMBLrIaqe2r6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722040554; c=relaxed/simple;
	bh=MEvVzpiCStebRga5eSrlirxLMew2DQpXG+RKuVXSCuQ=;
	h=To:Subject:From:Message-Id:Date; b=EoyHJNV7vVWy/l+QJby6iVuEsudQZUJoCw2nLoRBJj1c0j8tbfjWl+Yz9BdkXba0asvr4bOYA6ug2sxz+YkOkqGWkv1e2BcrUy8JUio5WnYz7xLZWqTP1JpxgJejc0xih8e5vNcuoLiztRp97hI/dkXoy1blJTkE1minvv/1Pss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvbhaG/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvbhaG/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1451C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722040553;
	bh=MEvVzpiCStebRga5eSrlirxLMew2DQpXG+RKuVXSCuQ=;
	h=To:Subject:From:Date:From;
	b=ZvbhaG/i4m+uqTR+vzg9tWpVYNVdk+PPHo7eKG2QlIpsHOYn3as/sGUmTn52pBgbu
	 rubAlXg3k8Q/e4vyIg6XzzjwpyQyTz8kBbvUgFN2eGET7LDD15C89/lZKDC1EmEZdC
	 Rv0SqMmPzCEM+ByJVnvfawWPqZOYVgrz6uAMV90L91UbY8JN4e6Kiw+Gw1HcC/mf2d
	 /gXiuERGS9osj9cuexqLUHr6LAeYlM+kYueT5DM9vX3fP1H417zpcsHtHcjba3KPDw
	 3HIYUatMiax95lALQNc1Lyok32itUwxsRUiGH7GoV5l+6W+suMbJ1p/1jfM+RGsBuZ
	 DVje8lI6TTbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B396C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204055362.2252.16692315616379765108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60fb8008c8f211b1c2a09b6800b22fe54628209a141cd724d4e164eb003bb6e
Date: Sat, 27 Jul 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722040553
