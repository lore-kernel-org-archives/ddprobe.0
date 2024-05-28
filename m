Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4621D13C8F9
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716885863; cv=none; b=Ca8PoJcH6byYKC5ABPTpawE7d67ySn036wEwLiABadW6o9ZKgQFzYo0ODBZV/3bZ3UXs9nTOpq4ML0mMYTPFqv6eIEwHULj1pYPBIyzWGb1UpvQEQeD6st/7oJts47HMe4Fv2TFrU8IyDtvqjAH42TJ5xhNln2mrDMzBU2HuHWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716885863; c=relaxed/simple;
	bh=00E+ZRd2PzA2gSV/65ofGwJXkDyYpX5JpZKgNwcTtZo=;
	h=To:Subject:From:Message-Id:Date; b=hpw3+NR3dmVgOy5OerkW7vCIs5efft/3Yvtg3VdTC3adgJYZ5IaIuYvCMxZHvnyb7wlq6f3sl36AansCreE+o5txv28SWerVOqUM9zppN1+mTmu+AqDfggcY0C2gbm3oXdmIfEwTLV5DFBIPoCaasr8tzgx62CaWoiHstp0PedU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHjjL1vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHjjL1vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE418C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716885862;
	bh=00E+ZRd2PzA2gSV/65ofGwJXkDyYpX5JpZKgNwcTtZo=;
	h=To:Subject:From:Date:From;
	b=lHjjL1vg83UV4U7EDVX4bfIkYKBb+f7Yxo6+/V+m7zol2cTsfvYu3Gyzd7U6KNnCy
	 QU42AVaOD/P4Is6LJJ0IaZxk+X37Kzod+fu0B7yvPwxiyj7xidbL6aQWTi0FePhtuB
	 3zG0I7+jlY5c1rbvrjq7DwBXgC8x6o+jONXpYSFJ0ESZ8Nv5Wl5HhxkNc1QKRMlyh2
	 5wpO8u2oNLf87AmJzShlE+trZHvJMJRrxFsSZb3Gupe8oujsAlg4gn8yCxhZoKoDaM
	 u56yxcFXKY0/8yrW+nz97FC9boIvxLEIZuvjv9ApCx2J/eenUE5k6EHpBrQmi4UGMQ
	 vrnDQ/1iuYSMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF188C27C44
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688586277.18419.2417012492716715698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88138dd77f181642546be52c9613ce6c9b324cfc6c4c22628de5e557bba84bf7
Date: Tue, 28 May 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716885862
