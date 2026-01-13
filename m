Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30919A945
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768268034; cv=none; b=gQaKGppAeJ2XQ96Zls/kyBp0ZMTA764Q2Xh912XzwIlFZwz7RZrs7r+nYJCHYL3iz1Cj4O8u6O/xh+25CPGEgLoNKqkcrpZCyw8s/n03v7TT99+CSs+QEPHGeD8SEWFRBJFYY2fIvqV09eXZ/4lurBAkTHtaBBhvydJU3GyW3Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768268034; c=relaxed/simple;
	bh=bUfMyIpc6pksrjZblFmeanGX2sYpAr0l31qfnw3GiAU=;
	h=To:Subject:From:Message-Id:Date; b=osGt6Hb8WPxZTV9HODNHP76vVdpss14CO5OaThGfiDRRtmXOU88vA5o4jbeIySPI7Lr8uvjMJwqJKag7JTnFmTlAMUqJRSSzyjmcbX7tvy6bIadslFyr14WZ+BromYXPJ/04p2986wZD8gbVe9HJBXt3kBetBVNsVkJ3HR0lWDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ioto4vCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ioto4vCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA46CC116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768268033;
	bh=bUfMyIpc6pksrjZblFmeanGX2sYpAr0l31qfnw3GiAU=;
	h=To:Subject:From:Date:From;
	b=Ioto4vCsZlR5a/mY/woz4i4WvA9n7Vfl9jYoZe8bzt+F93koRssMN3mGCj7ja3eJN
	 awkuMOMoo4RCDvVZ3VmTxmlkvZh4vQPRWo5G7I7FC+vOrBFjGH2iUDhfLj9C6Q8x37
	 VQh2dmambRL60Gw1wLUfMkRPj42BVpQisPZrzpR4cU95vEKPSBI7+heM48rsSx0IJk
	 kjGFRDoIdz+IP76S0z247biQJUQ0d2W37pq6YU9stqN3HNcW9ggDjUVa7vcWUvisHm
	 kbMHmrGEXQfX+uQlFkgbPworwgbwLqZ5INnQvmZPyVQj/ITDQYPTomAJ0lv1oxPOYP
	 tflDUGF4fIFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98561CF45CB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826803361.565.14246319971580342150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24278f2ddb594af9c998b4d55ca41d0b069f16966a4b96816c0de544dff2edeb
Date: Tue, 13 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768268033
