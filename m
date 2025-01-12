Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44942881E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736669754; cv=none; b=OjHxw6OCdWOBiENCgXIdMumSXzXmSiJmT2LLrg1rNdlVP2SYdI2/mDA4em2GVwMBvfRnpEztMeBpLHBk6gtt9oyVRUug9IeHcfeIuIaj3ZJwlJlaOL7N+HGIVsZDJqY8aHeGRK2hUPyabOvmz8xrTXYvxLI4iZ/HmGn+LCVtqYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736669754; c=relaxed/simple;
	bh=efpCeguRxHDE6YLXbYN9vU9ItMEuSVP6kPZE2joA48Y=;
	h=To:Subject:From:Message-Id:Date; b=aaw3/QiHJcIGxyqhDQsfzIJgHbuDwCEyeMDhceW4Nl2yUgF7NLFzTV1Z+Gzkxxl/Ky0a6CWIlo7vInZ4HCRHPuVjlF7wEp7a0JzU5wYZkWarvgRDbHOj4gHdqxfOVRgang0NnLMmJgea1PztLGEQNFd8jgsMVI06s4XGVZtkOP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpKK2cWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpKK2cWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFB8C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736669753;
	bh=efpCeguRxHDE6YLXbYN9vU9ItMEuSVP6kPZE2joA48Y=;
	h=To:Subject:From:Date:From;
	b=KpKK2cWPvLiZIXsLRytSg1juG480aTe3elWvNg+hYzQFpNxkVkqv9mDfzIR7CC+Cz
	 JqTmx4hJDhHJeNmM1/k3MJexCwBgNaz7fy3rti3Z4nCFRkz8P74I76H0DVeaxPI1eR
	 Oq1cI02XTcRV6m32m0vyJX/NduPmaO4s/UZ6P8Z3F522k5f9KTMfon8PeQ/1xEgbNR
	 HoBsTa5XMJVpEpN48rGNsdGroOzdIeGoOEzcOratYeftFRswjVH5ZOxlM7jUBCgxBq
	 JGspdk/9+Asl8iZk81PZPzwn2VkmWrawwzHGZUtTTPPvjMD1Bwn4NVWBZY9JdZmlCR
	 VKJqnmpoh+Giw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD22BE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666975369.7160.14223379632414558381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f82f2da399dd415d4fb9d22c4a841f42a6bb05c4dd7a7ce5065f16678a75c1c
Date: Sun, 12 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736669753
