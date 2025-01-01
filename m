Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA826ACD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735743954; cv=none; b=r3xUoyXHEcEsN+CqLfs6ZIY6Ek99lK5Ha2nY/+PHJ+jElInQmRSEsTk62ISFevZFxFvh22X6vKRHRK2SPdr5uBQfKAfaLELECH4z3QUeq0zdlGLvX7yzI72YUtXqFHCYKYJX2mYM3M2Vvz6mO8ij4gm8eXO77IbQhW+bnKMy4qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735743954; c=relaxed/simple;
	bh=p/BfJ3FiRtX3THDeJRVrSsyLTKNKz/V15njkr54e3J4=;
	h=To:Subject:From:Message-Id:Date; b=UcGkWpkRds042w9SK/KtnLGIRgF/+OFzL32phWXMb4wytGWYiNZdHcg6GGQhggeEt1EWfxcl6TfnigJm+GHwrghRyHo4NMClzhhS0oBUZPhHct+9ixYmlUmHUVr6wfRgWfVsjCOq+X5gUolSKn1lVyDUvIFPHdhk/zxkwGCm43w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPpvmW3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPpvmW3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77F6C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735743953;
	bh=p/BfJ3FiRtX3THDeJRVrSsyLTKNKz/V15njkr54e3J4=;
	h=To:Subject:From:Date:From;
	b=UPpvmW3cc74Vwe1KKg/wjq4vuZxcVFO9g5aF3NHofg8qN5XSjk7dj2n9i4/M39Zm4
	 /DcCXsVMHLVlDSIY/rkxttCWMNbT2vZoPVfN46qbtJWk5+ZKh+ZUzQImu/O2PU3H/R
	 2Jhs4U3U/xuAcGhN6DfJXowgdrtCq041jwM44RSIJB8oUfMY9YR0j1AvXFFYOTeJ5Z
	 WGsq4jRS8uKR2h3v8sCJ228suITZD5iTo9c6BKfEy3wkMXf0bB+iVq9CZc+/2cNLkd
	 IU8L7e4IC4SKPjMbLNd6aVHU25g5TIag8JtjIVnqYh8gYiCCOq8ZKzsJ2jXo2qZuLx
	 L4moerCBP70Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93999E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574395358.9760.3959873730077960343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee64829be1fc8f02edb6ae9d71300ec2ae4f5a39de36745a5fa5a43125ae074
Date: Wed, 01 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735743953
