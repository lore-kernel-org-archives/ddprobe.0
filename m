Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA0414B06C
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742102994; cv=none; b=P+lk1cLk3cwp3azyIrUPqzCTLPGYVOCGnAo/S36CQYR45i04Js3JGgZ8ImlFOBOOvgmRJvUvXOoEf77G9nw6ar8hxdN+hCL3la99J3yHJpjlrF5FU4CSNapG1XcIZYMplwyNuHHaxqR7iW7r+UgKlYTDt5Tv7kLhKsA4/5Kide0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742102994; c=relaxed/simple;
	bh=oKm7v+WhS9c93miw9Xoh1wknkOI9NsUcopyRukbH560=;
	h=To:Subject:From:Message-Id:Date; b=uK5Nvr0laYDcIlgNEOYuVb+AF34uwYW2d94TONT4NcsJ3chRCWmmjBd6BsXHFD4CKtCMSsrd8ia+9WfZT59AvFjiiJUOp8DTZcFMN2WauQ9kfRC8HAd0gjKRHhbGfK5eAeQwlmiHJDkQeF8Yc7WNQ5i0CsDbC9CfxIiLVS8KdEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwF7WY1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwF7WY1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B738BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742102993;
	bh=oKm7v+WhS9c93miw9Xoh1wknkOI9NsUcopyRukbH560=;
	h=To:Subject:From:Date:From;
	b=hwF7WY1KIgyu0sa2Id/LQVaB1dBwdWvP33b685W1XZk1G8/JRWSpOwAZi+iA9srFk
	 PdwbmM5alwjd8haKIylSu/836XOSwyC+xr0ecPGSdVBEtTZnE9IRU9Wkzxmu3jC01j
	 vr/Nvgj0eSxN4phuo9A7EFZRmq9lKtcgVRoj8tzMyjalwCQ6mIrAl/DxuMiAxQ3zK9
	 lCCeWW7+8Rvl4nTO5Sv43duiNxlyLMiAOgWPfrcNC8LiY2jBB8/k9mtac/J+mEmXe2
	 yylpSoLj6FNM+/80C51pkRy5FAzxfdsygQh0tWOQRNMzzYthEP/0toWGhdCjDp4iz5
	 0qqkpJDCpZ3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D619C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174210299360.21849.17279410221948625689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debceb413487aced30f23dc79418bc0485da8e2dbccf63727d146fcff4cdc587
Date: Sun, 16 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742102993
