Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3331A704B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751138394; cv=none; b=XTMYG76hbpEhzUjJdSgwbvEHBKtQwGY3anKDXJ03rOS8XCi9BLscOicD6VZoKp++sbchqs+1QtRW9cwpyW6mEmZAgv0yaRXi3fhIRZTkN0JwSpu0PWerS0ITwBZr8Pp1famsC7OF++Hem6ZBOrgsdlaal8QFcI7054HvT9oaXhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751138394; c=relaxed/simple;
	bh=9UXl8/nsbyr57sXUWR+Y2LHd0mpsgFCZdWgK4oWV/EM=;
	h=To:Subject:From:Message-Id:Date; b=u1mt0pwhs/9cA3aAuQc9b+5vAZT4EUHcj9QBhRFXx3gcEHh+lus1M9LQpmnglY9QhZVd2uydenLfnjGqc2vdMXXQWfZPkq3UW1GVtvtgJNCY0RjGUcrhvBg21xs81YTa7uSYedMB78xdRleWEnCpcCID2HM260Y3iNzA+qu6MnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=art/CGOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="art/CGOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE6DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751138393;
	bh=9UXl8/nsbyr57sXUWR+Y2LHd0mpsgFCZdWgK4oWV/EM=;
	h=To:Subject:From:Date:From;
	b=art/CGOM7kaT+Ta8+/uw6StJyQaC/SahDkGVl2fXOlHdpuR2wUXcyrf0DHqy2sk70
	 RqVP+Zm2HGyS8JgM6hpuIyDHZUVXoL/RAn4WJbNvRhcccIuzm0ZSWlSd73dVp5vvD6
	 zU3nyl7h7RWouM7qabpIe0Y3PlPfVB9GFEmP30/9oqYZdPYy26oxVVW6DbVkD32HTR
	 JfKtgYgmOWpThzL8aQXUN4reyI1ZZj8dVZsR0vf4egLNLLvQjdzUJ+SYRnVstZWxog
	 n+sEAPF88kBqg9OZMBFHF9d1mS8t+LI5/hiOSflPoEs0yEzIo+1rAYhgu9Wc+LbHGi
	 Qmp0XMeXibdmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C9C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113839357.18818.2933720257019471934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4026a83e6180efe031641c037024f99ea2578852ab62d64042eead41b7a7cd
Date: Sat, 28 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751138393
