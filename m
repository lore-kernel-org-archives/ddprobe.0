Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD31474CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759288794; cv=none; b=juzRXY1FrWPd0+xfmJx37yVpMdIHB9vi9MxX2gVIHTjXXaag6f8y1ufCDPdJgU9CsgPOyQwPzLDdXx5b6FD0yTw8R21ItNephxpyvcBS/Y0DF4qmgGLp2zQkgRbvVAU+euy2DCqQLXcMei811YgBVnivIWRFkwnuTuziZ3lEtvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759288794; c=relaxed/simple;
	bh=A//xmoA9+fZMJpWX/rPMxWuPu2GzlJd/uhCQqV+PncM=;
	h=To:Subject:From:Message-Id:Date; b=M9ZVBNXbwlNcLmfXB3uS/YrVItKoSCa1RpeFC6QmLUxTOTOqbAdLT9EOCEFr9UHA6okmqvZ4B+tvu8Dt5JaU/lMyMZlv5e5GIBJuLjf54mj8t0Dh+z94vp4aMHqwR+cWeJr3mOyj/IuJ/Nqwn0IXpTUWGcMpRYDUgxAc4w6vbE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOIaBWqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOIaBWqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE19BC113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759288793;
	bh=A//xmoA9+fZMJpWX/rPMxWuPu2GzlJd/uhCQqV+PncM=;
	h=To:Subject:From:Date:From;
	b=lOIaBWqFuweGadUD2/5KEsmyAXmV7KPmVrOt6LtOpL2eKqRhHod+Bi8FbZ7YoK8EK
	 zHpLrZnmrhcinSeE5wwnZg3kI8cWtmqTAFrSCGliW9lblzWG3jk+Qe0CbmbRUAse/o
	 jHl4pgsRMkOcJ23KhnL4aZp+0HVDoMtFUIvwmnLY9ba77j7Hk75b3j9HzDP/wLNCNf
	 1+cNkSdQhBZZlZSjcXxS+y3jrxTBhL5nyBhdeHxQFOeUA/qBLoqalqs41N/tMjxXcs
	 Re7PYUlCCNBaeOp2cV9Qo7Xdg8pzFkrwKMr92z5yVF3N34aeJsgxo/Eex5x647Z8E+
	 mZBYFVB1FOLAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C35ACCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928879360.23437.7704322255724086665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5ed8af051a6efe76e9b5b58880ea8ff581f301aa4b7ab91db6a46fe52b3f0a
Date: Wed, 01 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759288793
