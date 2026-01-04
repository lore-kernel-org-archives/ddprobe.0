Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20891F4CB3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767491034; cv=none; b=pj63DHKaJO5f/lkygZkAXxpywZcxH8CV52Sm7iy3xiRy5/Z3tJ5+i6MsgF3Xec2JwDAdkbcIYN4FirkwCOzJ1UJNVcOfsZLjZ4gYdkbseFycNz5PMmCYz9bXiZLUOuDIqzuz2RjAoqjv/wRvCP5bq9+2MdVzcjnkdNtnVPBfMxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767491034; c=relaxed/simple;
	bh=E2QIsnTdJ+1xa6Cgv5V/rLQxROOrr/pDeBvNMQNbsNo=;
	h=To:Subject:From:Message-Id:Date; b=CuP6SggITP+QDLjlQZZLsAkaEJTmvj44AGRRSLZv+VC1FUCALvFuX2VjkmN/0QHLJk98ln2YbnHqJD5ajR5SJnY+XxYf+3LNVguC3e/eIA/RjDNae++8so40vbEP2OP99WtMrcaM670BJ0qVePVe0RiAldo0EguQa512HrSVrqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D49Q0vgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D49Q0vgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD44C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767491033;
	bh=E2QIsnTdJ+1xa6Cgv5V/rLQxROOrr/pDeBvNMQNbsNo=;
	h=To:Subject:From:Date:From;
	b=D49Q0vgnE8C9DsduzVDcFFQAdW9wwA/qMAruVzUFqqooEbnaf4vNMHv33ieNnyjSS
	 psFgazZBkGIFARolqzvK8XVvh2M0itPZqcWdZr0olggqTMxL2DIMNPpGh0c8mC85MW
	 HjmY+cxdTKvljJUCkhN24QUXOrG73X1YSiepC5fcIax0Rsu2v4jEUos0byb7RPmnns
	 ZHa6QWs48QZCnyW9ccmi4DZwWKZR7nEvxOKmxCGvKUPsJ5ld9UDAACueUZq/1Fdsan
	 YlRXJzpCTzU3XddqGSQTA2CC5u0Sl56FqlxDJbGAZgucZLCBBPxjTPR+7C/GZQX8Bk
	 MR8nJLERoFdzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C1C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749103357.22459.9190155264836962381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6a3f7494552cce589a01afa0ec4dc270634b012e3e8e05fb76ad57217ea506
Date: Sun, 04 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767491033
