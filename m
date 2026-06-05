Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED8B20FA81
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780691074; cv=none; b=VtkKz7o4enQYkm+fjPgbMFUcYl6Uiwq5KwJNKXAQnUQ25BOw1RpybMJ1+p70nSabEFvkCVJ54J2vScTDOBe/eVy9WWfuvX6Z0JCo62ulkxW3Lb7wZv68qNd25pjHAJyx3mMw5LZ/6W2zFf4Kx2T63sEFMGqxMtNWyv0gv3Rf+2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780691074; c=relaxed/simple;
	bh=TJJAP5JNZlWAOUEBEFCjKZkbY9FlDnxbuF/XQf8bQe0=;
	h=To:Subject:From:Message-Id:Date; b=WVCHmEenRjr8pGhEre5TZOxw57WW5RhF6yxbl3J1LA8M6gH4hQWdBvBnlvfhR1yo28yx2fkafr5LZkIgH0WubzpUd7LgQY9z6AnkveMkfG5q5OhUMayw6LR8ykTX0n9dnyd9/mhlX6ncS/xwn/q8mIYim8iDdBwzTr0jBGMqTeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpZLveAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpZLveAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF47C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780691073;
	bh=TJJAP5JNZlWAOUEBEFCjKZkbY9FlDnxbuF/XQf8bQe0=;
	h=To:Subject:From:Date:From;
	b=ZpZLveAZUcv9kOCQCEYFQVsLTR8bpS2ulUhsp+F6Ghic24uTYSuJC4jOALSCDKc2t
	 Jd/GJDr2F/O3MGowUSJqFJvuejfRbJIekRt5OsXs+n0yqHJZo+ZmYQRD6zVXLxFMkD
	 xicStC9s2Llv7YFoC10ia+Jayu2N0tSA0mdGFT/KWvwrI0FahH5JXu360/7zllfMZq
	 6MDPBNGjdjxgGVdsmBoOV4rK6edMW68BpRG4XlnfVeARgqVQBVpO5LskNTLfuTL6B5
	 z3oEL96s8QoADhHkfGJve086QCF0BvC2StJCgbd/iQqbecV1m1X8pc+iaECYTudQ51
	 JPKhs+diLrOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0176CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069107374.3730.13648352750898010092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea43ca2ac11de96c6caecb64fb37ab581aab97d47b5eb64a04bc761acca9d7d
Date: Fri, 05 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780691073
