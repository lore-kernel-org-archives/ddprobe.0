Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2C32153F8
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739785134; cv=none; b=tCaiRoJivRzrA4xh5Bv3MVhJSbdvRb8mWBDxA7lYzjem7QV8E80XADdnn4bJF+0f+wlsX7qCarJz9/yRcvhs+/2SlcIwScGYPZyppNmhLCCFjt7nqjqCpE59e/KIgNplXdSiiIQ8wxXIeXbCvf5goa+sDSAGGOHgYU57BnTq2WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739785134; c=relaxed/simple;
	bh=2Iyu0o+vz7cyRyYtKCT5PMH5VcewYQ/cCgDp4DoYnTI=;
	h=To:Subject:From:Message-Id:Date; b=ucaukiPNiwLbwSNCPS6ScMHFdScQd/F6LfuU43I/CVmSDqrDz3zJCqDv9Afof0KR9/WMounhAINFx0vxrvR/MHunUPoUAzO+t4UStyuNWH7F+Iq24Y4USrjkQjlusAHbSYV2mnup5Gax8Silrb3zK+zkzIJwE94yHDcfMqN4k08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf7xdd/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf7xdd/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E8AC4CEE8
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739785133;
	bh=2Iyu0o+vz7cyRyYtKCT5PMH5VcewYQ/cCgDp4DoYnTI=;
	h=To:Subject:From:Date:From;
	b=lf7xdd/T3zdiM43BLs/7eZSWca6le50Z/yylUW9Gn9wfGrpPnlpiP6L8Mv77uZYYI
	 ESjPJD+Tg8aOysev+To1weaM3FIibdXTyrD7y6ApLHftQOHJCMYB5Ws026JJlKFY4B
	 XL6JhDvGZA6rk9Y8nWIl+J8+4G1zCLo+EObT3/55yxwvefc4/WPSzgcabxnx1LRG6P
	 THcoctaVx+k4ytAUhpppht6KxzJ0UNhbjhrZOgcHlbtTHemy/KESdZW6bvhNTJqe77
	 W+vm1GZfu2JJ8Hhp+dS2L8IMeofmUX3tUp5s9GEu9Ye7lHNwJ6DNZ+IP42+MVCjWWR
	 WVuU+H0J23Kqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E15C021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173978513359.26288.15972438076653009504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e7576ae7f7e39cc63a25117573ac360596270bb0769a9531974ae465920cdf
Date: Mon, 17 Feb 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739785133
