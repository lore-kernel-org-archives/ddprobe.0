Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7701D130E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774400094; cv=none; b=L9Y/96fwOjOhBbv9ULxEsRO/W7EiL3xos8GFMlnbXWexvoWG9zHS6VhNl9SYvwbae5kspi4uNIGFp4r/v7TTW6aD7i0eS8uZtYi0VaZTO21Zq5GL1DAugAwihYM8yGDiY4VMbGyICVWcz+EjDlBgqo+1WSRwUfsDMcEmGdCsPrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774400094; c=relaxed/simple;
	bh=MDhHHlpuG+7PAcBA192f6kIk4jPUkbZFz6tYAT+6eUw=;
	h=To:Subject:From:Message-Id:Date; b=hKMlgyzefxNV+QkgFZ2G8Dn/c+poTWpY5KzYm7Z+cem1utXDi5PURgzeUVXxdm28XULaH85G4lg/GIJ9/Xtf82zxI1IaMvHQxBk7/1/bcwr5UefwIiMQ88dazOL0hbhXWKyqZJ9tu/z5DtrLco+mRYPGY8lWjY+9C3YqpW4xofY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfbWe1GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfbWe1GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153CC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774400093;
	bh=MDhHHlpuG+7PAcBA192f6kIk4jPUkbZFz6tYAT+6eUw=;
	h=To:Subject:From:Date:From;
	b=hfbWe1GKH6WRPGobUIW2mZUkzT9KYO+c6sd9859qhjtoa5/3wXVVsXzR3CjtZe/L+
	 uZj1uGPy9e5z/CsV4UJB+68Aj9HbNTAInK7TShl5oUF1fX5H43dF2Ch0qn1McLTKmA
	 gxeFpMvmTa8iw0kpXDOzLBYM1JlEKmpWpYPztqsPg/39lnXvI20NODOlixzp6o7s6t
	 2AhvFi+u2WQTXr8TaH7jIFbDTtEE6kM51reBBc8ArNwtYnCPn+53WYA6XqB66o+bBm
	 75qrHDilxKPZPDV3U67Q0gcAOxDQrW0y+u1Vz9vpxfBcs68oPXUvP7dcxsWnTp6rka
	 NoQiUPJaWYLxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175D1075269
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440009358.3895.17265950438405197075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee962065b6c9c459a6149b646c451918e4de72925a314d83d4eee4de3a2c751b
Date: Wed, 25 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774400093
