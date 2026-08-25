Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2184B175A8A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787679036; cv=none; b=CBoLyIVnBPf4+g3K4d2AZskJI3+EvHWpFhen2NQdFO84e5kh5kHsECcoXaTTliP9qJd20kQtRtJvWtOTzepx7iMlrV+ghk6EqObDx6rJmxT3oAy/KciEOlwEwTNVU970bWcseHIounCFYppsvbgjMz605Pjm7EdRCfUqsoAFlBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787679036; c=relaxed/simple;
	bh=9Ph2JYv69Ekswsvz7ODk+pEp+vw7zj3chvVpWsna488=;
	h=To:Subject:From:Message-Id:Date; b=a/eQoTJkdYMHzp3fj9e9UZ5sARDoAr2hItER098y2c98GFBkPtCf4vtt9kozT1xSejnYT5Cur65LaKVxh5FrMZFtVMvgU4Bh64Xzhkx/w3z+yIxQJXptQsfqLYl/UeraAZw0WSjFqMDyJ2CrHkDdaowe+z6lOLtD30sal7bKFy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlSOTtWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlSOTtWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9C3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787679033;
	bh=9Ph2JYv69Ekswsvz7ODk+pEp+vw7zj3chvVpWsna488=;
	h=To:Subject:From:Date:From;
	b=mlSOTtWPyqiRefsKEr0RUJVJBED9SRKQFNWGzfvpgZNy33PQ552Y2xCq08qIHtv3e
	 7UilmTgP7REK6zmCZMC4kRed+syYmvbVW1pNORY57uWzbujQI6jvqHFiiY13nRNDuw
	 AQLOSNAr5D6wY5oRVp9MHZ1sp5jCH8Wek0lUvFuqOUN0jtRmgWVKa7MFiqOWk3WdZh
	 Y5NS9MFlgpZW0Y5okaWc7ovFdWW3JdtynQ15eJO4E/rjx2v4kX1dWWBacHZWsK4upB
	 MtDj6h64ywQcP/0lhraL4VHeW+ZEZemOM8efYEAoDAuHiCJcYe0GcoItSJX3GZxCH6
	 wDyyLegF3osZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E4C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767903369.31271.17688593715463764810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc45a2cd18ca4c2cad626b50714b4358265fa0d37e94b9efe0de64f743e1b6e
Date: Tue, 25 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787679033
