Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D926A28FD
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712840296; cv=none; b=dcwLF7EePVsDy3zFOAf9aJKEU4YbR+RFC1dRK8WmTFEOIPYNIDxpAybqsWLOoNLl3i/e9/5Ymn/a0oYkRMZU0N5xDde+OWkVPjNNKkxcmVlU0ExDFxeoLDKCkBPx5DQsCtArbwnuwaKfg45zYlGDUhfbBdLk+vEwKJhyfyVn7QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712840296; c=relaxed/simple;
	bh=g1So4d07vcfkgSrlc6yKnns7V4sH7zrj0lNOjD0y5nw=;
	h=To:Subject:From:Message-Id:Date; b=tnaRrAo182kfzYfNZdBb5yhy99HMZB7wa76H/uc5Gve3KwjLyAVGQ1Kslfc1tYEA8tBJSOjGBKRK4hxvaDX54+kUG32d7f6nPfDexQXNDnBJCm1zrvKxJPYoYVm/WyGLzNIB4dBY/wh5tYoMEL3fmh6FnkDIQU2YMAQWB8bXpMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd6+iQ2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd6+iQ2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5C3C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840296;
	bh=g1So4d07vcfkgSrlc6yKnns7V4sH7zrj0lNOjD0y5nw=;
	h=To:Subject:From:Date:From;
	b=nd6+iQ2L9WzTjOFR92O/NRSlW6Ie6MU8cVYUC6ikJOAqwXimus8Mp03Q++H6soAZx
	 LN0tOZb4UAXSWI3xDnGLJPVKoNWW7j+J9tj3PFPYhbAX1qEbTQuKqSeckgsp8M2yxC
	 NEHlNd2yzScy8/Z/KrrZMfehLJdqLX5peWxVQEXLsS1NU48vNe1RqCrXYlX9Gt5Vjb
	 9bHuiUH9qI/whMywWQxS3qFiRZpQdN6BqKFc0HT9KI5+nRMc/+6J5ccIiYhdMV9Pwg
	 qSSfAPxUOiJILYAymRe9swNfNodd0aH/rVpRa3ww2aFW0GMSx8zCFQHm3/mZD4hYq7
	 ypHXDh6emO6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD73CD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171284029638.13124.9802315917522535356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567ceb800966e49e7143dfe3e1a01a76d53ba066b2a173a1b40007e0eb101e5e
Date: Thu, 11 Apr 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712840296
