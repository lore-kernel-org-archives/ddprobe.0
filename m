Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAE62DB7A9
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773626094; cv=none; b=Ihz4RoQoOWyq+narniDAtaeHuHVchblq0eJQGxUjoCivHq2YqOUB9DevynntiwFAPc6emHyu1h2xBy18b1TF4KPzUPdk9eNDJuB1GlG0v5fnFQKL4DNopIaZerXwBB12seo2c4/4DAi8nc+2mD4Bv8JdEwyk5PWs+DWVBHAhadw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773626094; c=relaxed/simple;
	bh=reaLlAi+xihjmq+3zlX/UeNkusc9xlGVxBBm6pGHPG4=;
	h=To:Subject:From:Message-Id:Date; b=r9q+swLYE9PU84afVezsBmKUhWjAbdqIXqH5t6NAK+38bFHSguW3l4KqVrbBs57ZAjSceM1c/IfO8GeKd4oevcnitHNEHf0ZNzKI9qIZrEmg2TjPbsEbIqsZPoDxDDOXGBn1g1V8VUR8LJJu5fsn7BqpD5zhjK2h0W3Fr0rsXwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGTacgzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGTacgzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E604C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773626093;
	bh=reaLlAi+xihjmq+3zlX/UeNkusc9xlGVxBBm6pGHPG4=;
	h=To:Subject:From:Date:From;
	b=PGTacgzW75jwge54xxfVI+EyG1bVGTM4WCH8F9pxrZGr6sPmwZBjUGYWYjhcv/omN
	 nnkuwtuskCz1zJ8b8QSEvM3oM78BABu0SnNHyGRfdr/AEnO8s1B8INRbxh9t0UihXY
	 fSbnmeNcpg7aPqF93WSSO1ES5VjVT+cTPgVK7iJRVqmhdtXnGKn9CIThGY3uSDGZMH
	 oaJshwUIxXNuHiq6/uN/e2zigWNmu5JKLiqilZKT3VTqhiAjwCHF7X1H24W7MmfSHn
	 4ia4NX7olFu7YFt/JHdjKuThgE+457v2cMjgd2p1AfnN7kw/g2yIDMNBwLvn5RtlYm
	 48KcmfR8lZmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA93F30295
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362609357.17395.13312879944021888475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a58a00572c6e926888f3dc0c7a967624914227fc744b01642022295006b79ff
Date: Mon, 16 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773626093
