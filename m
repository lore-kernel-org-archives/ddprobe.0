Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDE5154C17
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746361794; cv=none; b=KxGbQsfIiBhc6vwnWR9OXDsBbM0qpuPvTraI1WN3xkOG7z4rbxyf7IL+3BV/RktQWuWRnNKXafmOSk2IGlKz5wXBdhAxmnhIEOuaJ0izuapylNOggU7perOCbnpkCQh/V/7mwSCYCNQmwoRtqHyK/icddQ77gimxNcD7w3YDvrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746361794; c=relaxed/simple;
	bh=EmmGYk9mqlofTz2YjsS+pQaJSTu29XZpBwBICL3kNX8=;
	h=To:Subject:From:Message-Id:Date; b=HQXidzoWbpPtn4+iR3SJgCg99bdu6nt1qrVhr3YP6A71BuHk4Pgbs+xm+12MySNUXBjfCh/6vCGmYLVwQMDgLsyZarF+QVGPFxf5lbuuPTEW2FMKmmpkwh6OV81Tqzw5ytHrEiZ/zAep1mZZfLYT4LEo8rNGS7C6u3jBxgCziSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktqII6XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktqII6XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C01C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746361793;
	bh=EmmGYk9mqlofTz2YjsS+pQaJSTu29XZpBwBICL3kNX8=;
	h=To:Subject:From:Date:From;
	b=ktqII6XTHJrrJZqqfdtNnVWMJTSIKBmWN5eGo/Mf1+AzVW+jzCekoKrgFS9Pn+YW5
	 syG1XUOf+sxnowaNK450N9rkiCnq451yFf+PgqCu1lHxtV6mJGB2/72Qvl0qJ6SE+Y
	 JiEm//sLfFJiS53qQsTuJrIQnWKk/PnQF9FhYEd2GHa0zsRHNJMKj2yR9KWLcItrk3
	 gWIV1hD4pxeILdECqF49iZVcSZvlcslaU0Y1Vo/JsHYc7ToK17rgjAT8tc6NhD3HiV
	 hTv9AyjAKhxjHn0TIZq2dLHCq6SY3aUlmT90XBzQFt5YcM2d85nUyOOkR8N9GZhXQ9
	 PzLppZPBGFFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3AC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636179357.15742.10796355061419782321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cef30c9a9976782830ae596744948b9647c9b1409f4cf504285c634736fb1a4
Date: Sun, 04 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746361793
