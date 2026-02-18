Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9222C0F7F
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771376694; cv=none; b=BeAm5r+Gc+ds9fEad0JA0t4df68Bo92vVc4aMrPRiGjsl/vhXi+bB+kZ82FFV2rl9w88ZZZ3IMgHqEhTNtjdR1KNAokLz3SUkWm0OPCRxV2Mhau8ZSYMZrSLdFwaghKMfrW5DFvCbTCgWQkIhXKUMJeHPT/I4XuiWEaQ/jaFzeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771376694; c=relaxed/simple;
	bh=csua0lw+AfzzSGu+oP/ZZ+WWk5hF+4JnMEgDk+Wl22U=;
	h=To:Subject:From:Message-Id:Date; b=ZCrd2yYrITjOPDEwDfubvH0x+l4t1Sii6hF7SxBRxYGemmsjJGIYeF2WJQa7Ez1ZQ7GsAsN+Ci5xcuVm1H7pRzevBmJPm1evtlzyaO8zdY2sZzXWKDArm12Kl4roScEmCGudAXMHVBUnfVs4mP8E1UJRy27ecWWxJ01AtU6G7s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpD0eOtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpD0eOtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C862DC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771376693;
	bh=csua0lw+AfzzSGu+oP/ZZ+WWk5hF+4JnMEgDk+Wl22U=;
	h=To:Subject:From:Date:From;
	b=CpD0eOtPQHd5hWGthgWp1Xwchgt/0HUnpVrhF8NiqJPt58kA8e1C0YHPObJE1Wb1O
	 hclU7nLb0eoGsAIbnR+ytwblAgkQf8tcIthiujk6MnGn7qPwIEF6iFFj8OG5WTAGbz
	 M+1E2OvQ6UFsNBUseUSweHAxptCA/RRGBKtoKR266aitaKuNjRa319sUthUw6UG03a
	 dT6osYsfDDd6AWEfcRTdUhEPpMlMmfXlnzkDDG1eOGEnfxJ001Ci47x4B6fFP/xgjI
	 qGqVIuKQKNEr9mbmhMXckJnOFzDMg3b0VjDJ5L/D6ISLOvU2fC+heKCUCokyzKAczC
	 WmlusOy8/JpnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A945DE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137669362.9093.14216288614234702010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b80e3df7bf6f281fc80bb566c8e1e31c4069c8d58b641f6ea4af7e05a7b1a77
Date: Wed, 18 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771376693
