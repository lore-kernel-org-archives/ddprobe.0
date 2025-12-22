Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2217332A3FD
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766438034; cv=none; b=Amp7YQYru7he8sQ5buMRI+Ix4YOR/cEHM7W3Gb7MQAVcpD3Un6l99LKsUE+zX5i2OT9UpvANmK/efRMPfVpaGGZLoZaMGGzXYX6PEPeujENU0wNI4wTQmUwefCK7X8BwQZewjdEQMQDIges8PrywVmGmtUp95MgqFghIhAr4JTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766438034; c=relaxed/simple;
	bh=P4gInxRJnUcsZ6k5tadHyI2AV+w7hxUBPgL0RqIImdU=;
	h=To:Subject:From:Message-Id:Date; b=rf6+B1XBYAh51S6QAFuwPGjXLknlwkyAllxdn3JZpPK6AgMcs09b40qlzJZpjHAfQcQaoNZMm0G8AAimZg+EtOZ/QzQkzO2n6RuMZegELTeYzXw1DXZxrRfIa5aU3mkEzEhVLedPZbhQjgLx/R4+nhw3u/wf9ENjZuvN/QA43os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGT3oDku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGT3oDku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCAEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766438033;
	bh=P4gInxRJnUcsZ6k5tadHyI2AV+w7hxUBPgL0RqIImdU=;
	h=To:Subject:From:Date:From;
	b=kGT3oDkuD+EAWPruE0Fp6mKP7+t1Xwcr9BF6AqN3UAR+wmoiIXxabu5d/y6TzQPAW
	 zxDuui3Vglz1s0Y3PPOBprMKS6Qkw6FekJgWJYr84wuHH/1cALTQf9PxEdqW+NCAAD
	 9Tagmk7KhWYF2J/cXyLcqJRVYJJPLAcD/Z2pyrotQAgdDiPLz4mwj4eXfqXCNGIZLa
	 cUZNt8q73tOe5JMEpm0X4Spt1kt8q1Vei9BnN2pcXX2GcT/FFrcz0JBDOJ1sJRzbzH
	 zNKZ6eASn/g9mLyLq4q95XT9jemje78xeeo/xhcKRRYejniXu2tz4C4d0hkcQ+kY8x
	 VQjI8BQbtLCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F2E6ADE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643803359.3022.9118926053130486253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25dc1b6fa5edec12f2b7bf913de7c38d1fbc20d51e227acdd6c7d72da3f51855
Date: Mon, 22 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766438033
