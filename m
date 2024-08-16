Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD8F1B86FB
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723821354; cv=none; b=jmz4e8Nn9YP+5myM/jaIupwAiIbS4MXTSrSILK+setCm+Nj8TH8tywaPPWBICjFgIajBnIQ8aMJ3QId72HlTPqUUdjiHcj118td0zOdmLRZ9eqEuBhdH/iuKSrLmTUrVXLKaBt9aVWpC6P8Labs6DJOjzgNLDOYKOnvopE7+ZWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723821354; c=relaxed/simple;
	bh=GTjcl5k+p+ioiFpA47TVkyqvHTgp7pLq5RrfahcXd7U=;
	h=To:Subject:From:Message-Id:Date; b=EKHzAo/AFuip57v4sb+TQ6sIFG7AQ8sDWuc8/g8ZkBzmNCkKNd15EM0I/ZT5wOxl5R5spoP8/abqY+82R6GBE4zi/ZtkLVu8f5GOZC3w7LkNqb9lt0HlSx4ORE9kGxJ39YGUU8zn6UaJzRKGQjmyj2Uw2Tl2UQ3mnd0uUPoVgkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktj6YZXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktj6YZXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2454C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723821353;
	bh=GTjcl5k+p+ioiFpA47TVkyqvHTgp7pLq5RrfahcXd7U=;
	h=To:Subject:From:Date:From;
	b=ktj6YZXXTrJQ+Fat4vUgB19Elz0O88ZD4dhJWnU7GteYeYXxSL1/YXBqKKckXZagh
	 W30RYLytl7sAJ+ot6nw9GGgkEAULHP5HnV80sj+touUUfP8vI4DdZ/o4D7TzjYgtUV
	 o+o1mxqjntbyuYVvhjH9WyVEw09P0OkldmV2lqHpyXvNPJeXPbkmBPnEisYnWHXE1l
	 21/Co2V0LjeswXTpOkhHlW1X7CnPrrFJhv7irJT+sX6Qb8ksBbN/f1yCtGR9tZKd1I
	 snDCcCx1/43demwYTeousjAdFmy2OgloXU7P3CLPbkTQKPHR6XnpibHsy2m/+Pnf9G
	 tB4/eOsXm11GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99728C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382135361.13485.13982018268301111452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4cf848855a96ac599f110584f8752809226e827259053863ee2fbc88f0bd4c
Date: Fri, 16 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723821353
