Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDDA1A83F9
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765740774; cv=none; b=ntMKFBwJbyepwgOGouKfglrb48pwBChwhEfMHT+6CydMn8a6PDW8BZ5835OFnoEMN80lT3N3q3drfQIf20XAVUbFBdJUAI7WkRMh5vtk5Rmq3J+EQ1xVM6lCdbzS7Acc3hznAE2LbAnxQDqt6lJaSRKOMyceIsGVYXBMH7TS9wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765740774; c=relaxed/simple;
	bh=IyIVopsG5E984PqBLeH1ugSmV4I5eYE+kw3BZJeFWZ4=;
	h=To:Subject:From:Message-Id:Date; b=KJ6NRH07O91SK0q2SaxgQ8fg4BLaqqhiv3GckR0ysN546N0cUvrl/wrqOz0X/ltAH5DGAoZT3ZZNoNRlerqbNvIPGs3ZbtIjLAHdXdFFJqd7bKXgfU7eRwUej5LSLyAPJsjtkuDI8BRIocRLSQLelLtIiZNjko8H9ioxGjMIUWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAwGTd7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAwGTd7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A39C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765740773;
	bh=IyIVopsG5E984PqBLeH1ugSmV4I5eYE+kw3BZJeFWZ4=;
	h=To:Subject:From:Date:From;
	b=cAwGTd7Nl71BVgyxY5D4MdOYdacs9fCOIeCCZF/bLVV8FJgrj1kY3SBR5AoZbZN6n
	 hj2g+uL7cB8ZcxPkeH/czy2iTOIR1+3pDP5Iqhl9kir7/Mxv8yCG056lXgEXCeEm3y
	 TwzeE1p1cHXXFJgcQBob4j4uo3aysPmGq6bpjWa2oBsGcayKQL0yWSUKfgNv7qR0IH
	 qYMgFxmpgkjDpTTdG5uMjkj7PS73JuBKRFXw/lyns9i1nXw0JtGvszz6zBKwQi3QE4
	 c80B1ov1tMAyW3kMQBQr6o145HCdlEuYxXa5+8mV9zOhgVUVytxvw9Qd1R5LzmlsVU
	 urvJZDckdkyFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91281D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574077358.28358.10877318813692002986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c837f7dffa99b6505590afde820508edf149b592db28a3ef643684daa15458fb
Date: Sun, 14 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765740773
