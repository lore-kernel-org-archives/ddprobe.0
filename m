Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFD5294A11
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747074594; cv=none; b=GX4lhSE1O+m9gFuRz/lQP3q+tl75sETEIKKIGE6LboeROTOQROQfP2KJPeJhmVjsSpRN0M2c9QQ1B5hhUvZUU7d+gakb1L41ca0Zd+bapUDqLbYxNJdtIplE/xgM5v1dSej31YciCmuBu2ERrvFGVsXiqGKW+92VHKA1tB6rifE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747074594; c=relaxed/simple;
	bh=Y5bonpb3JzXd41rtygO5q8JbufO8evUXE3ZT5z5nzVo=;
	h=To:Subject:From:Message-Id:Date; b=Ns9QznFHnSDUqHeFPpljguJQ6QyAiMukJJS5eqb4fL3ji2RAwqOsyB99aBJaR3nzGFwcPb8dRbJ5vfT5odbGlEW2MUYlyFsAWe+R72TeV+/8Q7+ALBjcC+ukJwUgTisE82TT0ltCHZhZZH7UJk7TrQSnaV7EGPiFD1BG4qiEjk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHGdRvvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHGdRvvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747074593;
	bh=Y5bonpb3JzXd41rtygO5q8JbufO8evUXE3ZT5z5nzVo=;
	h=To:Subject:From:Date:From;
	b=FHGdRvvsc6tMVT+JzGmBfWhAkOgs9RuQJLcxxPZ2kR9vbWpMkgvnJWggH3+JHLng9
	 Dgzwdc6H1FV7sz9ZoWT13fQYheXtTgfkSyWA9jUMvqMUSDeZ2zVRPAj45VINfMeFq+
	 9CShUFZO80mHOAbtjjWLRZLKbaNOcmROspqqeARh192GaUsEI9loaVL0gPnEHc2y4x
	 lvIFcYaUFZSHVwunOCKgUMskP8xT4Q8NyBFLZl+rfET3jV+fVjNlcR4hDtfkoOm++J
	 QEO5wBriU+xPBQax+aykdb7oK/fT/cyTvHRMlwcq9HmGShx05I+PJynfqEHXUbWYTg
	 EGpDqkoaGX+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9273FC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707459359.10006.15801673364067614997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bbc3cc6e797e7ad1a5d6596ce50d089b0ba9df8fca5b1ebd2d6ee586e02133
Date: Mon, 12 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747074593
