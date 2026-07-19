Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A152EA481
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784492314; cv=none; b=sSgoOB77r+ca9pIbq3/d0v+bmGex+pE7yEHAjym+s5bYKfmu7bbzdkJu1+50fzeEymwNVo9UEs6HlmNQg9A7ZUSxHq+T7bhDFTyet9jGS1jJaub5QfwrXFIMIkAY1Fi9uih+jIN/T4GxX4DcMMC7XaBw7VgKP+ONLRoqRAxPbWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784492314; c=relaxed/simple;
	bh=XKKsmnvhKgBE8+DpjBfnbzOlFUxHjjnps0CQL9FDnfs=;
	h=To:Subject:From:Message-Id:Date; b=P/1a4eOEa1HrSSqvTSHRg7hE8ijqzY7DDcKYpcJf7Fqf5Un/cMp++RJAL8auTjvGSI+AIjhfsOzuz5X0wrBGS7nIRhFUt7P027xJDIOVR3vr4dqBsVnyXQDE7JUEDA3NwDS9jXcMh81Dep4d2EYh+o4i1bDHOU724r3G3FwQmKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTEgfdxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTEgfdxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ABCC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784492313;
	bh=XKKsmnvhKgBE8+DpjBfnbzOlFUxHjjnps0CQL9FDnfs=;
	h=To:Subject:From:Date:From;
	b=GTEgfdxu8DOw/zjK9rVYCpYQg0fPwnzP37v/ALAg2rgok+YWJz5eT96RSOP8r+GxQ
	 BL8/0Cimp6cYdOuahkbrFJ0lMHNoiHpWpNLtDmkySb4T/CREFii+lwnRGVqgzuz6x3
	 9gW53KtJ4l+kgx2nQ1xBbuaVAl2ywS34GvZCOoNs0akE0u1J6eHzFB+gx3vilUEo1k
	 3snSi4g2k0ExGH57WJ0rjuO4o0h9LN8alUuksOmlEWEbCcGjNbNcIqQ5X3XCIRX2am
	 wsoemWGFI1+jizxAEv2IQ87qvNqe5oEpI7kLZmkALXkVxz5DbhF0dOtggycWVG6ybj
	 aSDYpDk7BIVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C97C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449231368.21422.3801701918929542379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b1a0030c1abf437346f859b15b65d7313e65b0df2f9400025227f1ace620e2
Date: Sun, 19 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784492313
