Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AE32DBF5E
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755022793; cv=none; b=Dbb0Ig+rcPRMzDdDdKProMykAe8TdxiigWCuzp/zm+hiXeSiEn19Gh65AEgULlyI9TlUPSRlHFq4U1dPmfxPhiHI3C6I9n2WlIzWPbiamGlxN+hVCi6pIzg9nYMTnXM1GhFYLOUYUYPVZG2s0Z+YS0EkJ4yBfv0WLqv5xGT3Y2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755022793; c=relaxed/simple;
	bh=1uuTt8BLBwp7L2fodgRJ1roHv+koDnvOUHxvjHzwe3U=;
	h=To:Subject:From:Message-Id:Date; b=aqrkV/IfwRaqfX0gvGePk0vQD+VlMqbAfN1eVHj4ZGwNWClKPz74K4tacW1w05mPXQbsLNQeWvlpDdZI0mfCh1oquACwPlJRBLRiMZ46fWQt8Ohd0I8wT6nGzYqFiKV01yKqrLJGpWiRrHCwcfI/5uqHY6tEUKvnolTKdkcxGl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZXVRT/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZXVRT/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94BB4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755022793;
	bh=1uuTt8BLBwp7L2fodgRJ1roHv+koDnvOUHxvjHzwe3U=;
	h=To:Subject:From:Date:From;
	b=AZXVRT/lqv3voX++tBQ7maI6sZNBJZc/HCa1y+d08W67NvvHeX5FG58N4Nf6AGxG+
	 m1UMpWd8+JfcML8wBiKQuFsxqMVJ+HhP5LaLWv017GM3rTdZwRX+ooU94kywkN85//
	 E5oVRGuuqKZi5a00OgoliMhb171gQIuyfo8uSz7d6a+ijs+vGMcKK7govH4AVwWV9m
	 SHNnLOhR89Qv2tF5JRldouJFGrreW9TJ0+Ae0lmXkSDP4VI3rCXQw584NYv5bAfa87
	 OvR98zOXg7WhC6c0R0D0PZLkDPf+P1q003/gmvVVCOvf5sDrDMAEPr3ZMN0m7qa9KV
	 KMbQfuKt4EsPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E10FCA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502279357.17420.854412937692224468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0d5330280c9f06261edd2193a63477d9f6e59b65bfbb919be390a88c366e01
Date: Tue, 12 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755022793
