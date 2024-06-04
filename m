Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1386BA2D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717463123; cv=none; b=rvP1GV7npwb9S2G00KoL6TD89RYDIWv2Ulr8FnbCGUmPtgtQwnFyK/aLFtGIJCRpjjbfGRWKpl9GejcZU+Q+tu4Z3Bzr5+Gn4nGPeYbFSRL4P6xMr831L7HhKugeNLRG8okNlHjP1QZDqDRXQeznkzseSAP9pCp8zv5QvxxEt/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717463123; c=relaxed/simple;
	bh=1AYI9tJvLOgoypAa8mA9TGH3aHimf4kmTVdttpezQPM=;
	h=To:Subject:From:Message-Id:Date; b=QZAL9+9dbODjOh3wEb25RfY3rrGVMDEZywr1n72S/2WJkUJCqBIR9kUgUyW23c7Mt7QPBEOxQm1UDIPfiCXG+VRHwCFOQmx88YS76Ff4LzMM1PBeUY5ekOHH/XPSA5fGwKMuy2g3o1wJN2pYjg9CIKRo4wQywcY7hsGsIpFK3Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2V+sU12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2V+sU12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13961C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717463123;
	bh=1AYI9tJvLOgoypAa8mA9TGH3aHimf4kmTVdttpezQPM=;
	h=To:Subject:From:Date:From;
	b=i2V+sU12KR06xd+PQGz8j/0snUFLrMeSdwH5gjYMBl3z3BsO4ijwuSV6Ce3jYNhPb
	 MZF9LZxdvcTtrNBxS0xVVwsQjTOqO9JX7mlzNc9DrauOHGn4K1QLK2iVEiqTbQW2/B
	 9ty77Chc9ovwQUDsigOEI1Befqfb1roDwsR+Asfvx7m3aPMq5s6bWQZUf5aYQEiuw5
	 lsfU3D/ewWz/7U2OIp9qOCEK/9UT6YoJQ6vgj4in9eO/4wXlqE9pzIyCe7Y44i4oYQ
	 /A6CG9JNcYgQBl1WZn7W5qO5jUsl2EAQWV5HV2LPQT9/lUQE65LUAKheMdE42Vrq/f
	 eoMVmU0piG5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4D1DC25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746312291.6141.6591219758603773479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563ef71024943a9ce2387cc899b845c3e7f5db13441154975abb4ecdbd406aeb
Date: Tue, 04 Jun 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717463122
