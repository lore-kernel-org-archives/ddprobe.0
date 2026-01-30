Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1673A31987B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769763834; cv=none; b=o/cPdejA2bAY5l52P2mOlNWArInO4VrLJKf1ogUfSs5v0RkHeN+RO5hA5MKmciGA+dUxDygI+GIHuCOzF2Y7VvA0ntu5V0N+Dbqomwjq9rMW8bUpga6mTDKTalKs/B7vXaAkRISdsXA4om4ZOFK+a/d7YRf/bQFWkXM6Or5tRGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769763834; c=relaxed/simple;
	bh=IxzEuwoWpttB97wTZR3JzTzD5R5ELqia0VvlaEaeazk=;
	h=To:Subject:From:Message-Id:Date; b=O+THVHsc6Yc6W7oZLw4CdrnY/fkniXpKzMhGjc/hqsaRU03q1j7icRXcGhFGuBXbGteT62eEJZvs4/j8S3yPiBP0j7a1aRW/yLffWa7UKWmoN6sGJ1xDvN5940F7T8T+myiuP90gkL+gIHMY4B55F3Jsxrtd1rYlC2QDkGgVD7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT+wPf3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT+wPf3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6677C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769763833;
	bh=IxzEuwoWpttB97wTZR3JzTzD5R5ELqia0VvlaEaeazk=;
	h=To:Subject:From:Date:From;
	b=iT+wPf3ReS5qJj0KNLAyUv8Y1qxdXlik6KvAVsfuKRcOCaCnmhBP5U1Uvea83Agj8
	 0tTQ6snagx98y9TskJ5g5lbqouUo9OgIDJoxlCnzm1vxwozcV3y4Zd2ybuBSqeqht/
	 QpggGysj+T0gDPoQAYM3VzM7wMk9zw+iGpcO0y22Mu8EDCz+PnDddRMQHwUxaBMfPo
	 q1KiZV2YbZEEuKbKPq8gBE52ibnm2NoSP7Q/A8hK+ywR60jdVGpDolh4TAELM/sU2b
	 8alGD14W1amgkEO2SpvnrZA9yuLh1IIFBG8+IOkkTCuRG2OLRSQcdVnm1HGAqk8aUB
	 N3usTphVJri2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597DD49C7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976383357.32674.12405295116230055869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5166bdb534c2b2c9c519b5c6da25ae51f492bac1c5530c850a656519e91cee62
Date: Fri, 30 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769763833
