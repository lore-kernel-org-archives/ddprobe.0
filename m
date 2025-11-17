Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310A617A2E0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763357514; cv=none; b=B5mHVggwc9hXAcwVMgTjEU4x9fnFpnSelix3dmp321dUc/5iuzMKGt28053OxhNuvlLLvXvQr+X3kyYyvZJjXiPQPyFHyYKhNiXIzJykia81maS1erQBFR4IGo8YsDFqNEWIPx7ELYByJVT+GNynK+M2LaNyEKWPLICGYetH4CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763357514; c=relaxed/simple;
	bh=hLfNgzIJ65cxF8elpVqcJNLFdY/MqNoNYRkuvkXlyOQ=;
	h=To:Subject:From:Message-Id:Date; b=XnuD5QsGvLs3GV0CoZYXNJEvtNATl+zoikjjpYHe61GAh2dvMrKTRB3exEPZYH8lTBeRExWInkLy9t9p7rmrVCeP3yqOW0hhcLxiP09QWXE+Vj5K0uGaDFpPdz14CX9BYqGlhAzGr55oxfm1rl+5lZVBsDayLNibptVFqw+HMo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwvG2DRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwvG2DRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7F2C19423
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763357513;
	bh=hLfNgzIJ65cxF8elpVqcJNLFdY/MqNoNYRkuvkXlyOQ=;
	h=To:Subject:From:Date:From;
	b=AwvG2DRcsxHBn616Hn5ZOGDcYfr6cMv5dTXnhZ1L/0VuR0a1hrnMayfwjkohXnb5l
	 p3gc3lL4hFVH5b9JQ6LKzHGFTmEjKLu4PvpVJg7MZ2+cC1/Cc22iwcP4ylpcQ0gJsT
	 szWouTcb7hhRSPIETjT28RqJtCROcAdVyi+1UVckQx1y9u3rikWA1pAW6vOguV5ebq
	 HibEFaLVSc37WKTXbeQFUkMPZ4tcbATDOxZzJGob28WJVy8fyyS+LHsXMOjbKGlR77
	 2P8/TN+4aSWhX6hhfFlQoEl2cmksNR9+LI9h2H0fxulqe8JodzOFdEzp5MC9LLTI11
	 MjmtdhUGrgzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803FCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335751360.21269.15798991049383239527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4465e0a63a7ee398ebfe8956f06110b899aac2fe1adef89917c70e8d65e2b04
Date: Mon, 17 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763357513
