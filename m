Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DD53EA66
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717400723; cv=none; b=hZmJY1chF8C4H7+SPiFwEEVVgG2UC6uZfd4E3JKLKPyncIK/PYbJTU5y6xDe4mLuS4bnYHUxdZP45BBJY6do+/JEutDOxiHsKVrlulRGKdk199cRAoTM3esV95nxYnR4cKpbjkVH1aTthLSQxFjO9hiWjuZdKFPWiKE7S7tnGc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717400723; c=relaxed/simple;
	bh=23qu2nylSv6UCSu/Ae9bKBCwL0l8gtAWRBWWgJECq3U=;
	h=To:Subject:From:Message-Id:Date; b=UfiIcBMu4zfdnu1rtmdF67dJGGiE6X5w2FBQewKJFctRAw5bEkiH64E2/HHjwbH7PVP4ACbNb2XT7g6zuGx8rUlkotDuoPGJw0r08alLe84YswsW1DzBXaOzge+mW6qzu5VdnnXJxitixOao/rO9KwZenzK/BsM3o/5mF6X6nEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghvXjk80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghvXjk80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0662C32789
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717400722;
	bh=23qu2nylSv6UCSu/Ae9bKBCwL0l8gtAWRBWWgJECq3U=;
	h=To:Subject:From:Date:From;
	b=ghvXjk80vz6vk4+5jZCjqhzTX7s7YmTZAtD1XRWPNR7uSA6IODEbTcWBpp/Takj1P
	 /dNO94YxnXQH6JGTp46rdbBaH4/9R08nUvs61LMAQmppB226r3t1GmvJ9E5rRAKrnS
	 7MQdpRu3kjav4UQfdhorEpMLVGA0kFsWncaxX0jVWcb8nYjkS0aHPJ+ODdLAXBXSlW
	 SwRuc/pgLARwFh6cDvO+TeJB/QdeqLjJgQsfrpZmCE1DV/tGL0UoNl7PsBOrBPam/5
	 zIuzxEZvBNDhrinLdlMQYMA0mmgeuwcYEEJ6YEyaLYQRGfC+X//Nq80vwkCEGy1xni
	 H8IhQQJyNzKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD15FC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740072276.16937.8706941427410266808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4516e113252114001dfc39bfb1c7349c4d880f5d78f72cece07a6c60576e447a
Date: Mon, 03 Jun 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717400722
