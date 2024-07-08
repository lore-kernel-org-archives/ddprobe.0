Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A52C8C06
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720482383; cv=none; b=qORAGskDiW9+ZkHULnN/u+HXOf2pfnFhUsU/vPJc476wTH9yDVzBXpmRVlgBK6XZr7WX4Z9E/G7FU20kHGe+NyjcEkZNp+83HvLXkAWH/sDUWOaE8Id6M+YJ4LIe4h4B0MBsReHHlxDaC22IbV8m60AOoqYsQc626SUC1S6PMTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720482383; c=relaxed/simple;
	bh=q/eg3lCvkZ6JAzH4fun4siJIJTXmYgvqutE+jGm1Ixo=;
	h=To:Subject:From:Message-Id:Date; b=um8jGr0OJHFnwOZiBa0GhJA6CbXzNKxVNNWf8v7oYCGu7zCEhN8PWT1dBpv4lXtTKYxHNeGzB/O3Au5uMXUmceull/wAZIe41lYn0XYYbFrFShZVRowoI0r7XAC+HelcnsYC6BlesUmTHIQJB8RQ61aqBt6PKZo5A0hRp1V9CNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOgiLKVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOgiLKVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D845CC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720482382;
	bh=q/eg3lCvkZ6JAzH4fun4siJIJTXmYgvqutE+jGm1Ixo=;
	h=To:Subject:From:Date:From;
	b=MOgiLKVb1t0zgn7sEQ27s9V6tjhXRdE65Drcn/vTEN/2BhoVPyIRO2nwXr3CFps60
	 B0+TBdjdGaruMS9XQds4ygY6TOQOIsNKofb0KLEs4ajKW3SzYxwjZ3qDgYGCvuYNGB
	 MuI0JTqYKkVr+OM614OhbtNsBmd7Lc9ajl8mnLVTVRmlTs1nndL0+LsQ85oZGGLA6h
	 emk73OWb++sLoASN9R6nLMJFBZsSqzbmC0ST7a65cG48nMnHg/t3WRdYSx/wOzwAW9
	 4irh5m2AE0okqtpoz/01g0c2bdupk3Vtr5UYwQiqxmSK7uUN3dx48CU4KFKVQfdaSS
	 guXSoWr0hgxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B4FC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 23:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048238277.27525.2674860618395608405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ce2a3087800d7a0c15649259d39a86efccb570d729814a1d9fcbb3bc1ea531
Date: Mon, 08 Jul 2024 23:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720482382
