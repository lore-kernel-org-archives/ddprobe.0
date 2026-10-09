Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B7E3191CA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791548434; cv=none; b=q+ml5Il1G5pv1xJk5cHuw3PvhXQoKgHMbYkO3h02ufJwJ7gHBMyBAikWKEs56wcPV17/4A8ZkqLO5eovzelRpP5sEGR6Bx1GfWk5uYwl5jDRm1lL1FKm3UsRggwekWn8FC3ssEhL2puIcYFoaEbyZXgwPq8uPPXs0K+bqCYwcDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791548434; c=relaxed/simple;
	bh=VpwmgB8ediUmfcxXCMVBASe7t2maYcWq1s9oEuSzKZ4=;
	h=To:Subject:From:Message-Id:Date; b=lIiDZ5w/8tSGh33XAPl4MHy5jreubDap94fcNKCK8x3930qV8v2LQU5SWK4cJIwwjZH4ueSt2di1NY6fL4h247dKFQGIRD5uhF/lzxhbxIQXnBmidJk55BkIf6h6RXJOV2xKOqDGhYoeK4Po6KhS26lVVd1jdqGF0YoqNKFnnYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9iFZVbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9iFZVbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8D1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791548433;
	bh=VpwmgB8ediUmfcxXCMVBASe7t2maYcWq1s9oEuSzKZ4=;
	h=To:Subject:From:Date:From;
	b=E9iFZVbir1DozYg+rr8Ip79XerJoldMaUmKG+AkO7yr4zY9otKZxes1kkPYecyACh
	 AyE/iZrBWZZdvHJI71/AvjU5KouNB0DNdKevY/UGAdexZxrl6XwV+SctrUREhcXzwQ
	 UMJcZXTku7o4yfpbrBKoB31b8itcbERWiDqjFEEGP9VVLx4wJsjmXxSqwCzxDezPxb
	 catP3ZRlIO+bCSx9MzLUNdB6Q9WvUyhXolg8k6caBFsACQMVixhS8miS2FFxoa6Fss
	 WI8OJXBbDRr+cRcEjLlsYK+dWo9ic/lBBKrkz+86ipPmdOSYFIiJpfnZZwQLL3yG4b
	 hkJtU1rgoDiCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E8CCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154843375.16127.14346825502478059698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd87033107609787a567765fbc348db8d61ed0724fc59157e55af19656b458c
Date: Fri, 09 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791548433
