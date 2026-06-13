Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B6937C90B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781370994; cv=none; b=a+IUqoYA8cJfNhoZFp0ptbpO3viVkUCkPW5QZesgg4v8x0so77Ny6pXr5tr9Yg5uAr7nsFOfhAZwH+zAHU5nw076c6JLaQNSNoqno7geAgkT7wv+B9BK3w3EODsNq9En2ifdrhninQ3DQxc1lrtoXdhYTBLQ3PP2ehmu/rzlySA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781370994; c=relaxed/simple;
	bh=lVV4d/YApwsAaZDwEn4CQ5y9rsqkarbtlZu83y/ZXVY=;
	h=To:Subject:From:Message-Id:Date; b=lHIwhA7e7XMLAY8JZO/BG4eDIOlvVv4wiHzx5mPIb6DR71Iq2eUJqcAMxQUaQ/k7rC8HrY2wrZjmWOQVvBy4bIBwvizAiEUQ7lDTGC99GdgYVvMPcVfREPiBDPlyFucEjX/ajv14xkZ5+/leApFU0tV7zWIEMrj0sKALvK40xzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joDgFxgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joDgFxgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D242BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781370993;
	bh=lVV4d/YApwsAaZDwEn4CQ5y9rsqkarbtlZu83y/ZXVY=;
	h=To:Subject:From:Date:From;
	b=joDgFxgwvOXHnxQDRsHPoY7BaZGqMjo1n6r8LWH9zilc8csIEi4Qzw9/yf6rhwsTv
	 FoRAOtMVA5yDQYp7Jz9OPDr6LL1YPkIOmE8VFQHoZaO+H8cXUMHoRsN1X2MWi6Jf50
	 /Jmy9JYrNPvaxX4XDssM7i+7ec6Ky4QCxynacxN+aGO8/iVf4JnOb2QpfF3h606SCE
	 y+lPkobQFapBvX7jyzkSQSR8dVYgD2Z+c6YdJNaeAU5uhJ9Pd25A7p++hCbQm5zGM6
	 cLQfoVir9t+A/SY9lsiOc3IbLm2UK+EzOE4oOpP4jvHtiukqRtsLJMIBJgPL6jBsQF
	 SG+kXRdyqoOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73DBCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137099370.23752.15368041164014586306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752e3e32e265cef99b6fe28d4355462c2b3a2b281f2ef4df034af62a68dba85f
Date: Sat, 13 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781370993
