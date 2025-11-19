Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7502E143C61
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763526114; cv=none; b=p1QCH9gVztgTogRPWw4d346lgVJlTy3uXFtJSKU6zX3UpIS2ozofSz5JZjW+Y7RKnsyMU+GXP7brKtzAyRVJRwAwXPpjMZ7njhJRC6pNUWH3mfPxAFPggNoFIL9Mj06zXlOrbsAz4Cv43t8VivDKu3hrDBD+QUmTpuzzP3u2SNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763526114; c=relaxed/simple;
	bh=iwFaoILkt3HMN/P5ckze1uqOHU4+oBkM4cV9/C2dEU8=;
	h=To:Subject:From:Message-Id:Date; b=aYG1oJFg8RcUlhfAOM1pVQs87gxPCGSxEiD9R8hep671SJ3Jq1csyIzsEr1jKOTABS9D90f2c7sQ4dYKmDUUNSN7GYmUGWPYUBrGYkL8AgvbffXPFAYEG6JPO+MKKQgMgyUlMmYmmEn7R5WPrm5zI28HXIlOrc7rvoxhNz8HKdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noOdyI1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noOdyI1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A97C113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763526113;
	bh=iwFaoILkt3HMN/P5ckze1uqOHU4+oBkM4cV9/C2dEU8=;
	h=To:Subject:From:Date:From;
	b=noOdyI1E66npHvXY7ye88JOTp0ys1nDtK0QEzfB4mek7kevbyMDTW8BDtatWAbb+w
	 YQ6ZJTgvBrxw+j3+NH9vgYgZl/V3Ul5QJrdzaetybTKakzhBqL7JhOWWqPqZKA3rZQ
	 p4viMKA/q4kJPRRZynni7IAATijw1AaVj5zORvuZeiTgOnJxIwE2z/uvae7azKK6Y+
	 N0Je+TSmu39K8JX8FgwEA8uK9dhaFg8VkCq3Oh/iN+3E8CfJ3+sVrWFAAKP/+xIp0F
	 SaXylecRt3/vkTRzkrbk/UInTI842ta7OOQ48rDbGnqbkhzGRLtRH8rB3M4/yDWFYL
	 YrlZG8yhmgIEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E94CF256C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352611358.28296.3722821498593088592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f528536535409b765b0e07c44f5a7ae9efb3ea675d5097be8a873b244b322ff
Date: Wed, 19 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763526113
