Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA701EB1BC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745318394; cv=none; b=fiMj883e07ofaaaSAPllsKUuJmyL/jCfvEh4WV1EKTmWkhts0qYYy29cGfFMNjwz8RScVN+oW9PS/C/jqu4XvWwC0P9u+dtXMqWsWLITt2Y3VDwd8881vg6icN1bLMe+M7mfc5StAsQtfFquirx22JDQqH3smIZYkQfk6ucYDyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745318394; c=relaxed/simple;
	bh=f+Fju5c99Rptz5x+l/ZyWoiwfsZTzal8KnLDUWLIofk=;
	h=To:Subject:From:Message-Id:Date; b=tvVLFxh7NodayA65kId0fgG/wksEGxJPZuRe/7IHu6RFS1VzWRDwrGATqTiQnkH/pdV3pcZKkoF2Ath57Jyw6TeJ3d5G/6aKJEaAmozT0vBfQ8D1zUXqHY6TIWI23HQOaHMQhUAoEc0dqnGTkv7plOx6aHRsFawRNWQDvo9LH9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo80kp7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo80kp7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE78C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745318393;
	bh=f+Fju5c99Rptz5x+l/ZyWoiwfsZTzal8KnLDUWLIofk=;
	h=To:Subject:From:Date:From;
	b=uo80kp7edEIecl3iZaeUZ9hNwlJQMS8IwIO6ONKO3e43ul3/uc6LOkTv4T1rnRJLJ
	 GHt/wx3I8VYrslldCTTUqlD+Qei9XCLmOe3Qbp9CYD0f1PD+lsYAQwL1OCzA55dhUe
	 +2dy1zbhuxQdnOXBLFoti9nA0IwUYYcKr58mBnl0GHw+qnR+b2wxYXRpLZbfymBWE6
	 nR2GYJfrYu8afPAZXp9+pfuxgMOj9RXcx0lQf7DG7xbr8YYJiyx7dOzHOzuH8TDkCZ
	 bvREB8Qreu9/tifGow/kfn/cUqJo+3lYWg5RUtGvFl9ADdjoRjXRe3RBjNfmqvQSnW
	 3neeMztLs5lPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A13CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531839362.17185.1553635912663914921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd238695e5edbb2999a1b514072041847df1319458ade3f8c4d694c738c82ee
Date: Tue, 22 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745318393
