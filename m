Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07491E541
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706070497; cv=none; b=nUz+31bp/YjKkvo2er/4uGXGbOTJHMP8txuYhuc3KJIYdGnXSb6XrYGumoK2OuyIsygCIeYvX55396Y7fKZXa+j9lKLFw/gHE6ymASwup2BT5zsytties2rTbuEu8kqL45na8DrPg9L/FO7oQkthv2/Ia/+e1kRvuLAA7DSwvSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706070497; c=relaxed/simple;
	bh=wkMd+CRsmN8e7ThyEV6NIElwIsg97kG9QBr7mXJrjag=;
	h=To:Subject:From:Message-Id:Date; b=HC0o+zpr2/LFgo0dPCO6bY9wLlQn8HUnTy962DRVBQZGw8YgzwaqV6gS3ZaIQr5iBqX4dCV2nj31v0aXIZCimRH0pI8w09zZkXmn7ri3E8nbxsQp+XZd1LPZr3etN84Iw3oh1Ib8kP6HZ3ChFxQNVCDcMaXiwBBO6pt03b8xlqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqdqjDWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqdqjDWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C1AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706070496;
	bh=wkMd+CRsmN8e7ThyEV6NIElwIsg97kG9QBr7mXJrjag=;
	h=To:Subject:From:Date:From;
	b=hqdqjDWGTNOzktEUjmfM/cmxkHtXCjqWZ+/AOWiQnYXTbwgsTQ07zrBnrPPLl73Mn
	 zXSMbjwkVqjgyswDY2maB3tKBziP03LT7XTGli5r0OjKxEXVxIr1atXecpTNrPsJJ9
	 VpqeqoAJGMNFJs1y4cQWpKoi4w/46XT1FZCVV9fzZOVFSEuiJfub15AxjUj2+3rJDi
	 kEYmeYNqPSw7/wELerFVRovTjBhmMS7TsyeFLUz3J9u45OkO9I17rITCi81Km27KIn
	 15INJc6UoxAk4MGWy9YgHut9C35oY2EmGSBQYKnXiAFutrIadKVkMcNhh9OrjssLDt
	 9N3t+vKGcfraQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D998C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607049637.7871.15674324025464658280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba713b8084e460e037f5e562eade9e2389df5407c497429bc5ad12965b7ddf5
Date: Wed, 24 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706070496
