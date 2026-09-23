Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A13238D406
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790130034; cv=none; b=CYtf+mxpWV+h35NSRGa9jn0j+SexXEcAx49PfAFd/GUpiQmkfOtLSUzgddoOarjloWUxZUN+YwOh9WD621q+ZSOss96GYecEC6qK3KJTY4laA5sv/XJ2hInSoXOk1+nCKUJ5nzPFcZOVAoOamR6pJm5nsYYx5SSYy4IzSk0WhVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790130034; c=relaxed/simple;
	bh=CG8VMM4ji2RmAQ+wvEdoldtd2raSYplnRytDugqCi2E=;
	h=To:Subject:From:Message-Id:Date; b=SDZx0D2bmyy8+mKtQxzQFPumjV+wJWhucmoy9Vz0Ny19FWrMDyUrMDIAMmROKnC5GlPVcOXVJY/yR8SgjAUHRkiD2ep2/nNpVlgGWxyKMMHwmMb7AqGkK8QOfL5da0UXfbS17VaAtYT395Ws2itWpwtyOiRl40EN/1riP4uVxKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odqBFhlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odqBFhlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EEBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790130033;
	bh=CG8VMM4ji2RmAQ+wvEdoldtd2raSYplnRytDugqCi2E=;
	h=To:Subject:From:Date:From;
	b=odqBFhlJ+QwsgaubDR6VEE6WnsYK6C7OzT1RYAxKzNLhWKpwFWkH6o8di4dgwrxNa
	 0+O8Z0EZzcIKnShTIRYsZ/sxho2EEh1mkSGciYLEpyNzme1zpTwT4o1XCejkhe5kHd
	 k0C9j5YGf1Xtn5i4Rw1TYFFvDmusAjltIFCYxVaXR91a9v3WQRhQuGlWzjZu1g8YrC
	 W0l5VAlvIcE03nHIkWCgvCHmGX2Fl8FibX8nqJUuBvy9z28lKlhgpSvyyKyBfIFvsO
	 uOy6LaNiejFUcEKuChWssNlsZ1s2CmenTlZbnfnKRpjE79X0ZXYtM4v8Qr7m9j1OFe
	 uElwUKo3DzeJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE754C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013003370.17277.4314903057352224383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed36792c837be5eadb5ac8c5d13f0a250db48c6fa5a8183f32f9a81f7d4b001
Date: Wed, 23 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790130033
