Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150A22853EE
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758602995; cv=none; b=BOxLlI8AjmreKORLoiw+f6jnfRaD1Gr0n5j8aioD/uYejh7kr6M9MnKCegnXfALWcgCHAMimN4FSJJ/WqfEXDYNjopu4MPQw6n8qDeB91C7/Yhd/A7EnRc/r3UDVF/HOOwlT7C0giqR3DShAZkGdnYs8jkPw633DsxyrfdR6eSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758602995; c=relaxed/simple;
	bh=PR4tMkGy+0xMmG8RI4JKq8E/cz+O9bD9ZC/hEkX2OLo=;
	h=To:Subject:From:Message-Id:Date; b=pg6MhVXcv4DT+NR4oSaZbhx7LkuS55mlTwOWN/+w+tt8SC0ZgGVqozZ4ckgbt1Ssi4JKnRjcY2x4Tawelpr9p8cAQ6KBV/9zgxWxOi4VNCnbLa+2UmhUPJqWM38/aic8a1F81XxN0c6ezpU1dltjXEb98dtqrzw1hdX7n7J0WQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+dutguc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+dutguc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C3BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758602993;
	bh=PR4tMkGy+0xMmG8RI4JKq8E/cz+O9bD9ZC/hEkX2OLo=;
	h=To:Subject:From:Date:From;
	b=J+dutgucA1/GHbCQa1+WMZx6Kll6kS/raUcmNfGuaHm0DE+jUGfPvtwWJNRssXQAV
	 zN2hJGMoASzpA4NrYJnDxdxbwdTYzuZW87/3VIDyOrasfsetMQnN6SL6QerWtbUDbF
	 gz5Bs++NznZQvYsHh5mWKm1rtNaC7VCwvfds7ioIc9nYRb7oRSJjkS6WE2o546L58h
	 FSxjhzoTdGwjFviJA1/gmkrfyMOrm/1udptTyyKOhxqYsMa6jOPEjszMLOq01AyDse
	 X+Hbqk69RMu+sun0yX0Ak3sG+2PttGOkYIHzxLn4m2s/4j2YOuVoQG6Z79ryqkK+h9
	 J7HaHgYU5FMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158DCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860299357.25943.14237771046403615400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d454f1f359ca317c5d1de3d369f141ac518fffd7069b585424346116643b3d
Date: Tue, 23 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758602993
