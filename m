Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E8719C540
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752205794; cv=none; b=X0sV7spZk7MGf4ZlXxRtdeECZrISqI8W2uBwSzOUY4xzBpeTTqW8KwIn+EObZtvDy/eo8gGdBacDkT+81RQek6x0tqs9vK6vXRfvwyX38aS59K/REl/IEw0wQTbOd2lgQSg8PxIMXeUknC1lxbseX/7MTqLARzUEwrPDQbc/Uu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752205794; c=relaxed/simple;
	bh=BV+I8IxJrXXAtx6WdLVE67X6WJECXKQugxUmLLyeBpM=;
	h=To:Subject:From:Message-Id:Date; b=MQkXVZyE+lhJ5LcxnX1xSgoefwuMSTg9WlmmImd9U41DDynhABZzsPf5jd36WI7Xjot92PEPMnL+rLBA+Yv732SLfd15RFUdDhDWKnaTNanMfZhZ5+OokdW0Nk1t+jIMcw89Qsd1qNEB0elw8vMO3slu86/AGz+c0zWMWDJrJA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbnjoKt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbnjoKt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D052C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752205793;
	bh=BV+I8IxJrXXAtx6WdLVE67X6WJECXKQugxUmLLyeBpM=;
	h=To:Subject:From:Date:From;
	b=qbnjoKt8gfQM+D9SeJU2KPiuGw1hW0XUFBR9QQirsE8qfz5ZECU4P8bbpaUEOlh3q
	 YHg26QXYcIojbAil2QlXh0n3WGFLUSTVV/QPKof8Pp8wr4LxIab0nnlHySpfjEUBv4
	 R8tMoARDHBHPi4e8352NE3U1fZc4KyzZVsBqBMnx6ijTz32eTfdGo60OkTiwSqj9Ib
	 /P5p9EDvna2mEmHNKBWq6HjedhJ/UHYT/QyoPDv/k5egmK392jOEm0jGrT12Ct1QfL
	 skxoVXbMtiX05zmxW1OnwOd7R2OSCkYkF6C8Xiin5Al9ra1M4Bs8sshhwQkTT3FWkK
	 P8jUIBllayXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E610C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220579357.8122.1804626552417319808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f8b68cd6bc968594aa7c05fdb518c446dfb65cc1759d136e249e08d176b4af
Date: Fri, 11 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752205793
