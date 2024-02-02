Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1553377652
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706868497; cv=none; b=BOlm9/TTPuIWXfcLZ0Chapa73jen3fUQ02RDSbGLhRmSSGchExBrZ5dXateI9w07eBnIjBWV7aNiuH5kgMjJQN0YWVa05sE9PrMxFFaRiY0qEJyqupNjGIVN84D+J5qzZgIeDDaQVAy8w11fQAorTktZoob1h9OsYXPyh+rx7w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706868497; c=relaxed/simple;
	bh=uztNNfAEuhowgnaRQ3QT1cRs0VKZrfX0g8qmequG+B4=;
	h=To:Subject:From:Message-Id:Date; b=FyQqygyMb3S1g3X4/I6p+WmjU8buEoMcKsv64s38UrjtuuWl62NHKOB1zDaYfkEkbeiwLrfaGkLHtVRFO/c9HyMHIyANWbbm7HCKjru5yJJrtGMCBX929geineKcJFwHCWqA8i1Esv1vXqMNk1Fv/skDrdBS+IXtWLqFNonKyp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMx6DyV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMx6DyV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C661C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706868496;
	bh=uztNNfAEuhowgnaRQ3QT1cRs0VKZrfX0g8qmequG+B4=;
	h=To:Subject:From:Date:From;
	b=YMx6DyV8P7WCqHoTlGEY59emFYoNPShKetULDILPDJjkOm4myqH4Fll4OLSPf97oi
	 Qo/AodID6bik7MZYZWLra353Y8sb+o8ESBsvF6GYezaEZvZFPH8P45LDFXlfYLzvjr
	 PjmwRSJK1bmCzMV8VkpxlQk5OTgm11h4rMTC9q3qtp94aaB/DogIUvDb64CMNO+5p5
	 LrXJ0jrCPwLN9yeAfi9WT9bpi5f9W2pp0TXA7GVyJCeiZhegHMKfNN6t5U42HMpfGK
	 BnGlBurF3Xg3iFo/O+KxikirZGx5vvQl4jvSpP0rMPtBob4ZY2oj5hMctsSS/MvasM
	 6i1YuPjybrMyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E64EC48291
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170686849637.22315.11345259936387914988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39430d86b4e3fb91125aa781e8735d00ac47f5345ea0c654cfd040a925148b99
Date: Fri, 02 Feb 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706868496
