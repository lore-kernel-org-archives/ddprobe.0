Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313301F9A8B
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748473194; cv=none; b=auA7xpfJjYQ4g6Bga9pQ535Hq0CBhJf554C80tCX1W8QkcST6WnKbW84T7JsSClsJZog5rJU9sUXemsWEIcDvy6b3J4gzqqwDmNwgZYqQQXeQtJ/0CoCT9hWW3mosoOlF5ITpbsam5CpQETDX8Q5pn3cFh1WP0GWtbY69KZ9Ow4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748473194; c=relaxed/simple;
	bh=YaTZIEcK+DOkBPIawC0S11zDtd5459NXE9RcjxWPyIc=;
	h=To:Subject:From:Message-Id:Date; b=jUsDp8TjYjIUqpm6vIrrerbZXlOb6FLkNLmk6qDux1BtvprJZYQDxyRv0AIT0tBBJ/SXqDvEcU7qY7Iie9Xlw3pcjFy+CGR1WSMP4YQmfJUO8ZxY4kDSdsJgxZawsMK8Qdsv9cf8yKKHYfoNKydGlTFF5lUjN3D9ZaUFg4LVKSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm483Myn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm483Myn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D7C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748473193;
	bh=YaTZIEcK+DOkBPIawC0S11zDtd5459NXE9RcjxWPyIc=;
	h=To:Subject:From:Date:From;
	b=Dm483MynVlccjGWqAuZwyhR0XG0udTQX/Z/s0CTY40tt47bKZJM+D/dCzxuhVia5v
	 swywC4hYRSGCwffzz6F/wXJnwqX4v9fjrJtohjEFzZ0RTHAWluIIFOE1mlOE5K0357
	 hK+gdM58g1WA4wPKFxYqdJcbnlYpn4DPmobzukbrhFbJW3+lfAPwqKUA4bIXv/jou/
	 axGnplRUllDPf+3w3x1EOK2UQ85rjzlLs4uJYd1M8fEbv6TuKLgBWlH9jaxHva9eIq
	 rKbONsJAvCHSl2nsefFxm3CJRqdHnNmHVIFcwdbX9fggesLD4FVKzPph516z7DSCmy
	 ccIC3Ea8LZ51w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944A7C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847319357.3149.7434349565082287714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9472172a0cf6af6d691e1788190303535a949a3ed10f3a631ad6a317d6c11486
Date: Wed, 28 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748473193
