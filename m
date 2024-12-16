Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031561509A0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734329754; cv=none; b=l5yaH3S92LZmZs9yczVX7f09A/QXhVny7oXBtsoD6rY66RVNU7LtNPcLHlPI1GHH8p7gLPCW2gsSTpHKGbErvZn9RDzZQMepOD3ZfFFf6D8TKR47ohMeSWTsmkGUpWwWlXmFBx5oZezCXaKUcl1u8lVtN4zZUx2QTjMw3C77/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734329754; c=relaxed/simple;
	bh=ItoM9VXsMXmLH96YT8jjjEhJvPfU20ri1EffjrILZyY=;
	h=To:Subject:From:Message-Id:Date; b=uP4V0J+AiZhD3GujckzKxRUit1rk0ZpCvHAkBjFWxB7rXdSc+M2Go1Ngf/V0zlkMuDOEJwSWXgnBEObxA8mpWKoONFOYxdzBPw0LmsfeFSlzkOVESQAHglmiUcH3em6M6nIrnLg4z0OFH9AmG8myQ/3s1X3aYzUBUAa/bhXPpvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ98cHiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ98cHiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6463C4CED7
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734329753;
	bh=ItoM9VXsMXmLH96YT8jjjEhJvPfU20ri1EffjrILZyY=;
	h=To:Subject:From:Date:From;
	b=tQ98cHiMx07Y73xDGvBxcE8IHTrA7bb1o7FOZX8F/82iMjdIo733cRF5agNC/a2W1
	 c7jXBPSVvOmlz5fWIqn44Nw9ppEfo5S0Tbi4+xLxXTa0PBamQBvWvgnBinNYxYL1vz
	 NaGUy/LM8OxSaM0Q3c3v1e3x+UB3f8fJIodJfP6F6r7DBVmW0Al68IN5soVLV+pH8q
	 Bq//CbgIUFtfj4plQ7K0i4lAF9M4xMUfgMpHZuNltTCBrWBmJAZDD1luqNSERzxKiR
	 VK1pBixFnrY+4KvLb2BH+MxDZ5wTvzX2ifnejU9Q+36jpcplp7896uGGO+tvs/0a97
	 i7zjn/HcM3ziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94643E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432975359.31597.13184467714401191796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5562e9a7c0378b06f315e2e74539d349f2535c69eec0d226c879b5fd5e1eef
Date: Mon, 16 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734329753
