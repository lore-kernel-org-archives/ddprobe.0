Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D29DE56A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775343934; cv=none; b=KqcZEeBqrjISxq0n2rmwLbAjoC4RR7QB5lOfRpp8OdMbygGtNGvMUGM1S4OdGu3jvd0xv7Jl/kvxkzJYjzuVHMqHnAsIH9z+DO7+phPZn6a5lPUvdjFY8COeFjC1AxjSXgocD1YEgyLXTQycahCYDQ57p8suMp4C0gl3ivNvO+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775343934; c=relaxed/simple;
	bh=y4HVBFheQpjqHBAqvKV0gmWAjud8KEVT7UrWIe2rl0o=;
	h=To:Subject:From:Message-Id:Date; b=baYSMyjmqE2TvyxVueMu/kY5iUm7YbGwovTHlJNFxJefFVd17Y9yfMjYxqk5A5FAzjdp5AqCyFevCzJpeOp+iho/mOmfRHY4CDxRIw1AG2o9qARKsRTJw1ieccVRXnr59NKWpEAQPHqNpHa7fu3FFVwASxwB+dlWKyjmcQjWCjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfsCxA0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfsCxA0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C185CC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775343933;
	bh=y4HVBFheQpjqHBAqvKV0gmWAjud8KEVT7UrWIe2rl0o=;
	h=To:Subject:From:Date:From;
	b=qfsCxA0ekRpvh/W0056u9xmnWRBe9mVpI0fxFDeX9P8LJLEdWNfyNgyXDboqDxlfR
	 ne3+eSh5H+oN8eEAQt8Yk5FHZoJz0t/R7QoIJslrPvBvMhbudgXpUp15Ub7CN+p/2w
	 373hqJ9+MeGYSdoR2yV7u41fOXdP3F/vP1TFPkUfAq2iVy65OKXOvHpOY2sqcZtDzQ
	 Z/wQ/2eJQlrTyPcvLJsRNS9AUdE1xNu4/jQvhtNoJR4bwFJCy/1y1Ue8E/v5ATh6ox
	 +Uwbdxz7P0jN1FMJXIG8kAgcaoeco5ZHrER+DxQsWEhK6218Vgu0Kcuz+zZ7hW6XCU
	 mWuwSJW9GkCdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A09E63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534393368.6493.10361482233287227589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367b42524bf5f206ecbf18f7ca7c3ce79ab8f32077596cfb2f0c7460c1e28f78
Date: Sat, 04 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775343933
