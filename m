Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AB33D3CE0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778366314; cv=none; b=qFsdsfV3hPvso2IOca7w2J0t/trEERvSaQ+GDwv7bizU/9x38VmbNnd7hdGYr7NgVmasmiswImuoQ4XM+AtCnjpgY8YD9Cxh5HTDqBhOp9JEgrTIaZHjWGL0mDGs/To0GrmgeJRSX61VNEmwdnK6UvOhkE9XW9pD9miYYBFd47Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778366314; c=relaxed/simple;
	bh=mvDTWKyIJWpLMO1Nr0jaI+j0tdNBjUGgeIQNwpVAD/E=;
	h=To:Subject:From:Message-Id:Date; b=Tp7TtVAE7coMEyOWTEBZuMIzmWuu40ec39RchvPYG8KkEfQdjmRymTcxsyGOrtpb9A0HK0P97825OjOozqpOHUs7/1iAqYrQRUVH+1IxgdCC6p8lUCGC/lFApotBY8nFLLdx9CywHMBtmLtmvMXijidYDnYaUa8vnmM8IaNtrrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jopnaCzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jopnaCzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74A0C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778366313;
	bh=mvDTWKyIJWpLMO1Nr0jaI+j0tdNBjUGgeIQNwpVAD/E=;
	h=To:Subject:From:Date:From;
	b=jopnaCztv8/g9KVd4FsbZDRui+XUw1CPFW4+0Wm5jLc98CFljlJ+W4FNFOxmG4kop
	 0SBdBdzxpcWxn/c62I+Knqa77jMqIw+s2oz5T3TJ4UUKfEuXEt88IArgrhgx9mEim0
	 YP6sWIfIB/B5362NClE1d6LaIWtwAu+ysC/K2mYG0Qvuj9qXN3XIN1wy7I3/x/GMen
	 vNzrhPdHc2i0AXVGlMHSjm0RyhXW0oJ6FsV76pNWmR42mY1Hh55hHUzlKynZF2YcYL
	 KesH+rLrK30XAr9TCyGdfTBbpPsF9yDxwFBQwYWJW2eKwVwUVkSG/c5AvvdQOM30Xo
	 cqUyAHed2ihww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FC8CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836631374.22578.3200840988593050150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4156e423b96862c0330f2c47389635dd2e029983521caa7e5ce618e27fd680e1
Date: Sat, 09 May 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778366313
