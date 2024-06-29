Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515B01CD06
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719629063; cv=none; b=MlkkyGK9TKjUHs1zcwJBLiFl8fp6bNo9AQcy8nE2sEZY/esqC9FMbDuZA1t5KY+MqUnzzBXuXDH/3ayjJNQTgiq4oMeE9a6kUwHMLxTQJmy8Mw9z4NpjJlLltA+CTu2mO/Ez1bv0xXmkQvJoYnLuhARqjx6jujmlRBvE8J06w/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719629063; c=relaxed/simple;
	bh=g3iY222qCq14/INq2G7u7asDT/nbKYjlruhfzkUnsdk=;
	h=To:Subject:From:Message-Id:Date; b=PaPKAlnA9LFCYNririJcgOz6tlnvof8JXBEUECpVSLzX+XDL3ixv2Pnl7hrX9G9t3n+gn2wAzb3iyGAkps/ggwW6NDaVVTn/e/YArEOLPbwSLG3LdZ8qMzeYTSGySdfrsvZQju2gBkia1P9oxFAESxle1pgiZbh3Mx2diSQeNcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Buvcydi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Buvcydi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE3DC32781
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719629062;
	bh=g3iY222qCq14/INq2G7u7asDT/nbKYjlruhfzkUnsdk=;
	h=To:Subject:From:Date:From;
	b=Buvcydi3xkDXvczrWw6oLQr5B0i0RC6xkftfoNeEzTVLlLKCjHFAcG0US+5fl+ghE
	 1S0j6y27ESagZsSVtw+wWTGw5TuVMRN7Jp1RyhlGdAMIbuvmb0NdzQ2XgsAY/WfaQ6
	 kCE+jeMfBZtc1U+IIlYcHU++i83Mu0ONs0ME0jS+Hxx8TNUa19393ZsAjlA7j4nX2j
	 juV+1hbkDLtN4/vgaGK15hvfgqjowBgABjb537MxoSrapUX7u4cD4qullwLFn6i/TN
	 DNoXExqUc5LXOpzmjGbFXBaY9TlFVw3Hdmm/+O7jZe6y3QI1wbYRYw2zQ+rCxmxXDT
	 SVBbXDOU1XerQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD58C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962906275.3881.6165831845995670843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fd2edccbd551073b0a3c13cc33a47b20f890da55dd1a8f3be93985e9cc7b33
Date: Sat, 29 Jun 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719629062
