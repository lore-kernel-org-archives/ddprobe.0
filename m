Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B144A71C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780506874; cv=none; b=Svf0VPLvsOz9RXZ+7mRvbG+DTP85ew5WtkiXjIlCBNTlm66erl2mfZnitG/uAGS4MStxB5U5YnKXcxDW5/7fneFOgQRMtZDCD2Cm7p30u0dUhUwj8siwnB/6jpfgQJPy9Nv7u7L8XNRqNiPpmletJBDy/Uz8g5wOhlYhG1gd0Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780506874; c=relaxed/simple;
	bh=C3tyuJW89o1qgxZ+5WcDNZvbGrBqPaIRrD9rtO5mmww=;
	h=To:Subject:From:Message-Id:Date; b=Ni3hanNI00g6vieUaP9WkUJeJt6CZT5vuA2GFDvFVfaXSgvsh++F6DDwgTjUhSjdvmNbTL/u5JvE8sEKyc74JnelK0Km+r4iyJ3ZNYie7Kt0JFhQf483PQNm50gTDYI1A8eNC+VzTV1/kopEskPCKgBhIED7fkfGCgn7JPHoElE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3VfOQwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3VfOQwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF954C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780506873;
	bh=C3tyuJW89o1qgxZ+5WcDNZvbGrBqPaIRrD9rtO5mmww=;
	h=To:Subject:From:Date:From;
	b=J3VfOQwjcPF8gXnZAndj4floMTbukKF2PCJfpiQAAfX4gZxD+GzX2bgcqNysUjaQo
	 hbimz0TMLUPLswhCoZRfTK6zU36+gzZVSH4lmQQFQfcyhuxvDlVkdmqFsd6TKTX+ZJ
	 eiMxem3bBPrhHPQn3ZD1a73/tix3KN7FpV6XYvktxvgOzyLoG24lJy0+WYwK5B+s/e
	 Xl+hRYJoPNByc8RcyS/BFCphCqeyckksDTDfq4zsNPtbweKYSIL1RW4mdvHDzPQAcw
	 2sCMAq88nZ9VcARE6xGOI7Qo+IUnWAbuYwDrh6ArQ4rFgIrJDLK65DWTJLKzj3tSiW
	 b4I3SLK1Ko2Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15A3CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050687371.307.5412443092405356271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d8f3f04015f43b11ab3df311c79a078a100f9221ab59ce9ca65c2ddb87ca43
Date: Wed, 03 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780506873
