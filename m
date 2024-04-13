Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6E845020
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713030563; cv=none; b=aSR1qVJpWth8FUSEjVBUGZbvmiE4onwMcWdF3ao5jvptweII529XrgsdHIROzL2dqhep4+TkKvZEUQKHA0g3X1RKLGNwglHaRTo9S+F/kSGGxhVh429WTKJSJ8D7oIN6EpmUCTGha1ejstL+cqgg4JvAFVjXXzNd86OwUFcp2eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713030563; c=relaxed/simple;
	bh=gbsacaktP5GLq/PknAcvBjaq4qy9xJLGNSETokw6Y78=;
	h=To:Subject:From:Message-Id:Date; b=l4ThEAZlbWM0R7xwiZDR4NodfLLT7ssGZbwqpKUrG0s+vS+vhzxZi6V11M0cUmAi36Oru+81AKF4g9DVpwJ5lfcM4XJaTq75xNKTaTe8res2AKM4CWCPyAo/WV//PDRa+XpfZ3x/JIM35OrmBcZpyIMAuV0rv8TbC0d3NGRceRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoVmu7uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoVmu7uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28BAC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713030562;
	bh=gbsacaktP5GLq/PknAcvBjaq4qy9xJLGNSETokw6Y78=;
	h=To:Subject:From:Date:From;
	b=DoVmu7uqXGi3vGq8ldR/7QKQ2pAkV02ooGKk7EV1H4eXSuTq2ehWwEkfNpuuntRBi
	 VmpW3LFTv54Z6Gna7+CRkZqSf5xXC4jodNqFo1FTulMGwDf+jAk19u3yPMdRrxoOQl
	 YSNUnwVsrJZV3LWco1gDvxc5IS7Thc/HCF/BisbBz6mxfgOBdQHcofwksHD/xQ+oit
	 WjD8ZfBIkjkVV+A5KmgSRFg+tyQiV8ZJMNGF5O9bjN0P2HoKHMRe6h+VlmF/0yNiti
	 alcg35drbKA7Q1V07abWg7PQo1nGZPIJsSxqJ9M7ID8UrAoP22+NbyXKz8ggREH/mr
	 T/DedSr9xQ6xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA89C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303056275.5712.9751092526599187636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4927fe01f1ad1587d8e7ba744365a34263efc99dd0b8fd6f9ce160ba195c256
Date: Sat, 13 Apr 2024 17:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713030562
