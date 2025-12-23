Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFC81DA62E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766505233; cv=none; b=I3m6j/621o4b7Y1GV1xi+RMg7NrnDjwNuL+g0xuAcjwW9u+f0IQqVPvJ2fJ5zVd9Hdjbix4uLobGCxef5W2ERoxVCT259TD+hq27QAN+kDexmdVLb8GeWeVzsj6SXrGRdKFcTKV6R+mqVgpGB7QI6IO7tYpAuZw/28EbyQcHBPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766505233; c=relaxed/simple;
	bh=axvw3IqBFNYp8jsRWI3YNbH78hncmAqTg8N/WUpUUaM=;
	h=To:Subject:From:Message-Id:Date; b=J8kHNNrZoPnLMISp5d23burBQP62BYPsDQg/cxeKSxx3qK3QKmTH4FQqU4vwn0RsgKVPUE7vAc8QhrMuaQYk8olVOO7hisOrme34MyFxtrDL5CSDQAApidkZl2WXO5bUylpVlKBptKQZT8eDIx20QdQqG5xT85u1PSCyzSNPVKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su5I8WC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su5I8WC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C7C116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766505233;
	bh=axvw3IqBFNYp8jsRWI3YNbH78hncmAqTg8N/WUpUUaM=;
	h=To:Subject:From:Date:From;
	b=su5I8WC2SndLzMr31TV+RRh1oYLFD38mlHPIxVDztEeUi10I0844DDMLf2h2zstSJ
	 UjFthPJEiRriFQcXSuhSxUpgEv7BEiovOBKCCQ5uBFBFnKdQHh6n6A+B/qaXv9Qj9y
	 6z2CzZ3xPeCs4YbQKfBTRbyb7CLrkBbfzZbJfP/OLmh0VdpJhI7mUK5549v1l9bA9O
	 nKp9hJ/6FoCykRdIH9uddrdd9PJPRzFjKeubCMLnl4jSOTRE667x6KJxslgQzeupa0
	 xdvhIOHjuuBNaocY1pmmqZxj/LvGyl+7YiL2JOJNjK6W3NrwCX7XEkAX5SsnmjPyQh
	 nWwkak2Oiw09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FEE6FE20
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650523358.740.5947916357799018551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f0e70fa06acf6bfa6eebf477f4c95f11e26dbf5167060e107a5a5f473bec66
Date: Tue, 23 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766505233
