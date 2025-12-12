Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230BB225779
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765543374; cv=none; b=kIMHJT7QhCMlR6BuPJkVN7wrY/aADy3xmpsKLhXB4nZGg8HvmWAIctNKJ0oq0xEXzj159pPasNGeyoY34BGMj7mL758PmKwfmKvljECSVM8/LMpNd1YW/Q2NUohApNhcO3NfuXYd/PgaqvYcofZN9IyQbjOoaEuCB/QxfYe4egQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765543374; c=relaxed/simple;
	bh=9S6QmJuWDNClSNwpLN27bT1p7zIOm+DutP+nirJse24=;
	h=To:Subject:From:Message-Id:Date; b=BaCSDsqGjdiGBiJHkdEH1zaVc18XdpjVT5QGomYjt/kbqF5ScuPCmBiG5pjz/4uTImUUKpP4iIDgeWouZeerbhpWZbTklQ6HVjwQ0rQVv9MlfaL3VjxZg4H5jn53NTPK4eGrbNAj4Te1kZu0NOPTje/HPy4pUtrJ8eqGwxuZWKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7VBKq0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7VBKq0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765543373;
	bh=9S6QmJuWDNClSNwpLN27bT1p7zIOm+DutP+nirJse24=;
	h=To:Subject:From:Date:From;
	b=D7VBKq0TO3eQ0DotqXeBQOkyF7S4ZwFLClzLeygvVbgHwRwDy/Lx0bSo4Jl8mznMd
	 hylfPX3zhgrnfpPdDHXBQFZObuhdX3HpYPWXjSnxlBHM7spbKVmelYHeuKgquzixjP
	 YCCkRG4wllve001deSZOQrp9oprDGvymD+dAqwCD9CNiwpRHABOWsnFIWd/ABkYKfm
	 9wflagFDWTktqxix+Dpv8YSlgVr1sOXnLFFoZurwFgO+v97PetgGFvMOFnwHcFKpLj
	 SQoN/4QRNlUJWW8V9m4+SdPHKYBdlPDB/09PrfqRRQa+OqXmKhmmH5nOygDJFBZKhF
	 Zpkmt53OVzSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE0D49221
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554337358.2154.18278003041599949910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286a276072bd4b01183fe2fd5d2bc7d7a58d0a2e99a9ef72f357b4fdcf6a8366
Date: Fri, 12 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765543373
