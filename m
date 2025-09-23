Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C6231827
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758644396; cv=none; b=Y6oD6jkw/fDReIkYbaLNLwbQUJsyANmzs+LXRU7cTrkvI4I5pYeSn+A28il63/BW0Qqn7UcZkvjAusOZWe4jhhfdsR2Q04EVFBt1IPOVCnUrmlYegfTBvuOAHvxxFWwDjnrPLRByQ5lPCLsP5S0ennJH7vbrG9U6LVkYo8fYbuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758644396; c=relaxed/simple;
	bh=U7d4p9mID/3vQDrvRTQOgLVzapK+JplDh2Ytkx64eyI=;
	h=To:Subject:From:Message-Id:Date; b=tBY/+egwRk7isSR1bVeDAxmDPSxkdGPgh7AX9pp/gnfjFQMyoXX7Yi4xJyCFb0m6ggVfa5eeV4Yq/raqz/n4SBjSfuN5/KP2nbJKEYuAVYNRlurJyRqJiYOu1N1TInVsIAK9LKUXFyDztXqf+qOgMckTKxGMcIYlXwNGQHjpLw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xb0knZVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xb0knZVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0208C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758644393;
	bh=U7d4p9mID/3vQDrvRTQOgLVzapK+JplDh2Ytkx64eyI=;
	h=To:Subject:From:Date:From;
	b=Xb0knZVymgyPKiZQLqS+mBQQ8A0dYGERkTn3P3yxU6Ca9DoMZzn0BT8xMCVK5+aPh
	 SOisOaTAgt6pp9B2AEtXV/CfQm2rufRo5eNZ5k33h6fbGEacufk07kHbu5ZYvVOyAx
	 6qB3GLTfVaDvRPgcBHFUJtntEy/TtGsaNRAkQdQf/QUITtshi9re3Z+Ogslb9gVZGL
	 gsVoA29kvsu6SVvp3xp1knB1bu5N06lTYFuojtBxWv44245nea00cULz/VWQT/N7WP
	 Gr8Kbvu9Jjid5Md/qEchZreP27HLtiQ6/HLqTuWcTipvK53u0BkRdsGT8s2LAmxkFV
	 jFPyqIA/qFOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90829CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864439358.19774.12054746861566750488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593447338b0b9fdbcdd07df297ba2df4f3a657e784986c104622068af1e02281
Date: Tue, 23 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758644393
