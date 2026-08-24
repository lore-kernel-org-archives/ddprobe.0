Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE681A3166
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787536834; cv=none; b=O53B8+nJoRyLb/sSSkB4rhIY07QrxK4HygHMOgUvwgTvGOuen45xbmmSDP+ahhA8nuQKq1UhJIdfsN6T4oYPXgNtuD0FCUTT9CgoSeaDU5b4Pk+ZUXVOq/cEHmHlV38cEJ7n4LyDSj062cn9xbbw6Y71vcheoscoPyvao0ybhGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787536834; c=relaxed/simple;
	bh=pnyRdXauTZ4NqHblcvvE7oMbKkVcYfwQOQPd1yUNC3w=;
	h=To:Subject:From:Message-Id:Date; b=nMavUqxA6b0jfw4/RSOWfVR0o5acODl4sUmzpQM6PpQR4YOZPG7XO3xEBkd9VwbByYqTzKkP5X1UbrS7ovocxsMGw0hhBTlCYI5hpBZ8eZVQ36GB68eZAMJuDYPgfdWUdl6hxLOh/LVFBG+X10WtcpU6GL4xzF5sdQYKzC3cN2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzPCjFQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzPCjFQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D558AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787536833;
	bh=pnyRdXauTZ4NqHblcvvE7oMbKkVcYfwQOQPd1yUNC3w=;
	h=To:Subject:From:Date:From;
	b=JzPCjFQF7WRQEE6gj+OV7J4eVga9KV843+GHWHZiWs8X4/zneq+xghjVwkqlVc/0I
	 8+kEq5f+ahEQVNaaXadNO1zMLTgV1zkKm5Pha9K3pQp7X4HZwMFZtzwGg51N3VPeGC
	 hZetoUylgwXksMRA63OFDg334KrvRULWrMG+dgS51Jea7hL7Lf2SKCtuo+jzwvQqmC
	 Q3dS8vpPyQSvLABN39ksV7A2+9v9E/OKL2LeF0fx7sz4uaBJua5i5qS5Ni72OG624b
	 tbG7Kn99NWHBNupZZs1W0CkVGC1dINZ5PMoOj4AIcOm8VqOMd9fMZLessvXM0HQrTa
	 5Qofu9ipcOabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CE1C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753683369.8848.424885556357386087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c31a3f3e7e4871e7aed6c94de62d10569fe3a597018c68f2cce34081ebe2cd9
Date: Mon, 24 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787536833
