Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343EF8479
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763868114; cv=none; b=NoasoCQUSJkSRjXG7vkWGcvp5Lo/fdOPbHJ6PYgkMdzzBQqDuQ+9kRJfQdessPF3ErTcgTFWe143C5fyqqouEMu5KbbaP9K0vDn6OH+Z5ltN/2V2f4WQg5M84XGAHJC1M4QltQU36KVlZDwBX1VPUxRJbx40XH13uu6N6Mbu+9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763868114; c=relaxed/simple;
	bh=OkiWUO0SYv4eqnEJUwZmxKxsQlHZZuUH673eu0fp00s=;
	h=To:Subject:From:Message-Id:Date; b=OChYn9ZoW2nV/qBB5aFRQawrGRdc1Ds5xUDT/2b4Q45so1aEXXSImdx6w6dRTjARh7UgGsS+3Zv1+ptJ6BqC4OZ0Zc2dQgPPCwCdgtUtWyDgPS6R85+FRGjzDRjcRsgXJAN+ZMvIae3U6F68YFPDS1N9TAJir+JnQjwikraRhBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+0RxsRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+0RxsRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FFC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763868113;
	bh=OkiWUO0SYv4eqnEJUwZmxKxsQlHZZuUH673eu0fp00s=;
	h=To:Subject:From:Date:From;
	b=C+0RxsRtrgRu22tpY3hBDu5HQNDUXOMNDcvSabH76DbXrIFw7j/BfWbHGVKe8TYOn
	 N4Z4gNcWQ/SRtZX5LgNGwQgtEaw1MiXmHW5f8YjjuPabXFUXsGgTFmzmQHg4vHGRyR
	 +SyRW7bdJ0XgdFfXgeFz1hItsXADsuooBQxA7R89DhzGXbHeBeJSuvwhKk9I7I7PJx
	 RDoR9rgycF1I4se3NZMvIV4thTr66HwpVHeCCUQPY1eiNeuTmJGSKeU+WvPOy7aXXG
	 eJo9HPCpmuLpbN6fE/mEDWyGxLPuXKCOF/ARKFbNjpmHiRCnZBKTMtr3VnfW3x0NJB
	 Igmprz39OATrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C2DCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386811358.15913.11765075538296687835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbee71779e1906c9d671d365f64713273b681a678f2dd41d7834145d5256323a
Date: Sun, 23 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763868113
