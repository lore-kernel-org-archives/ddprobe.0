Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9CC1805B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752376794; cv=none; b=FW8U9ONdU24/AklrKgMnpbka4CZM3E87PCE7V7hCUSy7pev0MRNCjv4Fnx2wysnY8a5e5kzG6Zoszbi483IwI0UVit0/E7pwGAmSpfNM3iPbZSsQbyVtsPEYPqMpjqPsaLN9c+/9qYrWf/r64meTGqPNd0Hw+QjDj7zcCrCl/4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752376794; c=relaxed/simple;
	bh=01hdGxLjwXmM4YNyfRwA4FEO5PDfqC5uzlYo37o0GBY=;
	h=To:Subject:From:Message-Id:Date; b=sRIf7voLx0qVF/oPF+KQ/zua8PAplXT7gdkm2H75ZZnbDcRmG8wN52CgMrWznxg48smVbm9xOjxTOCR5/oW0KDR2IjmBn/bJho2QMLeM7vYumB0D/8CkjIoDcYug71zw8NcGpMCt2A1D3sU8K928vWoHUxoZY4fXuCMwceWoACU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGsCKZle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGsCKZle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4879C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752376793;
	bh=01hdGxLjwXmM4YNyfRwA4FEO5PDfqC5uzlYo37o0GBY=;
	h=To:Subject:From:Date:From;
	b=cGsCKZlesmuPNvWsSnZvm43jEXdGT+yp9ulPinC/TZ5yUOsCb+LhjBdVEtYJ6g8TA
	 56gBdpNJtqzLjyMAW7Pu3guz9078tprdC957bflIGTGvfpFCnkJrP2MYljQG5NyS9F
	 gLL83y0ig92A6DrLeCQqk3ymCUJHH6Bs0f5KoO0DNjR5gVAaMwv+68RkW9WjELHDrr
	 xSuBx9U0jS1Enq2xwXnLFLpQCLHuOsljgLkWLCVGt80+skQaYtaae/zk++dfgXD4CU
	 sBz/e0aVqgqrEN5MQ4JLZwxU+k/5xwGvVPw/OVwaun/HNB8DB/5iQ83kKYDFlVpl8O
	 FE+hVRG9UBlKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987C83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237679357.31892.15320733144820829523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc3364fedef428db8f517f455ba08a4f9b1b1a09441adab61f14872d9975709
Date: Sun, 13 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752376793
