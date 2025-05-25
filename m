Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B46E15A856
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748174394; cv=none; b=fJmD74/Pmgj2wCHTGY5nXfOakvoS6XPZIjxdjItTd+itnInnAWxIC40NzcKPmfjGrnySEZbdhmtkhjw/U3WnmzmhlTYq90NIxradGlUSXPVeoOf8Yq6lwo8uS84ZiJ/3suExkCFXCYml9ndNz+Jquax1WpFQiEAGrQlaD/i2zCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748174394; c=relaxed/simple;
	bh=qJ6Am/gvSq6G5UyD1dU+o8jhOjCCK9xJ1fAOAiyHSRI=;
	h=To:Subject:From:Message-Id:Date; b=B7EPMJdnG4Y9g7IzTx58JeUWEbd+dKu7NEAgQ9ic1DCIiWHq74pUBq+ScHhESk0zNf6TKv5qmMSxyzT3rnSEPP+wOOF1tIlX633uN9v58I/qeED7clpekMY4Elb1wdkF21ovM8QP+WXGZtN/m/319u9X+KZQYBz7nS538C0717M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ala6JehW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ala6JehW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE648C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748174393;
	bh=qJ6Am/gvSq6G5UyD1dU+o8jhOjCCK9xJ1fAOAiyHSRI=;
	h=To:Subject:From:Date:From;
	b=ala6JehWeUvEhUHy6FbUy0J5LqcMd/9iFlMcVj0/APS6g3kiZqvDJYRoNjubaaSNU
	 3jQ3Hsv/jFdW5qPzgJBIJgJXvTmDkcqGoBQj/9muB+BDOwonOPb/4yYzPBRfY9FDny
	 1Wyrgv/6EwfqK2oRRCMXWyyMF+5nb9lVPAZcAopXep3jiBAPe9467ZPSpYp+ASlWcV
	 cXMY75w53DYyoY2g6cHwX6tnFK1iWZ9RTxvzMrGUoqeXfUrzvy1KBnDrSg8twy1KT2
	 6R7m51OF3gJ9oAiAj2QOwZkk02Fjm5Nm2g5xbh0zKrkE6FeD+muOrgkRCrYPs6Y2M2
	 jOUIngP8rVYfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B069C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817439360.25894.12788682412768947791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3166739f92223e4762de5a2e423bcf9777ed70ea36886555b295c573bfd799b2
Date: Sun, 25 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748174393
