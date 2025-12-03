Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262BF2D3EE5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796974; cv=none; b=IqNGeQHupvWfXf4fWzsw/5KlBAyxrgbzdGMI05rWhS57ggpPRd8ujdlUP8oR4xtv7ouMteszaK34OYeEtjw0z9TLQuSE9ICflkOZL/ouCvV56oiHq7IDUKE2WJgRrjRxBJvseJxLHdiyNd05Xqct73qRegHZ9y2WPvsamMLAHE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796974; c=relaxed/simple;
	bh=9ToxAcktFIiNXpARk7oy6riSIvnzFFNooaMobSqHbc4=;
	h=To:Subject:From:Message-Id:Date; b=WVCDjEPI7ipCTSPdi0sqFjfKl/kjdRo2OSO7gGIkwmYe+nv0LDwtTlwG1QesOtXcLVFM4J0fuEiPMNKH6rPB5Ow4EpWfHXDXjOSbwzWQ33RVUQd+0VDuMBgxYHYqTMt4jwrCJlAq6ZlSXPS3tYcHjQZHJ4VNW4PS0wok1Sc4hEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7kSZYvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7kSZYvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B88C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764796973;
	bh=9ToxAcktFIiNXpARk7oy6riSIvnzFFNooaMobSqHbc4=;
	h=To:Subject:From:Date:From;
	b=d7kSZYvY/DzEgPtGg/3f2ft3hwBl0fmRToiKp8uEOSTGdHCX2QIJXOFEDQYs7uDa+
	 p4xPVOcllaKJXMcDfB5y9frJh+tnTN3y9y0Mci3wygemGgrHM5cW3EOTnER8YWsFsL
	 SD3tb9wsRtsHhksvpUQyjpv41t6qPrQq6K/vQWLGysbSaDHBWMVu+SAS+9/s/YMYOn
	 aY28k1meV3UH+KHOT5sFm/zq4O3Ypnqc9YuiMhla0FFen1Qq5FQ45EYEwcep57mEyU
	 aaI/rt0vYSCC9Btc0zgawRHNTe8vuqbzpZxZ+tfXtKeACZNmze42V9tlkYTwkgS9o3
	 npKDUT3mMluCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A65D1BDE3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479697359.28616.11670830392606189046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ab5535afb4c1da8b9ceea32c82bc8114dc721973f3e687bda10b9d6412fb58
Date: Wed, 03 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764796973
