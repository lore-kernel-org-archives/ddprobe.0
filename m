Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6209C647
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738037154; cv=none; b=nzR/Mmhbq4bBL+iWpwgU+/h3RhiZcsO1nZOJPrQPozAvwFEVT6S1MQX77/vlAzpv6/PM5q7QUhfNMjKJfVFb/4rj/+9JOffPXYQJ9VXsK3vSjnZ/qcKL7wpu9D7Dej63aPkorLRmG60CrZmlaVLCPsDzwAywNLDNCgB92NlIHAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738037154; c=relaxed/simple;
	bh=v9AXdU6RrCSiKCGwLFgda1yUUGPYOAcmC1xcPXj4gXQ=;
	h=To:Subject:From:Message-Id:Date; b=U2gkFuLw+sNSJVNYekkI+awhGHOj4O0LeilmgDmLewiuUwWCueQ6nzNkA4/hRq/KZyhKyWe+OnLacX9RlUXqBPFNW3ipdkMEg8+CE4AaqjU6FfxxbvD/StjcKYpD8GyQwkbjIoZxzExkwSNl3AA6vthJLIFbojb2tOzEEKSsfuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0cNWVoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0cNWVoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB92BC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738037153;
	bh=v9AXdU6RrCSiKCGwLFgda1yUUGPYOAcmC1xcPXj4gXQ=;
	h=To:Subject:From:Date:From;
	b=s0cNWVoDJC4qZ/T/LRuwp5wdSxwL0f2n3Yiv/gM2UFrekqNIHLMmw9+s+Rq6ujMUk
	 qjrYkS65sKOsPPDOLCNGT2XzHaS+v21yPAcpUqLYvf95T6UZ7nTz9uK5e8wkVQdDYb
	 B6CqWANuSdTg16b14V1GlLHwtPXiW31SPA3+GKkotQnoQqkDGOrbaPJ7qMq1jZzYxP
	 zMzyOs4nDFN3c2KFWEVNCHTs/h01Qpz7e+fglLZMl0pguTHILgbjHdn14SB7rG6zr4
	 lZ5fkqAvyHzFmD7VUvr3ybzqh6Ihs/aIrYlIciQei4wGxY7UbyBVqvhV7Q31ZJGXz4
	 bAecC6RllgthQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C53C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803715363.31102.8612320649787742451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bbcd3ed5ccd7bf956d9b39d100e41c0e00401b7e147d7e55a43f25b6f05190
Date: Tue, 28 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738037153
