Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2D2186E58
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772958894; cv=none; b=iNqfGhE0yuaaMqittFkW+e4K0Qsf9R/LGyncusqcf7JHNhO8WknAznTRMAkonuc/ZifLqn/CtRCiD0h0l30VFOr/Yv3GpZNyqdgk53NRz0snKQZfOdzLWtUJeFNHfd6r+sgniqsg9bTFQKKoKhFBFg2XqRg4cshg4RqhH57Pnfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772958894; c=relaxed/simple;
	bh=F2duEeJf8nQL3Sre0HF9MjM4ZF3DCMODs8X27NFC/LM=;
	h=To:Subject:From:Message-Id:Date; b=ggTZf/p0nPGL99yvs2qpR0k0zj29GK7LUZ7Nf0EefIOSLV/yDvAIhsxn4jARH3eNyUi6DUAivw5W6Mk8JqqQQ+9VT1yWyjSuedYJkqdGV4fb21zn4Pd/8Z9Mir4GXa+aN/kSBHy0Fphv+fUuS8G4j2ZiHxshU+fD7ayTgU6ZNo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3NDAigA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3NDAigA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772958893;
	bh=F2duEeJf8nQL3Sre0HF9MjM4ZF3DCMODs8X27NFC/LM=;
	h=To:Subject:From:Date:From;
	b=S3NDAigAmh1ZOB89fttYCg6IMhRi9qER3iqV1QLrX6vDCEa4Ddmgq2z0QB7qfffqJ
	 WgF9kg0EHgkdl3UNz4lVmOJI9+ZrWzeL5Ha85hoLMxGoqwud3hzhMjAEnzoXcGoEDV
	 FB7A5k48aINr7DC6mQ+e7ICleT8VGuNPnOcmhdyTX8Hl4hPcXJi4Zx/kDa/B7OkUkc
	 C2xCVgxZjNplSVuWpWm71o08CG3so/tGpHOqUpLDCT4RRJheRWgosK5EfisPXY4Mwh
	 SjRbF2URpRK+ns0ebZfkXK9YqNhQxm3DQIrxKJD1uZ8fc/h2vurUMQX1BbRqNvfUS/
	 zBRddskCUXWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94763F55126
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295889357.20354.8022693906879840829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b64bfe647f327fdc881968e53b805d4b85672b89a8c2a845b0e0a3e388d98bb
Date: Sun, 08 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772958893
