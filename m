Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481831C6F79
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724774755; cv=none; b=ScNxng3BGZx755adN1A5A3Ytm4QQKn7SSH6eLTDVaLH4pJtRakzD1bfFNUOOYkrra0i7dDSwFetl69ArdOeIqLp/9zB/RziwtBk+2+HU+uYLKSVoOKm3f059GR7TXwiKzYNMozHMJ0HcbbAFWvn769Ofld5qJoR6/Sfjyx3xVB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724774755; c=relaxed/simple;
	bh=wE25pxs7X0uXrX18kHo4Y7pilCsJZ1YJij5itc0Zofk=;
	h=To:Subject:From:Message-Id:Date; b=UMWkRuHUNWs9VtPOCdcrrhBKmVjdSchueXsqqhIlgs7e6XGaBRHxrwVDEhX/NYUphEuIlNRo7EA5lz/xYwAkM2colhbUl7asWxoxnKZJudSNq7AbirVTmppUCihep1B0GAw4YB71sTdj7EcpE/rZeuSCM0L/USSfFnByPM8oHM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhAMsBnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhAMsBnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B082CC581B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724774754;
	bh=wE25pxs7X0uXrX18kHo4Y7pilCsJZ1YJij5itc0Zofk=;
	h=To:Subject:From:Date:From;
	b=KhAMsBnH01xstJ/vjPhPlrvEesmOsPJjqtEONgOSElSt45+t4BOVszJTq+sowGJNs
	 0Ns4tWsGJTV3oJs8PN5EbV5+swyayiB22w11Y+LwPykSR1mrXrUwwum1queDsYcAT4
	 MUAaQdiDHXnsqvr9n92L49lFsLttVT4my46ptbxkdWQvNvsDpkKzNtnzg6WjL+jvXe
	 cUfGVV0cuwi/Ab2B+4dRJIY85XYzTjfXUGpmoEw16mD4v1308pKwv8vM7F71gqnwoZ
	 wPeEjq6q8mPnZgpF1BNdhj0vs6myAfz7aB4V8kxJa/s8v+yptGC4s4v0EUQ2k+eOGJ
	 i8V4xMgFhkRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD00C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477475361.31381.6735616658873612164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd3a79f60903d8ac384dadda4687af532e58f635401c9ec7aebbe3b99d4980e
Date: Tue, 27 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724774753
