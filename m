Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347AA199FC1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745378994; cv=none; b=Zw4FSLkReVhI+UQjL0RB0PxP9anT1wooreo5NeYopXJdfeiWo3keXAOdZiwFbImh/K4gJQbYfjQnbagIkJj3Jh9A72LeXFtWz3Oe6P9lpsbDNTEGf+8AlxYLmD228gUH0RVUJKJHcU86x9d/D8ZBnam8GgevtQecMcLhz4v+XVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745378994; c=relaxed/simple;
	bh=Mrl0CZUxdEesgw+KQEejefuOFfcksslwrUv3awm5KU8=;
	h=To:Subject:From:Message-Id:Date; b=p7xX2tYgfY40hSVga1JZOxLfLoOQEdt0KOBkVW3WXL8QU3QZE5gyu+o6clGZadOkcAC8/udrO2gBeNYRJgNI0ihpGLGZjVj7ClqABp/iZUidPFePKGimkr/e7xKsKcgrBYqKaL5I8QVob+DrVCVAkRmeDORJLDp/8sKiIXH+C6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMm6JOUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMm6JOUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D88C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745378993;
	bh=Mrl0CZUxdEesgw+KQEejefuOFfcksslwrUv3awm5KU8=;
	h=To:Subject:From:Date:From;
	b=tMm6JOUW+UebqN4iZ/qFpQ0yQp9WlN/jnq4tgT2gAsNHCjR3uMuzhobcg0HCDzsic
	 3cj9lEIuE5icA/c9lMwujh/tDn8FCzjTgh2uQ0/h7nn9ZcRWtHT39TK3JJVwKA8h7U
	 rU/yBNbpOtXC/glmYx3dB6OiWNzvT2FQrvcZTgV+5mB9zgBrsgTwbMy9LJT1uYQwkK
	 Z3Pq7VGcSlAJP+289PNEhtSEetZoBOyAd9xQEvzFr20XjjIpSAj08uizfryCvPOLwf
	 VxQ9+ygxhNbgvlLG05qEm+snpqb9rN/ydJlt4Szu4U/dZmwXWtwiSq2GQoiflacHiJ
	 L/jCoDlfSLmQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23BC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537899357.28845.2360597525821430483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc5eaa0af1316547d0a0f6be827671a7c997438ddf29353e20484b94c4110c9
Date: Wed, 23 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745378993
