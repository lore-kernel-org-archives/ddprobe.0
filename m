Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F70514884C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765780374; cv=none; b=l634F0JKsEvWlNDC6yAbM0ns5R0jkyJfDNesvS7pfeN1vLXM+UHX+BsQgzBgo7JFkCLWr8sdZmnuunpfnca2MovuhUI6X/ZTttPoOOxYO9KrzVy6uE4uNDXS3Z4eo5ik1AoGhUGPi1RtVkf/K1VOSLVnbJ6MQ5k2uJvVcW/cZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765780374; c=relaxed/simple;
	bh=N64bKI00rwPKG6Qj08vtdHJMCOS5gwOWzDkakGxFBDQ=;
	h=To:Subject:From:Message-Id:Date; b=DjvelykBCwZYwNBMPUueSkZ0lS5zixAkO3m8TTwWQZ1CiMAe314AYv8/Msi2CJSOrpvB6RuwlaT/ORDxblVdvf5nDVosb/8eumgsPoqmcUtTFOT7dIawus80OLmcrm8kjqPVXKiorRujlFHiTYzk/8RsF4wEjdaR9Sz20mfOlek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCP67KTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCP67KTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF047C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765780373;
	bh=N64bKI00rwPKG6Qj08vtdHJMCOS5gwOWzDkakGxFBDQ=;
	h=To:Subject:From:Date:From;
	b=FCP67KTS8aNBYGyIRTghictnfYM5p/6i36gVIRAjtwLLVfuyG0goYpH3GSDaz+0bH
	 +8M4ChMWaWKizO6N2uNXRMib8fxMRps0MK+GoV+QvvOcT0Q+sn4F+HJxqDPOyAJpiQ
	 mVdohKC0mbg/L88UW3Sah154KvSGNHYoWxQPejQi5KxedHi0lulZgwFHKsN6zBcwj4
	 PynZm8s6eK1DMjsC7WVsRjAltlrXEgUnhzDxemY6tDrqwgxFgAoftU84jkodWQ1Go9
	 rulqb19jHGFWkc+ybnWcvwL3jvO/p/jZNiCczjGgwqEqgiRRra70KLZk8q/DGqUimc
	 KyLlbXSYVEPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E22D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578037358.9497.8377591823115161926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7b01b13ddd79c12ff3c8f9893c56b0f23b7eaabae078209758a4a685e896df
Date: Mon, 15 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765780373
