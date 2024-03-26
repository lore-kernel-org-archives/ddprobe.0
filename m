Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127B454BFF
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711435097; cv=none; b=Ds5hQkS+ZxrWzF0ec3gQyTjeqkj36NSfJDFCaKBLcutksFOrBUzBl2FHit5pqgxrodI2WyIazEhsp/iXRECtVXE7WYRSxnbt1+m8ri7cJz6CmGbWNVQPq6Wi6Kil3d34DyANBPBa6m7NWhGvNfNgiAaxcCVauA5zzMDKZKZynZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711435097; c=relaxed/simple;
	bh=EmqJpSDbKwPJHVEgpG5H6FeIJP5XASXczzn7SNvS084=;
	h=To:Subject:From:Message-Id:Date; b=mdJm8XDVKi6w7/DMhgq4J8W+H10Y63Cp9b0FqQ7l+iXEGwH6EpuNtwNyg3XTo2PpPv7YmV6a6AlxCnC+4oJx7aSjJ0ff0UrAkeSx1HsRLaB4UoqawuH4l0H1Op8lIFlMkA5Gwt4CJOU/tchmdBKB8Wdc9InoqKRm1Ktf+qTwSZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7Z2C5VP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7Z2C5VP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F8DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711435096;
	bh=EmqJpSDbKwPJHVEgpG5H6FeIJP5XASXczzn7SNvS084=;
	h=To:Subject:From:Date:From;
	b=U7Z2C5VPnJNTW3vKH6mCJuneQPTj1E0N4/V6A8IZ99JUCa4NmN0g+Tvacm/6l7761
	 HaFJRhMuXMoSIBn8AlEUbTi2l3SxW1mdqKHqxPAyTCfXH0aaGDjK5e45yWcVrBiiXw
	 rkJQRBT2qJBYk0QCzE+mepllWa/CGgl90EqkbXXxXUlPwb2QS3D8YUsdwJIiFn8nDk
	 a4L1L4kbCWrKqIUx0hDe0EQfq7nQiHw8ADS8zaDMZMgwJreOOzQjIl9OpkBWqg6Gqb
	 zbu9e1ISlMJ8QNR8cSX3NNDz4KCxGxQAHTRD0oOZHHPnJ4XjHeLhnjP3LyAgOBZ5lL
	 074+vhzsG/Eaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74491C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171143509645.12319.14265806476423674249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6940be9e09ded415cb86809a7b817491ae4683500b166e780f6a08c4013e17c6
Date: Tue, 26 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711435096
