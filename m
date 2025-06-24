Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D584258CF8
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750801794; cv=none; b=o+h49yzcxsJp42Wtd7vCMFQEFY7kX8MK4L/54icV9ilUVfeFOU4dBcn/tx4Ojc9M3z+e5fB8sumY1FjsR7/Q6fukBtPy+5QnR5yuOpQWM5RrYi/iKU7ZTSdbpZkiHUND2y+ixoYlGYdB0V0LbPOeFmGmcZ97Y1CRLI3Pp8pbwgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750801794; c=relaxed/simple;
	bh=1jpNzThO7W0/v4bd8G2iLnSYD8S2HiiZDmFXUG9hSYE=;
	h=To:Subject:From:Message-Id:Date; b=H0L1RawFXk6aFDT8S/zvY0C+GhlRhtkrM53+iLXYzum5MIX0MpHT5b6WN0WjokCBcawiYNpZvx57KJelGhEwaYKRxFijs39/ePzai9eU7jzJ2GNLLH9+Rwde18PA4yfaFyRjDmkDi2z4D4q0n0WLpYwGzGobUSx0vJaZ4fMF3r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cma3rB9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cma3rB9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750801793;
	bh=1jpNzThO7W0/v4bd8G2iLnSYD8S2HiiZDmFXUG9hSYE=;
	h=To:Subject:From:Date:From;
	b=Cma3rB9BTK+wP22kW+gvxLoNTaoZG0da0cI7B7yMoH02qKc4qZ7CKY4DIippaIOxz
	 l2d9V4QtM1GVVn9DWHkR32PVTxlklIQe/fb/BQ3Bgu7RwzWDZybg8KsmNUqSsQQ11F
	 iG1CfMzr7cJzFidaNUDGytZIiou+j1TT/He+C5C8/ScccopSM+rt+kwrVQhaairSR/
	 kAuN1DGVpjGiRA1ikEgNdxkxE98cyIKvWyZZQ+ZDWk5punQbCddmq/1aUMlL7ZWXyE
	 pBJPGJUtMkpTgyFraVF+GtmEyxJTnTM0w5ZjMpNC9EOQtdhSIs9sX0AwIjo/ftRUy7
	 X2OGqF9nczNlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBEC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080179358.31720.17527287049072447185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91672c2a0c1c5e7c29f1c666e9654b856949a6a207b8793d691346635e22b32f
Date: Tue, 24 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750801793
