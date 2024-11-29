Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB39211C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732840554; cv=none; b=KdqUd/auASEyoW1pn1LgaeIOwz2zI8OChRvUkSeOAgAsT5QU75i62Wxxe+n8cFe3E5GP499ElVnUmGLBKe5YlgEdEIjFvpAEI5oCmBu1zhMoPd7P7xLjkYXBJvOAzEz6Q3WK++ZcpY3qI4ejm2Zg3Au3t3PjM1hy23LFDl1ACuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732840554; c=relaxed/simple;
	bh=apyy1mEfX/B9pFkP0Px4blATidDQCIT6G1ZvtX2PuEw=;
	h=To:Subject:From:Message-Id:Date; b=KM7a00x2A/thsdhx+aozHfR9IqYEqNArY5xoiZT4BR1S/+7yMjytCU9DQ5dM0TYBtYzEbTGzyxwmo4GlcV9DT89f2/7HSZ9r37WFJvwOdMZ1ga7lkGkd4y03HuNSFK1zi+QkDuoAy0QZoO44JlM0Tmz6uefBjI8Xzov9TXWNJGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcZ0Bf/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcZ0Bf/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD822C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732840553;
	bh=apyy1mEfX/B9pFkP0Px4blATidDQCIT6G1ZvtX2PuEw=;
	h=To:Subject:From:Date:From;
	b=dcZ0Bf/f9iYZoqGQwuTMYKrWsRpTvGJbJS233NkkYTR19bkrDKbZfKxvoSiyIPEat
	 NgYajtFuNDYgVdcVPkApEuv3EYNdp/q1m1n5WYUxzx3iQSEdSeY/qH0PbiQ6tIP5kY
	 JycPe3Y6adetlBpJimBIL9hSw+MZ/W9wtGs9gYpsihweGRb1QGcDGnc1/2pibjv0aS
	 8C45LYCLENykIlMg6rjy2QG9HNG5oYlgApcylDd6er1d74FfR/F8qll6aSMqC+3Apj
	 GassjgKpVytOTo+tL28tzilHeveLnhUM4TtyURv10HyuoGenEWD0KNUuNMHw0uQJRY
	 1DMouvRVe8SlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A3D70E02
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284055359.31064.3376086247527759132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf2697de5d33c7a624fc310b80e58e1c70dc99a238dcc08eea143e583c452c5
Date: Fri, 29 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732840553
