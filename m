Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC8723AB8A
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754734194; cv=none; b=UWUD2CgfAaZ2aZzeytBmswioX1GrAdatGoBXgvrGD4Pu3yO3iDQaz2BIRDPnjgtLt11wGqtonp+YBoccZxm2GYT6bdmWIv71OWw885h8pX+q9G6JV7E+dUrUnEYs67h0Z4xYbJUUh8p7/DwzS6pxtCryxlIJJG0l+htfu5lrLXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754734194; c=relaxed/simple;
	bh=1RbsFoPDy6WC8ms7FFOOBHDZdiVZ8DakmGXQeoDRTD8=;
	h=To:Subject:From:Message-Id:Date; b=cPSt0iHYMc6lZfYcTWTRKZUQPynFCKw+mv2YvEFRzFbZHvPopBt68BP+xe0o1mPvWfk5mWRC4vT29oy02CsADdEAnuvzumB8FG6btc01LTdMmP+LctbAgm9VWx3VbA8q76BjeqZAT8dGZ8JchbbrwDt0BO8GpjI+1aUixrVrBAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1JNIT8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1JNIT8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5281C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754734193;
	bh=1RbsFoPDy6WC8ms7FFOOBHDZdiVZ8DakmGXQeoDRTD8=;
	h=To:Subject:From:Date:From;
	b=O1JNIT8qsbq8kgOxNJfoKCY8Q7cT0IkcH1wlxk6ZYdXMJ434SLYVaj3pj+2o8XYUy
	 NVbZ9bBPa6XTZu2JWxCbH1VxsmvqIrQYWo8qBrN6sOhaRGSSQQE5QdSCq49NzBI0uR
	 Cfd/x0QjzJn2BJhqBBICZNVl3c4Epe77RG8iuo+y5MDQ3joC+1txClDfR1UEaayFaY
	 OiW4Vq0LEJ8R37rBovNi2YLna+JhHj2WS3eOyM3iCuGPQlgSzYuPqSYbqyB3kRk8Bh
	 LQrUnguwUkE5isAvtSaieuFjZs9lFxfwmlhZAth2opKcEKbP9N/lNltZxbAAwBbzaB
	 6iCC3tWcEliCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8EC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473419357.4718.4016275958944774542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfe53e88540fc1f42dbe4e813d5e2289890ed4426d666ecaac6ee3e50f2a68e
Date: Sat, 09 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754734193
