Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259F22E7F17
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765786374; cv=none; b=Ulozy5Dd21CKJ9q7pB3Ufxj7GXDK5c7O7gjkQ+6amufb3xPQ2ZDNbcCpe4PIVgJ6U2gtbbE4jCUzj8KKdFxIZjxKcJafjS9rziy0qnPoJ9BPCBl8XnksZUXg0E8uC7h8pzjhozTef/U+A2AOn6zuJe0NLvlmpK8TDDnbaBeonlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765786374; c=relaxed/simple;
	bh=M63yOoXRyNLvaTieaH1pmQEhT3Zlfb+cDNLfRAj64zw=;
	h=To:Subject:From:Message-Id:Date; b=YVBpPoYGQmU2LRHrnijkd/qUpiFD22L7Cve+wZCLFUlPCmAhnEg8Fo+ZQBnuyWZoCkHslwXWKr/FnhhYGliERAHP6sjjeY01H461dDOE24mMIFG04LEJoKftUKy9LRk61vMUpt5buUDbcEjLbb3DqmzyRwrcqJR2F7VbtFaNjM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGD2pQh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGD2pQh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD59CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765786373;
	bh=M63yOoXRyNLvaTieaH1pmQEhT3Zlfb+cDNLfRAj64zw=;
	h=To:Subject:From:Date:From;
	b=nGD2pQh0SefGLC1oP41L2WvyLo3yDPZJ+pakJv04ZlIjE9LczR3OkQN5MMTxnP8i5
	 tWsEZ+QbSJ4hIB50aCDoXm1RN0IYBAx0WMfKgIKThrHnwpR5m0x5dX0fsBPYOfrihW
	 U6j1WvIMfUkwVK03GIlu7IwVdWuxMmz84UXWR+bqGcfXmvyExUguWQAvFa6zsuhEf5
	 bJrMFzrwFtCBIVzsh9FA5SC4lEypXJunTABt3AGSK8Tu+9539CjzNLkk/mOj5QidEf
	 3m1sMLIqtNsiw6rZ/HgpB1dBngrZ/mCVTcMzRBvo9Yphk9rlq85Y2UozcWpN144ZGl
	 uFoKwGGyY5bgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA5CD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578637359.3527.7981270233317376965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdd7ddf876931e51390dbc212550789ade9d32940f2e7fa3f7453c02bedc8c2
Date: Mon, 15 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765786373
