Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C112036F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755296394; cv=none; b=taZULHMEc2YD+oSS2+zVDP1HHWCsu3Nt3C31O0Act8lWmXParZ/q5u6tCXD3e5iG7iwvz6x7RoKaRotxsZH3BByR9B2GWIUEzqltpqb09fV1Te21tLlfZUaD6Ey84IuZm4ZtOUJZoK9cLTpbdTASxz6cQdaQKGGV5pavj9WE9EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755296394; c=relaxed/simple;
	bh=T3GfSV4NybWMcmSs+mUu26jO0PWrjdeh7MNIkY2ZG6g=;
	h=To:Subject:From:Message-Id:Date; b=hbD0md7187osQ5EW0egEJzKua1eFYdJBoq4fhZe57oeeMwD9rAg1ogWtWoOJGbAsxPW5qVTKiKw0OQdlBaATpI1ckKbhum04NSd3K5leGXbBx9LyjqSZ5jtVFE+QXMBXDHNGjpVR6xz/tem+m2nDnRqHWcNj00x/23HS61G2cYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jv9GlVK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jv9GlVK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755296393;
	bh=T3GfSV4NybWMcmSs+mUu26jO0PWrjdeh7MNIkY2ZG6g=;
	h=To:Subject:From:Date:From;
	b=jv9GlVK7FIQSEp6JQprdrBKrB5gxRlyNrMuYRtiYKuqKjeFWc/iu5wTp+7qxxP281
	 2Gtr27xTibHLuyExn5Mw8zlJrEtxaUDCM3X+Q9fEkrAm1r3YTX2Vz72Qfb50lmgAVk
	 7PXVjS/kqQKsrjzHI3CJ9w8Ilc1DkwEc2bfzJ1nVW6KJeU1AHRx+3nWW7Xc4qt+4tK
	 n3hkFj8Pi5xFKRV27/bAPWsQBMmUv+0r5Cqc/beVcXjOUShk9dWEPsWzp+WnZxjAkt
	 qtSMeQ3pjW2ZPSHVIp4JVEOdPFWQcYUyxP4A3AMlRlTKThirSayqeXhuk7eyoOZ4M8
	 qgcdpqT+6gbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3CCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529639357.31418.15403122205029251553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909fbd51b6feb7fe5a6c60a1257251c786efaddb5bea3f8675df6f504ce15d42
Date: Fri, 15 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755296393
