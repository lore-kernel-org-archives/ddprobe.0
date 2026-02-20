Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07196C8EB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771560894; cv=none; b=hJzyt9M/pCPIUOqSv6R3vzXdYk1i4yIpcMV+1QEe1GbIXRUz5+LMB06BUfhXSiRVKB2xZUT6OozNIq8Qa63ZEqmjxLwTD4SNCvBYcVn/QzSnXcj65pZ8Q3LOcR79YpAcNYfYiI7AClIUoFbAfFZOVAVdvn+TKI6nJ85yGFOVEUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771560894; c=relaxed/simple;
	bh=rGjdFDrhEi/GUbvdTtldV+mKt89Tpo11rMmHvAgMjjw=;
	h=To:Subject:From:Message-Id:Date; b=PC1WZTSRayYaLpzN6/NI+rFB/WqLQlmaY2jYDU4AQYp24JOdl9bd4qI/bTLVaS65WK1a1MGggnGPAmuIJYZBlmrbxDeW3jUT0e0npAP7iUgqRRfYvAlOS+47LysmaYsanbRfcfGF/8+cpZ8fdy48Xn2SxQYQJNJMY5+oasyanng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exRIjMFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exRIjMFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A308CC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771560893;
	bh=rGjdFDrhEi/GUbvdTtldV+mKt89Tpo11rMmHvAgMjjw=;
	h=To:Subject:From:Date:From;
	b=exRIjMFGsi1VyjxA6OPuSjcnEJXNdc9JDzcofbMhBs5+cWu+BhuKMC96CIdGljhEt
	 nc6Eqbx0SIyo0qMOcrBKYd4fjSsLrYaKoy26bysXhDxJyNG/Nd6FJu8tfCC3k5pKza
	 oeDmEgDcgzX7QBwA/3HG83y6PmnIF9bv12T5NJGLYdZDO0zbTxlqKRimaPQv9xCJcu
	 kTqiGtOV8OYoc18xtWut5Gh/4fOGX3j+51z6p3YkVXiCDCg5oIW7kL8U/r3jS2WEC7
	 37jZf9UhM2WFwEAWrR1AIh+LiFGBBaSh3FvwXOXw9833hM6xwk0ZI1SQFHmjfuB64I
	 j4P8W5md/XScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90780C531F2
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156089358.7600.11324776124942884939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19be5c7abb204c821d98cfcc33b5ef9398bcf2ade469326795d33e5a9791fbc
Date: Fri, 20 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771560893
