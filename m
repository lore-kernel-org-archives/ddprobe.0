Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA623E320
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782917914; cv=none; b=urNxr5QHLIyy6RTf1m91TUsiWqJOEsswCpuQ2yRM0YtjWFo4USaz85QOD59NIYcvOfFlCOzlXDSXIbKt7ZBsmYN5sm7cnQ+0UiwjK1/VxibWA9OwRoPjnlBvgEAA0zZr/NXG3WXttc9oliKBNci+1SmQMmFNrQnew5kd2arzhP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782917914; c=relaxed/simple;
	bh=5FSmRXpn2qwSnhmlnK9G71wr04RBXpQ5DlNO/jnTQJ0=;
	h=To:Subject:From:Message-Id:Date; b=Uplx/lySosPcrnMvXcv3dkOlnGEI+RvNH/C7oBgxWPluwarpf1XP6xbj3WVWt98Toab7yssdONcBmIkKNXNyTMJeUaLRO/jbst5oeZTgoDROp7wFTFdTR+4Y9F2mSjuAxvFKsc0j0UWHgh0k0Y/os2uTGPqRLIml7hpDOBlMoCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBv2td3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBv2td3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C256AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782917913;
	bh=5FSmRXpn2qwSnhmlnK9G71wr04RBXpQ5DlNO/jnTQJ0=;
	h=To:Subject:From:Date:From;
	b=HBv2td3U9YnidA1K63Gs4fcf1Iwnh5SqNsJDLsHlBy11ik2rGX/Me0RtBIKDy9891
	 4Td3BBsj4kZwFvRJJDl8vPJt+tNz3q3AMTYNBnGO0t4Puap2RbBPZe83O1JJuWLSDK
	 YEUAoqnrTlBjMkSIClZP/xsFQ5F7h5jM//xs4+BzyNSMA9k+ZSAZycpyF64lwudhVB
	 sLJekdzgMXCBbU+ZMS2dq+L09TIxltt6qx4sQ8+/BlJlnkaxiAIK6UCvWOBJRghJT+
	 3nWRlXPrqpwxQmBXl5mBOq50pnmp2hA8vqC4rlC8wJ/ytrg0tXhtjVpfYKIYiWK0mC
	 TlyUYinC/nIVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291791368.8657.297786779446844789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce24505c659bf784518c1ce1230717a393c33009fb47144482f86fdead6ac37
Date: Wed, 01 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782917913
