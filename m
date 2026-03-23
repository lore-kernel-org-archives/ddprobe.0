Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B661B424F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774239294; cv=none; b=h4/72kfsVgq1yAv6wDbf/iPNSm5rY5jYtf71irvZjU1jSwp2giR3j60DevGLqwzvdmfj9OKn7GQp7n1TSKTTejZ87j6HM+pODSjdJ/vovrbyB3Cx79+Axot3BLkUuH5lvbMxAGeH8kSt34oMkNp06sWIvcT9cNoRyK89Y+LQgxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774239294; c=relaxed/simple;
	bh=8JfJUI+939wGzRkOk/CmGpZxiuYg5maOxrGo9o+C+2Q=;
	h=To:Subject:From:Message-Id:Date; b=rDWnTwM0Q9QA2se3uHRYcFH1l9BRJxOI+vf+7pQCkkcnJlorN/v8FZFrQIRX2HimOJiUuzulGkVgTzy/aoRs0nDPO6eb1UsT/mLPfg8QvrHXdBv9zrvO3cr1hlyakHqrAEZFtWOAmc+5UgYyeAQARPOdnZIAkMTzcsjnsAWJKSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5s4yGIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5s4yGIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3283C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774239293;
	bh=8JfJUI+939wGzRkOk/CmGpZxiuYg5maOxrGo9o+C+2Q=;
	h=To:Subject:From:Date:From;
	b=t5s4yGICyhHjhT8Vxz/KGIff+z8+blNbau4dERs4JXjn4vLCEpMSv0U1JHnDw7jcm
	 APbaW5KdtOAENXgamZmIcc8mZycANuinUv/yNlbYgMnzhUX5b+VmdsqNTH2xmTEha8
	 3m9PeeEfUsB+98V6EEEfe3oN+UshrNORKzBu72TEpSQ+lSQm0WVICW6DfdIJFJlcS2
	 xcMElRLpAjxWnz1slVNrrfHyW+XglFxu6C7N6CkjkV8AHcYte3kuuIVBFuK1mGdP9c
	 lcwDBkK9PtCgRGyxMo3ckSLPPvCs8gorSEclNDbDhxYml81BuhPYfuKyN7JIachUGL
	 FJjMBwKEHmW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCCD58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423929358.14764.14246634204801978474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0704300c05b52e18b2df1e139170c41edf7d53522128207fc54c30b3f7949f
Date: Mon, 23 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774239293
