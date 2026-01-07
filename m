Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE6C1DA23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767776034; cv=none; b=Za41M1dO4IpXlzl3+YQM5sUOT5+KL8ZgYs02RyB+rzxW+ArDqxhQLza45MeIVbbTZnYO6ZIPGpy1U7z+wz8/aWdop4H6Ptzl50CFzbiqcnvPkjJIUOOJGhKYCVaDDvMqTO1gmwWe8vUONL+DV7sjvhjDaSfdbE3WrS9ppr8lNM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767776034; c=relaxed/simple;
	bh=oQvr7nlNycv/65/JSaw2KK+4c2rQwyj3jGMHRkt5E0Q=;
	h=To:Subject:From:Message-Id:Date; b=j0V9SgKS0TpJgM0CUBd6XtujQDAR0LaZLmrwPe/FX9TOjYn2aLFTCUMS5QKQY0fhcf6wgsmHnlV0C6o76wDu0Wiu2+SAp+ZW4BpReMUCBLD7jbbwbhRgri+arP2QkcJ6H5Bn1wikIqkETMzV17djl15tVFreRSgFcEoia7UpdI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTXwU8Zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTXwU8Zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 991FFC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767776033;
	bh=oQvr7nlNycv/65/JSaw2KK+4c2rQwyj3jGMHRkt5E0Q=;
	h=To:Subject:From:Date:From;
	b=RTXwU8ZyVL9ZLeqVJKPKAkvgNootbNou4ihM4mvcsMfvf1Boul0WQF6ksJUT2PE/2
	 vT7gFTaLYp0blcNGCXb++FhaJOWb4hvzw+An0pIOdarHZpV5mlygKcESpijCYijl1T
	 kXJn9WMZACAi5Ns4GbUJCnkTvOo9mThyV3yUEiht3ZqdAX80iD1nff1NApVLAcqhlu
	 ohVyWwEbMGX/uAzxo0VxuUqkvUwag4htBcw8e2L2PG/zPPvMy/8E/2Gg13rcFF4d+J
	 9KN4ryup3WluBIfG1GJqNIp8LeS5KKD6afMmKL2b/39ukmmbVuhr0O8pCeR8tVSH2r
	 Qyzz6YFgQZ3nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90007CF6C11
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777603358.14153.6381186011708864227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4ddf0399512a1a5a47abecd8cf375cbd3ed83cd6aa01c4b53990b56aa1c790
Date: Wed, 07 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767776033
