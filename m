Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF4D7FD
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726286754; cv=none; b=Q5AtD3q0ss/M6gZ/bn7UEh7WtNWaaUcLbRY4+Da8LLxhtUthszBzQr3THtwbkA7vFnhcGpZDEg74+mdJsO2sB6K9OPAqsOX5tnD1K4OE2OyKh6Y8eyHc2X/6n0ykamP/Xbk4tqwILny8ko7pdgiYdZr63bzXoP41zF2MaYy5JaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726286754; c=relaxed/simple;
	bh=mojtiARy+arfrZpJl5MhqtJZ6fmCFcwKqSdrNbA6R1M=;
	h=To:Subject:From:Message-Id:Date; b=NKIA1yuSPihRZ46MeTJA4TzJj3NuEEoD1YclxUmLh3AF2uztUZQxQmpXhLNzCm0uadEe3WtRkUeetV1u1vZLNUPb6xZ5Mp3jAOXx98BRGLo3B1D5a+hsUkvPVSDhYUvNNakmtUrkoXxAARZ9kk8Xm2kQ/+nURLlc8fI0Yy7MbH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMC+4jUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMC+4jUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13FCC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726286753;
	bh=mojtiARy+arfrZpJl5MhqtJZ6fmCFcwKqSdrNbA6R1M=;
	h=To:Subject:From:Date:From;
	b=FMC+4jUvRVbsiBZ3OCe83k7BaVrM9cqxVHrBuvVSx1mmxe4XcNwjq1XCsmu+cAz+6
	 JMPnfa7/Ul3BR5uLSoedkPgYhztJ8EqsXSLeqMLiNBtC23XY9kSysKWeiSQpLzqPhi
	 xbRgxQFdJJnqXJpkcpTPFfTzLKRF2zE9Za15dHbBGwN+gi+fFWXgXRLRKKiY3MH4Pr
	 x1vFfboK0/gYSZ/vpMcYDUGojtSY/WeiCtzHr1BqA7aCXNsbDSVL0qRn4/khllsfWl
	 ErcNLOiLaj3xDVy+e2vAbjBben8KYiFKn4ooqq6Eafh6hMZTpzr27Gv0R0vGfp+i1E
	 Z5GU6wPrHJ3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A407EEE0202
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172628675364.19685.4563204327359842463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65beae45d0d3a9b8668bb56c84578aa6355caaeb0a325293a2e56608d0e22ea6
Date: Sat, 14 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726286753
