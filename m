Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FDF3090D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769820234; cv=none; b=HfBqXYpTuqS6PDyrfH72fNy4j0bDfgsNJjSJbNGWtvuOtjhX1lwlLhttNSOSNAwQh51V8fJ/lz3jnGNE7mJHVJK9qNf/cC5LgHZidDgHrFRGWKsB8gIZnE9dBeOK1d+gVQEgTEk4OKHJ9ZXCpwZrNuhuo4J5HcX0z4xWBqx6eiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769820234; c=relaxed/simple;
	bh=qtKocsbEkBKyVgchQ6LpgQlYuYaxWnwe50povyltMsk=;
	h=To:Subject:From:Message-Id:Date; b=tXjmh8xfFW4DM3qYFimznMkPnvU1eKB8AdWX/SIJBW4/LgMJjz/aIOQ3amDjgz6jDQARZDqoL/NS3croWcwJLZBRMkYh9fs31epbPwRoGnwzFqTHFEiH2FvbBfPhZM38PLwTHn8+F7Jx/NN8gOm17Ad8N4+NfqFwEnP7HREbHao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwRe8HL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwRe8HL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5820C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769820233;
	bh=qtKocsbEkBKyVgchQ6LpgQlYuYaxWnwe50povyltMsk=;
	h=To:Subject:From:Date:From;
	b=KwRe8HL96ekqMRRR4dJFzPaGI7uKBMZBh+VlErmd9dBqGJZJpMaOKcWkVCuszoszG
	 U5RNPPuYLVW3R7R8qeRtFwWMIog2u/wz6xPoNr5xxZe33f7A/ouTCnOF92CT6lLETW
	 C7juWlqtaV+z37PeZHIPCO0/MUaFUtKSbbqqZSPOuefiRV5f8rJYtH5ADGhEUw2/9H
	 kdEGZCrmmr7QoEiJFtH3YAqygqSgzGnaQFqKmfrjh6wxKZcCOAeMAwOWmnMHvVcGws
	 uSSNEgXxQnIi4fcdFpuFDS6/BYFXXm91c1GfS3+QczxNmj84IAaEJD8ThfYd9RjGfk
	 Nf7gAPNzQ+Pkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B8E6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982023357.4090.17974627254906396402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6db368cf60296829d13f28ba01e4c5480d2e4137c9004bae8d10b7145dfc3b6
Date: Sat, 31 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769820233
