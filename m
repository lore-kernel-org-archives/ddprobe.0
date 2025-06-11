Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211D91EDA02
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749685194; cv=none; b=RLnjE85bjuQR4qNUZgjvPjeeZjmGmITI4UkvIn49mjZCTlA1ohxXObmTy651BGRrAVzCzirKZKL80LQPzrhk8GrHK7eafdjC+36Z8plU5UR+l2KdQxLgbtcFgGAwDm08O6MmhYsWBrqqPXuOu5J5ZRBnahORa7Mhib/FLzRcXt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749685194; c=relaxed/simple;
	bh=4FxWOdkK0c9rgKZMIKEBLkc72VOQBhH9sPfJDTEqNpg=;
	h=To:Subject:From:Message-Id:Date; b=HvqNUOdifRD7e0mqoQ8MFthJtU2p8Z0R6tlpe7odkFcLeMuy0BwYc5t8uUwjMPpwmQlK3msOPnJfegUQyc48Bb1NZVvIwqSb/jDJglTVFsCS4VJTTrqNO3cU7vUytYgawNYMAiSo3+4KdPZSm8m+HqURUqg0UZX2jsZbWFRXSmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5SHRXms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5SHRXms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB7C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749685193;
	bh=4FxWOdkK0c9rgKZMIKEBLkc72VOQBhH9sPfJDTEqNpg=;
	h=To:Subject:From:Date:From;
	b=n5SHRXmsAW4tXfhe0iXxjGtGqsUZkiiLCGIUv52Ig33Ft2JUm5AViLRb8YJZQa6IZ
	 /wTn4kp8r03FHumrY4YvXCOhi0t1uY/+VPCwtXKZTsoeJxCTclJe9jLS8Jv4yNMM58
	 3ORyoZPTi3TaU4y1/0RqwVmsF3WjCoeZRexZYHKn+MSaXrLBnUUd1is+uv2i6kuRIl
	 p5LjwsMp6/Ljyj3X78Ycy23HdqlYQqK6L3wmLepflmMgWXe46IkotJKz+JMn0YSYA3
	 geETjKRD2uc2uBrHC5IZ7OR1a6/XXX6d6Rfij4ooXa6XHtthm96m9HVkDki78c4jAC
	 4TdnHThZhY22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F5DC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968519358.26234.2627839101884021979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae53d09016698ca986d222489c197df3533699a05ac458f1179135625e3f047e
Date: Wed, 11 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749685193
