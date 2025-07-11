Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1CA220F4F
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752271194; cv=none; b=CH8hxDQ6wB0Y6wNTpRfqONKSOwkJTJHvveAz0g2lFP3T8GxGYFPA3rGcJXdspbnrTHX7Z0GxxL3cylNqp/RmvLGmfTNxmY3Ukg5Kj5C91HrU090pHLkP188Nt2/zCv1PVJZbLfHhsgrXD6eEcYZJaaxvj+iyM+p28TWgNVjLMzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752271194; c=relaxed/simple;
	bh=ofOFxxsfJ8dM9Vq0YEKBT+bIOXYspV2E8XCxDSSPYoI=;
	h=To:Subject:From:Message-Id:Date; b=VBBbcNWGm27I578ZxNZoqu0EvjkUR1HT9AmXEg5ZqLKDEuhNXh7x94BtpO7n6gKFxaB9U+7emNJ7eCjR4zfhFCq8KOhMuTHTGi9wRQi5WrAI+4osmK/vJrrjarq1/ddp48CHHy6MxTJl9p6wV6MZ86qYXujjyci5WkVbOnsWKao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohJVj7/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohJVj7/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5A0C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752271193;
	bh=ofOFxxsfJ8dM9Vq0YEKBT+bIOXYspV2E8XCxDSSPYoI=;
	h=To:Subject:From:Date:From;
	b=ohJVj7/9j5S8ItLVrBo1KwIOIJwa0DDR4Covw2uhzptkYu6Bpx/PJXW1JwK40p/cq
	 x98/Kw5PcR5JKLgsA1HsA119Vf32GM9oWfjMLMR8n3oqb6O1TuaX25b1CqnIp1woHl
	 7z0mgoWjWjkYSCzf2HH6n0ARFpmqdrFfoeOOtD1LbDVut9he4vRl43B5uJsplM41oj
	 y6fdW6Z77dJMCl/F10hxCiZHNj0HN7Fix2kQEKgnKM4IGXK7fFMi1J+tYnMpt8BgnL
	 qn/h/TCW9gjmjbUWQTYoYkYiXzwjn+g4ZjLFIe9CaHwbXOUTcQAhGyMwmqWNC8yAaV
	 wtOiGQ2EinhNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB7C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227119357.4215.11039382445356145103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f539be3b24202612187f988f04d231e1536149384677ac40c23dad13424408bd
Date: Fri, 11 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752271193
