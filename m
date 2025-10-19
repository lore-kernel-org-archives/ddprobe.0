Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA2F134AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760894394; cv=none; b=r1ikuw6XU0P1V54+CJNnbfm+yUlZRJ4M1SyjuW4GvulPa6atyokH463jlkRW/Nz9FDPspwDBI4JM3Uv65xWkumDZfgy2E1wcGpFoTPx8Cey0+JqVK94ulfSj8HQsoPi1hm22d8GDWVgF/wXuarBtQAKmmOVXgaOgLoeNaFQIKKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760894394; c=relaxed/simple;
	bh=jirfnQ+8aOdIR78sGrLjJYCBH5Tr77d2anF/QEzcAtM=;
	h=To:Subject:From:Message-Id:Date; b=TC6gnVe9bbJsk1X6UegNSKQFSPs8lbz8aEmHriwqwuOW1EH0ssDrfP3NwPO+YYTNNwtgAg4Eoet3RHKNUxEN9PE/4vTL0LJcmZvJhOdSuswXRTqA+duux+I7+VJEhI95WDI7A3OWQzxafzf9dCTxXZUkUuVrrWjB+FILLVPAPEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psGrdMVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psGrdMVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA67C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760894393;
	bh=jirfnQ+8aOdIR78sGrLjJYCBH5Tr77d2anF/QEzcAtM=;
	h=To:Subject:From:Date:From;
	b=psGrdMVVW0tz5c+ijW29GbZsvVyX7HnsdLJEK+By5XzIrgfi3qdiftcYRXTrGLEau
	 rjFcltKGzMarryhGiu+aTWRlHRYVoBbwjj1mC4uPQq5xHQNBdrJFmUX0tti4wHIU/S
	 pmN31r+x/0lGhz9n25M1dCOdAXR89vTmZOz/eR7c4CePFqByzG22fqXqq0FtCnojV1
	 Fa+6QaKKxMCVUVa/qizphMGjQB0D+bl5gnC4wik4CVJHwC+89Zqwcg2hJlwogBYbTY
	 D7h8c6v5IyCUzv987K7crLmTd2cKjSYgo+xCJVfhpiPyfj1bVgiGoCAWCoVMU3gFAU
	 GuHhjjg4ABc0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC2CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089439358.8299.3032763809453486207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411a55b61465388747c12f7254370e3724cb91ef6e0dbe6148c46d1c1caae2d8
Date: Sun, 19 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760894393
