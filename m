Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B01181334
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786285834; cv=none; b=Xtd9x74wyuOJuptG0OPqXF0SeCIA081pB2MFeqCK1zo5NsFpmStIC8OJxlkaaJxy92+bLQwqw4DG45ghGMtjy8XcqrROWQLOY+zKjZFCqa2UcuykYG619FwrCy9R5RhHOJ5fCzWFLjeloKJDIw7fDInNZys7dRtEm88W7vYAObs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786285834; c=relaxed/simple;
	bh=gTi8vCROO+5Ktkm/rZ10e6FqAbOte7YFR2bHaNuKScQ=;
	h=To:Subject:From:Message-Id:Date; b=CUVZV1AOUqHoYkZEm6MFBnMeK7lJb5rx/QuyPzNvIPfc3UPg1c6wcUa8wwkjdLMM4GGSx6vhUCl38W3I541ZMNRsIVwsqhnIqfPKp9rOHhY8+vUeMrPyohPx5Q2BxKY1vInR0I2LWW6YNpRd2Y4BfZuf9nMFv3lkyrVoL67D3UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaoTb5Hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaoTb5Hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD5C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786285833;
	bh=gTi8vCROO+5Ktkm/rZ10e6FqAbOte7YFR2bHaNuKScQ=;
	h=To:Subject:From:Date:From;
	b=GaoTb5HuHQBgODYu1WoaxoTazD0z8dLBjn4JE4TVctgxZalHKxNj56NbImuEkMhg1
	 zphklRbUG1rsGhqtqjdqv8o34MjuXkPX1wmpIaH6IV27OIPfuxqxwJSdr9kf8GKhUS
	 H0jG+5lmViTv6BA5T7QBNetAY1eHuzWNIAv1yceL9UxBa1QtaersjD3j7i+lWcbupi
	 QBrOKyuAcuw3rVDcC8+Ca0hcjzYwSHunw7VnzpdNVburk9fdyGMQ2xetZk+IyrUCNA
	 w530K0dw6CGw2fo/xiK0EtsoAWiumfXrMxWDmyJEiVvTcsiG7B01KI/X1VTdtjA4Te
	 1XUfGWNS7Wd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F2CC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628583368.10780.18080157574132920466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8370114ad64c4902358759678d2ef6da3995e4b3a9d4eac6526b1cd160878db3
Date: Sun, 09 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786285833
