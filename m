Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780F9306486
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778210855; cv=none; b=gt96hNaXCPs4zNmkomV0wnsWGa6kyHFzCEq6bn6jsdILi9n7ZH/+LSF1YBn6F9BBTw2nfhkmKjIMHqklyyir2kiacETJDYvZBVw7C+rsz0K5C4D0dSivqDy7zg7YiMXpVq6Nl1yYGcYkKEfE0kkJh0FCLLwIZcWYpaIyQKsI/vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778210855; c=relaxed/simple;
	bh=jdBPxYYF8H8pMJZ+cnSOOAHAw6pvGs+zk1VPFihoD10=;
	h=To:Subject:From:Message-Id:Date; b=fny7iRTcEBMWv4r98+WBgTLImsU4Mb+cY3Ij4IUBaJ72AO6QHfaSkBjDn0oWBg3BK1TW3TFcTJbNG8zEVFzUfHbNe7QEUcvL0Iesi7Arkvqw1/ojreN0UVVtqRF0vGcfb1QkR0vsutv5XvXSdcLivX1sfbn131Hi1GoE9UzqapI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYDw8Lar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYDw8Lar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A4FC2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778210853;
	bh=jdBPxYYF8H8pMJZ+cnSOOAHAw6pvGs+zk1VPFihoD10=;
	h=To:Subject:From:Date:From;
	b=jYDw8Lar78Sch9sPMWjcw5f1DnxNiCWGYIx6pDDz9g2IGyGl+6aVZUftJjx3vQ1Nv
	 XzfKeYTE4k5IFQ4oiVpyoXASai4iZB4QcLk6SJQF0MQrHh8qSWFFNb2/3mPQ0ei3p/
	 yjbEgZbQrnnEBGEKYI+7os4vT08a9jVkRIouSuyNfrF5rCa8LQWFJbpCAFJ1NcUAWg
	 Z8w31zgqxumZDTVnHbv6paWKyx3/nBPXFJOhNVUdWcfcBkgsvRBHjdElxaSjeE2ggo
	 uKhAxJSb4hnqWPArXgClhZlNDqI4qtt6gzGRtJlNW/zPmgv5HTNx74GHue/Qy9JB9C
	 Yqz413hErit4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C9CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821085370.3351.11494685441328528302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec6d4dd5fb2ad281e2d9951d4f929f20f30d26b00d0abf5da5a3c792389eff2
Date: Fri, 08 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778210853
