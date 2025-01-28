Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC191990C3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738074954; cv=none; b=N0cERBOeh69OKoJNhNtPJxcJhZsdBB+tKNy6w23s5L1ffK2g69o0rlcYxO0F/jiS4UdhYFFdkfWDFplBP5HHRKjhlmRB2y+ikCaIj5HaA3pslBCvzTpxJcIjlX5I/c7FS6j6cZxzCeejRwWVyg+PFB4O6S/do7XUXru4L1bC5pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738074954; c=relaxed/simple;
	bh=bwPgOtmJlBxg1hmZGKTDZrYHk360eHTcSkHdGzcPcO8=;
	h=To:Subject:From:Message-Id:Date; b=REkqhhrqOhh8Q/ENos2sMdaihTEvIZbv0ScemwRgJfQ+uBEXG2q9QfsUrMblJMKYDGAke8PZZ3Y20OAu7zWlW6n4Uo/XpjA7Q/lMgnjAT1CM3Z0dqpXgVl1t12bmPlbdtKSA/lgYibxCGHU0Pl/4XK+dRoEWAdIxjfsE4woK154=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IetUk438; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IetUk438"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52F2C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738074953;
	bh=bwPgOtmJlBxg1hmZGKTDZrYHk360eHTcSkHdGzcPcO8=;
	h=To:Subject:From:Date:From;
	b=IetUk438ArmGgQ5YUbrvEv6EcNixqvTnpYaUzOB+srsNJLdR7o25FWSHa34sH+2hb
	 Xyf6AdYWhqoy2rBHTzlrSwM3LHxU82neICXpBYgMxs91pItzBPlhyQhisRfYrzTHOX
	 1G9H19+2oMDPdwHKqGMHzxjBCzho9/aRE0LDeqQKywyk4RIDaMeW79N4XqQGEpChgA
	 GoAEoIOKo9MzC/SWhXLlSRe+jOsZfMJ2uT/YuIJO2QCHXbN86DC6e4/uX/Y92M/Rnp
	 +Vl5GRKklhswvph72ZL1vAVt4Z0Js4YH3rGyvChYbc6ndA2hQPrY0GD4f+qk+GUVMm
	 CaDpyYFnQ/F2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94850C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807495359.25516.5618466808368197438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fca39e256d03ef96c64b7c63516fe40ee1814961da4dfd222e6657afe6cf20e
Date: Tue, 28 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738074953
