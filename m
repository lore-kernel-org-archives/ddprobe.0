Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA24E2D617
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779770554; cv=none; b=EFXiDyRlKZR1xolDzJEwSIrUEy0mxCZiNTMYcpeYwpPIac+Z7k0xnef1NTCduVQYTj1YHl/UGbLN0Be+ojaYm2N1r3CQKpkA3qQ1VCf02J3pu+EFyp5wHF13vaxhKHSxWArEU2Ucxjru9BXJLBXnedCvYVdTlTXjkUnbzjtUcN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779770554; c=relaxed/simple;
	bh=hOvTykUfcIkPiDJQFXXQJFlBr6J3/0nvg8QS4yOL4Mo=;
	h=To:Subject:From:Message-Id:Date; b=pOfemTUgUPbwKTg4gSHcfp9KvJWYkCrTVRlk4AY6s/QCbO6WHffJw8JlI6cJbXe07Uv/pDR2OePfPq3+DZRKkDFaOETrGAQV4f3zIRtvRRVHu95MZGvZfS/0VIAHc2j2U4OKKS7m132SknHt5c/cSmUfdOUUW4s53PrreyTUc+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+ROjX1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+ROjX1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E20C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779770553;
	bh=hOvTykUfcIkPiDJQFXXQJFlBr6J3/0nvg8QS4yOL4Mo=;
	h=To:Subject:From:Date:From;
	b=B+ROjX1Umq2cRipz7/BLr3B+O6liE2HOKo8FPzF594Sf8RJsX2icLrH8CwYwlDcVX
	 lWF5J7K3S+w5XR2Qog2bJvz2fMhnktdRFuqN14n9M1frP5tNZuwB5l+XA/xJaOlgIZ
	 mCjZ79vJl5kbjjYvArcfJhYO+NF2twqVPLQvrkPbTvJmuDB3Xn2UJ5F3q5m10vouLi
	 PcOiGTFta9dOcHhc06rgW5BzHBJpdmvZJbgxgU27f0Rl7hd9BnqmKm/+b9v2ivGPyt
	 xS0UbEJujSvkpOD9DmGdyN6DZ2RcRDEAuyJoF1nScMEkvteujIj/N47PR9hStfBy+d
	 49cwGJzMV2gxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7B4CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977055368.20027.16722940617939493749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cee51cf359fdfe4974b8bc292bbf45fd96318c36561d46edd8b939e5e2d8026
Date: Tue, 26 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779770553
