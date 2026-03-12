Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1122DF68
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773276894; cv=none; b=U0Yj+/GnrT8AhpvP1cu/CLMVIKv/bjosNV86TZc59QYQ+SEIhQxREBwA73/HZ3yANOQps6Y3awC+vyi7yFMjLBBblGhFA7J89dBLnImJcz7bIHqsnx2jFHrlK7O/6zzgrCnuSFJhCFdKMjFPehLIGvKI0/Zhqnq5Z+M7PeriF4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773276894; c=relaxed/simple;
	bh=+vOrjQNRnA1amrbYqsQYwrSttDQTSbYrExls11pYZgs=;
	h=To:Subject:From:Message-Id:Date; b=BumiiiOXFQmLgRtGr3mnso0UTvQlL5UB5b+DVYH3Fel1Vr39b1KYgBX5eYx3GFcpy84MbAMkfGtD2Jbjm56lPAZPmToRAjh4qhXwImK/bBTUUZJ2pSIiti33BZ6dJTQaYdFW6wDJOoFWIWP4/BGvMDijGx4U07oea2nNxE1/EOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8wVRNwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8wVRNwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6536C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773276893;
	bh=+vOrjQNRnA1amrbYqsQYwrSttDQTSbYrExls11pYZgs=;
	h=To:Subject:From:Date:From;
	b=A8wVRNwje+h77W62J3yCGr7eZt898zBqjdTuQY5xKgUTjpUW7cB3JkM4thLbwkHqC
	 JWX4SHR1obYnV1vY1AIHH9Sljyovpky5rUJx3sTNB+2l/Qr7wHGyr4THRq15ERyDuM
	 LBiiFN71c3H15TIbvjE87o68BVrLQ8dmQJ/1apLmkmbHx39Q5w3FOk5euPofK4SLKi
	 AkDyq+IPwLHit2XMLv4TMbElm/3NZtbbJiHIh4Gk+d7VTzYnAD9e5hckEg9YaFZSVM
	 D225MEp53bTDm1sxOaWOhcpkDn4W5Kr+d4IKX5qveG3nPtHkUDYUY026+3b+yfhhJq
	 ++1HQfLbBazcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9520F103E2F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327689360.14060.7924905850016733809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2861681f51475b2566ea0cfda6c96cec89595533dcdb74418b7a42992b9e7e1e
Date: Thu, 12 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773276893
