Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F88EEAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727504154; cv=none; b=B+hLm87S9BLq7SX3JIt6vhRbPLWoLpFcp0HgLlyXX+i+giRM/qKfi8H0Hob72atVDQ7XmtZ4Y3pnMzqtGhwn0IV6KCE3BzVPAT4JMqzNyCzSGA6GCdsxBn1jpyRfqxe/YTiuUCNCGqde54671OMkhayGf9S8/gj1HtEzPeMRVSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727504154; c=relaxed/simple;
	bh=qNwCBBuQP/4ipxJEGUd7TTMtiLEcKI/4kVhLSmCh8Qc=;
	h=To:Subject:From:Message-Id:Date; b=amUHxGx+3q+pQo2JNbGCur5paTNkn8Bip08eWG6dXMYqJ3Nk4rmO2L4CBZf0sL4Y5ZqdvNkwzYdAL6u3H5YtcQhAHe3WS+OZ+R7qsnYDmMRQ534TJHEijGWoxHshm5VWf+2GfPD5huUCPLvoIHJkPztNeQWXV4AClJ4SG7KeV7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+OACuaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+OACuaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA30DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727504153;
	bh=qNwCBBuQP/4ipxJEGUd7TTMtiLEcKI/4kVhLSmCh8Qc=;
	h=To:Subject:From:Date:From;
	b=o+OACuawU3e+7u1VmjfLkqvbOtouL/9huxCHlPkZnvEtmcr9YiYmdg2TvZeuzPI6V
	 yDERUaxxq/06Gk0zOw6LcBdQsKF8XSWmaQ9aLGdbZZpbkIgu1z9/iHs2jQpa16ieqF
	 c7NqknlwfLdFdIQ1k6/JNq6tkvCQgDaHMd94KOy5CGhrc0BvgxEtLHbTp/Cw7bwD1q
	 IFBL2JS735V+uZrANf4LAO4KEJ60mrZRG1owQBsEf5eLVplMTHcNyKBM6e54PRBixl
	 96q+270CXikxyEJCknQMf3g6URpWfk5KZRUidnN4/aLa6YeZ4H/I9W+z8bulAaoCWA
	 8y2GJ5UBaX8Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E06CF649A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750415359.3909.10240919780041579292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb9ec83ff9f03219497b2132741c8a917f53e277eebda92a7332cdcb1f68a6f
Date: Sat, 28 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727504153
