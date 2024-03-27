Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07AB52F7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711537097; cv=none; b=DiQHbzTQXNNj5mfa93E/YKDutVpDoDg5YBkhopuW/ume+mzbFslElBbOp4GGNrC0t5zavzfVjXyp/WWPpIc4+gSqyu57uX4NF12rVITa71As9nXmgQgufp9FQAdviOLzt2a+wgksz8PZL8Ed2Br5/Ti/sr6SY0F+D9k+yD5E3ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711537097; c=relaxed/simple;
	bh=JUIPjtPaWRAfu6wjjZ7M5VrAi0fIy++0Z87V8qP3c/s=;
	h=To:Subject:From:Message-Id:Date; b=JSeoEqP1JChRfDKciEtuOAuBzWDgpXQUYnApvqZhVplOxNMG6SuH5dUZhHg6aiC+DoTGhvZmyPxOwq+WhxIKFo1b9ubxb+Ft/SSH3FVbT/+LTDxGViTz3exT6gkEjGYwLWR2k0rRFqUaaECLylVJv5THmF6KIlZJiF2BonQ4t0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVvTk7+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVvTk7+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D5C2C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711537096;
	bh=JUIPjtPaWRAfu6wjjZ7M5VrAi0fIy++0Z87V8qP3c/s=;
	h=To:Subject:From:Date:From;
	b=tVvTk7+3TelddwwVt3fgzwzDQk0/Jevi/Q5b0BsKplJS6YDzOR44TidtPq8B41APH
	 RNKlMwfihwv1tL0a2F7vfVa85PM+LmSPZfzLYdsvTmIfwpzwQer2acA4/F7PJJ01sO
	 6QrOPHxF0lhkVQjWJlbArTL3hFaOYvwyAfgsU76zlXieON8X4FMk3jjossWj1AxCaS
	 emvK/9nP5mKnY/YJ0QRtGglIZy5vZzGXRUt5+INvSq37PROLE1wsLaPXeNVqtMxPbN
	 wKb6eTz9vB/LbNFa0QML/l43rutDNG1nrHloBzIRlgz48rP9x+c6/B28a6sQsFPC7W
	 eUxROIQBKeYcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D212C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171153709649.6138.2393780257559758819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4614df1b1373ac3fa963474e87faa089a3c1c04a41f9958ed37e9bb693bdb6db
Date: Wed, 27 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711537096
