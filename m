Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B7B1F7586
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764237174; cv=none; b=TPN8Vjv1ZsXVqAjBzujKa/PUwHIm2k5J8jB7zi3TeBdLBUzAzWPIHm+ajv/Q4E0b2BJ9AL9wCIK0W88NpVu+42A/I/tiRDv9UKGRQ9Hd+NVOZf5PaDpT19RBVEHbaqeg8Lje5lo7Y9DBOLit3a68yTbliF5im1bQOh2qTEROT10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764237174; c=relaxed/simple;
	bh=g72UFNOK5HtFXJFys/iBLNoB622NxTE3jUx8grp6ZYk=;
	h=To:Subject:From:Message-Id:Date; b=TuGTq8jKMMg+EZIwkVHneS0Ay8IJqW1y67T/RosMVu0+37478LHTDedSeNFHsZNt9HJCvoZl7b93B2ZUiI0fpQwzjhok+VGSh95OOu5qHy0oVB0fbwwPpsYa9I9LN0iuJ0mnVAW2BWHospIK+RBXFh4v0vtUYOxhYAw3OkBpEFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byhw4qfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byhw4qfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE91C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764237173;
	bh=g72UFNOK5HtFXJFys/iBLNoB622NxTE3jUx8grp6ZYk=;
	h=To:Subject:From:Date:From;
	b=byhw4qfY5y3Ab6PGjYLcTT2A2nGtqblaNteniHnSAFZqZMt7d5VzhrDwfrLPlv9U3
	 k0N2/cXqgcihg9pi/QwJv3v3sBWjLgGh3Am4aDThIJVPGok21/1fAZFPAkcQtB3kqh
	 xbznJCeEAn7brrM0OtXp5uqlbhCbWvqE7i2L7QGVdXp51cJ2/2UfkDG2ifapwMF5rx
	 D2nnF72M1EDQtkICDivcoXE44wceL3CPaDdtg86ulDSC+I8uRpfZLhqzTnakCLOfIG
	 8ZETHBk3cdkFcs4ppGXyE0AmqMs9V/jdxITE4Wx5TKfCdxFjPK96xKAU5MVX9/f7sQ
	 JObleSSr/XA6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD3CD116E2
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423717363.32367.13115788544039695015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf775bfaab1ec1fe7e7673125a97420b1bd6ed30571d06a6097213bc8d39dc6
Date: Thu, 27 Nov 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764237173
