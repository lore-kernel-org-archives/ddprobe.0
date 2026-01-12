Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA88500963
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216434; cv=none; b=hvTedWRnxOXGz2bLw4ibQGv4974rORyNabvy1fGfJ5D1/Zi4qlgIq9MLJD27Fj0Zp7GKSIn+y5zpo1Vmq4lgfbZhVy4mEc0T2UcDwM7aY6zEimmRsI879JO+z8q4RgctSCRqiV2M8+9ZOrxpFOzqj2cm7Yq+ubD7yPW5i8TFmm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216434; c=relaxed/simple;
	bh=teQVzXfgz9hht/iaA1Tz546jponqR9ZBNUxuhNqpOMU=;
	h=To:Subject:From:Message-Id:Date; b=tChTEiO5M/uaRL5qQf7k7d6KQWHmwCfxeuA7XvVOd7rhG+tp2D7m0+iJiWGorJNVZVjWBqkyO+piZfElTOTggvw5pq31bI/bU0MA1ZWQDbgM4FX57wUAw/ZAbcglqIsr9jc6VfJgH5NL+AczeLvMbGvT44GjIdQ1JpMjwIxIG9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOoEXtO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOoEXtO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B3C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768216433;
	bh=teQVzXfgz9hht/iaA1Tz546jponqR9ZBNUxuhNqpOMU=;
	h=To:Subject:From:Date:From;
	b=HOoEXtO1zD7SFtV/c1MEPfV0M1DNlS4VRHqxwrmi0TRVj3S2rqmHR2cpdgf+RV1Yi
	 Rc2NJ5/I2w+p7pjY9Fgkt3YPNW8ifJNFXBp5XH4QL4ueLeOkQRMSyMZjecAwk0PPJG
	 zIyW1LfpXnd8wSzoJJYiRw1sINy0BwmbnH5N7mF24fI4JM/3qSFcDBO/WSljlbIiTL
	 unXLC4rLTIwzi5PbFTt+n7qmtFslHX0OQC77E/TOz0lh+TT33/vjYB6uT4wAFRsELq
	 VsKDh/3uyXGk2mpq9a32wekJF5mTWla7Pah5gZdG4YxYkvo2vUAXnPTvu8bVE1VduU
	 Y7so/53F0afZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF7C9EC72
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821643358.12532.10370012063667405117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01271e3be7e08192c63f46d349000172a7bc55e95c482102b6ab22f78936433b
Date: Mon, 12 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768216433
