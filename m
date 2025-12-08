Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005CE319857
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765184574; cv=none; b=uDNJHOc4XkdbGUu0JDKPRGY3fGxijb6OjIX7L8Y9beF3+4gDFBJQZloeOVhYGalIrjsaJB3q69U4JQ3WZgT8zdme5NL1sdOtIl4qnd7gCknapku7P1J5V86Q7xixbKOoLMbu+4i5FQZ9hxKySuhi8ZDQjmMM/u6PoXtatQNsb5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765184574; c=relaxed/simple;
	bh=OkeAqUpyJqLp6aplYV2d+We8ltK+Xq/EOdayML1la6Q=;
	h=To:Subject:From:Message-Id:Date; b=fo4YqKaWZmbEBhkbD0MvrH1DlPG6I5J29sNOsuLSZ9cNYJTjmRHHgl85VXAZKXCtV4tljSwFCO2EAsQtEkMjgkDQB7TpESEgNg7KWhgnldbsuyf+uorudttyS48bYNG12yYvFe6P7xsfkPuaQatYOOvEOK3zPplWKgYzFTt1xu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpxmeUJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpxmeUJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D6C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765184573;
	bh=OkeAqUpyJqLp6aplYV2d+We8ltK+Xq/EOdayML1la6Q=;
	h=To:Subject:From:Date:From;
	b=KpxmeUJ2QGhH5plgQdTgsD35g4U3Zf/KTESZl2ByEqnG90HpoccZPZnqjfnVSnF+k
	 eU8jDKobcsJfmJSYj+KLwh13tu+5UgHhliVeZ6INUgi7rgovZu5J7AFg9mTdjqIo0J
	 4bN0M06j605DLjSz9yKdNROxeYoaU5ugcGmeHje52kXkKqvM4xNeFZlkAKpQf/oq8c
	 UJ7q/QvmnMJZd7D/GsF0Vk0aRJMUgyL8svwgRxD5YhHkNO5Y33ecghmnsmfxjpL4gl
	 EYG32DSjBA77YS85zVyZxqn5WaAgDqSRFo2765AQVHv8oNwc1q60nrm/5RDC/hXp0G
	 zn8LU+gNzqvKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067FD3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518457358.29439.13840189810282307794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67b0d6c365f380b7319c9240d735bf14002ed8147aa81d81dfbae034cca00dc
Date: Mon, 08 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765184573
