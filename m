Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21824235C1E
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753399194; cv=none; b=oJGmgHvTrb/QBDCxU9EqLWafIkWkqQxjl3YIcZdsbzL6UZ5EBkk1A1+YYWIx91d6RxWv1nRPZyEuvEAy9oNAwrVjT69FtmsWaZn+fLNVWOrwWx2pkk+OaxjVTuluuX/wZOFUhO1cv3y4RxLM1pYuI7jCWVtsWElQBW9nqZfCKbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753399194; c=relaxed/simple;
	bh=uN7WvXqAE44nX7EXNk0f9NRoW2iult9n+925GXabcGY=;
	h=To:Subject:From:Message-Id:Date; b=MrdeOMym80hOnsqns7uy3RqPZA1UfjA4XALOreOfop1XKTsTnb2SzlY49Oi2eN+7Yu4kzVRimTNphaL6M+9hyf6r+Prno/TDwsxNvO9Z3huFIWgsyqdIZX2aj+AqGtXfeXZZrPV0h17QgDVEaqVfEvSP3Q98cE0ZXTZl0ql73iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVfg7BV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVfg7BV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1617C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753399193;
	bh=uN7WvXqAE44nX7EXNk0f9NRoW2iult9n+925GXabcGY=;
	h=To:Subject:From:Date:From;
	b=bVfg7BV/TVovDmI+pf44393BKrE67IBixpyvALREEZZVAXIiZvum8W/7wXXuCP3J+
	 gKJ1LZBLk7LRbv/G6jZkpUA3xWk8R6pUccieW5PqpaFGmFAa9XhKW52JAPnC5ZZSYB
	 bCR3pfPREPdX8YHtZ0Xt/UROtP4lxJuMmDtc7Z32wl/kVGkMJWHN8hdEbGI+sT90tg
	 D+VoEpqnZD/Uifajx2g3C479NtP+/So/M0wOAL3ChvUTwrIUrA5LuBj+TeBYlnG07c
	 F8GCtWdxrESosXpU7h/DnjkIy26J8fU/jK3X0ZeSTAlFEf5B0FUvuEAZOZxJPheWtZ
	 5qL5vPnhI7fJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC76C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339919358.18429.14462652770359648800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04093f918b50c505b29e17cdbd787d53dccf9cd1642b699b73ca8666aa789b7
Date: Thu, 24 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753399193
