Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD2918D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724803554; cv=none; b=exsu5c5qLXYaWSjFv90mdyQ7AzoxqaNWo16C279bpou/IPDuHMBIZegw1CXTJyYkLN9m+RU1qppSdyMKf8L/L41/Ywc4jrSDYffL2NsoNzoT0dLOhpV840+/quDENI94l5tIW0ALbR+guIg5DeRnwe5vnvjJ0xUeIJcWwg9gCGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724803554; c=relaxed/simple;
	bh=u0+yCrHaYFm9gfjhx2tm5/dhFWDbwvQ1jjJ8Fui8+S8=;
	h=To:Subject:From:Message-Id:Date; b=uXOpP2f3pdnjHl6JZr7uj6LKBwhUYSHD/99vAAx+Nyc8e7zLKtUZ53OmyOr6nP5a6MCH4qJ5fdskBBUJyZg9OOW9EAKWuF+3F0Ndmk9lqEvIPips5dMez+QZVC7el9dFSHW88DtyUrauKTCjG3QxUGXPKHE2mxlEbIxBV1XHVMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlMg+8Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlMg+8Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3CFC4AF15
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724803553;
	bh=u0+yCrHaYFm9gfjhx2tm5/dhFWDbwvQ1jjJ8Fui8+S8=;
	h=To:Subject:From:Date:From;
	b=KlMg+8XiKpsxohCvbGAeOu6RPlul6lXjlbvP0AUXgcsKKnLLLDj6hi2djT6KPswie
	 WZJe1v+/eYkLCZHg0Hxugl3btXHOGeStlu/dgO/VCI3uHURZVmJ/DUQIaWjWc1wYHh
	 NRLTx7haJeGv4YcncC7yOhJq8ZA3CHfos7mEbu94BiCyyWm2hzzjAQ4lf2iBII8cuG
	 Pw78Tcch2nrAqqQWWGcX9EZ2xPdxgI0OukpPZR1iLxaZccPPdPvF3zTb4nFEZhk6Qt
	 eORe5K02iCkrdluPelJYXWrVTX1NHk8T/vHUtYSmN6IhegBMacfZFIC0AcuGulXZgW
	 BYnPhxQfzVGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99534C54744
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480355362.20517.16378974623425048367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4efb5b3106d3c45c983ae8c1d75c016dabfbe5fe1fc7a1c22bc386434911224
Date: Wed, 28 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724803553
