Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3850F18C008
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744824596; cv=none; b=DYmqStxr/ktHKozVSeGwpFpMx43hqilFy9JVczL1yh7s7pB/ljG1HoitfMMjUf4QWd4oaJbjKqNSEE9jHu344rh88NlyP/oqT15lCWU1t2h5nhGcz3IfmtPi0sLAAK7VihmuO5gz+4PmheTPCKwBhCqUevrefG9e03VJwTfseuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744824596; c=relaxed/simple;
	bh=W/PUOPOoCCY/Eg7vEOOMp/NeCmfXQgdJsh9O04Xf6CA=;
	h=To:Subject:From:Message-Id:Date; b=iC1leqbyj63bHlM5g3onknmTyRA4GTBQ2GmLkRzhjAG37EpjYdcfV+3n2J3vGAOeOssgnKsuZ9x6iJ8xEzuPEgi5Y84VU1ds+T4ySttCNPbzaaFC1dR0aJGte7NEi/2jaL43yKKjF+ZkFTm1hAq1lVfB2oel/QhkgYU63vAh3rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1sl5ZDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1sl5ZDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5B9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744824593;
	bh=W/PUOPOoCCY/Eg7vEOOMp/NeCmfXQgdJsh9O04Xf6CA=;
	h=To:Subject:From:Date:From;
	b=i1sl5ZDaqkWsjaUpPww+ut7GsSUkH3u1/KTca1AIEWC70ZRwRZWv7PsJ3hA4fCMWa
	 5wv7pdtQHUnV9P/1BC4CEDiblnK+gMtPzTXC3Y5UaEn9icOfH2jZazkmMsTEz/bZH5
	 DDykVZCxcbCcmSMYhnorKeGLTKXcpaQIIUpCbmt9xJNoSRAdu2LPgzt6MjD8Am39Nm
	 p+EoO+Ts+O67XloJ6DQGERma7j3P8omOHLCWnbMMofDq0UpnDxtXYBT1NQgd1wFBrk
	 jxDwvJkeNKiQiRB5DZsf3xSVpUa3qHwQTC2a44GDqVhS+a239KFsfCt8SDXTPn5nTy
	 //XIMdq280ZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9881AC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482459361.8380.1623916943674078955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf0e5ac2e7501fb75eedc92a917cfd0f37f7c148175e7818b70dd2fe872e21d
Date: Wed, 16 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744824593
