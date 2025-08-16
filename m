Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2D842A9D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755377394; cv=none; b=gTp9xDUPo09kbacVMl6SEHazW5P9lfI5w5z/a6j4PI7jChltDxzb+/gKrnq//gkMG/Yq8y/X3E7BkFghKkYDR5nXb8c0mHLej8XHvaWz+qgBzrS3k4qXFz9kgpsLbC5mxLaP6u3CsHYxttoJfxIU7U91Us7rDKDyOrZro1HJsdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755377394; c=relaxed/simple;
	bh=WYOkXkJnIPD9LtxcK0eBDJy9q5crfTSNbGvVdfkKpG8=;
	h=To:Subject:From:Message-Id:Date; b=fvYvZ71K9P80EotGX2mEVQXOhNptCldzSiNLGGwh3RWXXEYZ/5RidJZWmfMAxis5R4UfaNMM5Y5H/hgHndNSZ8II6dXlAUb1mE4zNs0NuU1OdnZzna7hQTRVGuHFW7z1JYfbto1Ltv5AioY/eCZS3jvmCAwPjFExgq1djBwSWbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Znjx7Eup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Znjx7Eup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4830C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755377393;
	bh=WYOkXkJnIPD9LtxcK0eBDJy9q5crfTSNbGvVdfkKpG8=;
	h=To:Subject:From:Date:From;
	b=Znjx7EupnwPPH0v2KZcCz03Ipf0v7vD+kE9xb2gbUeiqljYptFpM1o91wcyAJusOZ
	 7PInUjzDNltiy1tD5t/LZLL3W2Q5qVPmmk7l8dAKGQ/0twidC0NWTqomhv/uunvAdB
	 lAkPQp+HU3Td7aulrIl99pJErDaUOmzj4dxg81mnRKbAqe5NZtOQBlc1ooBhayQjWC
	 Io6db3AdXg0Ss5bjL9OuqXFmolrsJK1ZxuC+u7MwXgiZ4amWvmAZ/9W/3YIF3fSN9p
	 E5vCCJ2uUkOl1C3UrRUiBG0rp5VxPXpdaabjWwnd5/ZQXXn6ZIafnuYMkKcuk6mBqQ
	 4PJ9HoKQu9tlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E06CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537739358.21778.12650086600544768085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6d9ad45c5f221d3a457824aca2989f094181d96c3bfc2bd0cc5a7964055a48
Date: Sat, 16 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755377393
