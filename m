Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42969218593
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748504394; cv=none; b=pYVta98oX1GUwnbzqxEMLT5aCp84gDfGiOt+j4EuqgBnFRrc0XF4V8Eiq9MU0QGZCOr5pBmuQiSTTbV7WG2NGpYly8NhG3hcGf6w4UkpiMdlvnpCwRbHqBv5c7Q7Ak6OnxWTy6LQjiDGB1n7NH8EZS/B7A0NYLRZdlrYbbL0LJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748504394; c=relaxed/simple;
	bh=3E6dkCS2kB52PFiOUxQL2327/9rWceTYfVPBHoxI9Q4=;
	h=To:Subject:From:Message-Id:Date; b=aJnXSonYXsmiO0CfoZn4OJ+R4ZWYOt9rVn07+HU8g66CMDcdocV/sw1cSOptsB1O0SAbNDSDrtfzbfsizUYE5InC8nUZDeKd4YaThVETVA9/Z2OF3jXjrMZ6h93gcYgPsjdABkChy6TUFCX/ckOzYRD5LtN/Paj8DOEVORyeIxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST4n+vbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST4n+vbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F082C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748504393;
	bh=3E6dkCS2kB52PFiOUxQL2327/9rWceTYfVPBHoxI9Q4=;
	h=To:Subject:From:Date:From;
	b=ST4n+vbv6grxRCFsDgNUdrt8tgU2iWWlCA4qT3rRCBRi+y5dC8U+Yn4FL1XFBqjK4
	 VCtdht8Z5r9B6Z/lfcc5EIZvENvJyYuXvB8ovMKXt8FtgsFIomNUQ+UsHz0Lzzawjs
	 MuNVKf4keUSyjerupGG/JVHmxD5vkOBPLo0bDT6qCoUnPU8W6OOHRBtUe8rt/Mvdn2
	 k2aRX8e5kHo/0NMiKjiN7al2f6VBCKR6YScKThGHIAXptW8XXQB7xGra0oL4XxLpU6
	 YSY/GkLTndLKDJ1EaaIVvtacoLIM8aJQi14nDtqMX8HSXEYokrXWZsJFFM8gmq3GLT
	 WveNos7lsROHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD7C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850439357.19259.6608610034555537492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad92bc55f58e5dff7cebed6fa109c5d190fc096dc05efb124f087ca07e2db6ec
Date: Thu, 29 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748504393
