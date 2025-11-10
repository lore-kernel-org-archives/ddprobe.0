Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2F028C00D
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762747194; cv=none; b=lbL4crsGKYNgey1hP5Pwmg/QTJf0XIZanXTXRxEoH1POgHmh+muIXTxEeIXGg5G1VlkAQpN68X8kpq5EiDrPdmASfnFfL8D1S6HNLOgPhce8JF/Y8Q/7UJBdXrSyuO0eRP6nI5wecncGcKgfsJCTexpdKBLP/jpT6RAJbqsikww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762747194; c=relaxed/simple;
	bh=i74OB5hHLQoqrF0mB+33x8dmZRQQ2IEA2t20cqwCO5U=;
	h=To:Subject:From:Message-Id:Date; b=I+IYlSZk/hJXPudTrF8tDXhtIrrnahQ5g6OnRuUy0rKHy136DaCS0xAR/p8le4XK7x0G3pPpb9DDij7H2Vdhu3axN1d8zKJ5t0oS7UMIWDmW6kdb1vJqG0v5baSMhWKN1lzBZc2LjXX+LWY/td4Sq0WAO3eE4WYQGW9ZaTAAaXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASv7oW8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASv7oW8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD7EC19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762747193;
	bh=i74OB5hHLQoqrF0mB+33x8dmZRQQ2IEA2t20cqwCO5U=;
	h=To:Subject:From:Date:From;
	b=ASv7oW8uEmUytX8/7bcaMsBne0MTIvGMXh1BRxvJbsIqIuUAppuE9Tb18lO96C2mh
	 NAeyrk0wAdtTULgM7u0NZHMrz1BanicJwC0szdIa0mzBMgYZE5Bs5XCRn4+7WS+wsl
	 WdNfeuslhEFXCsTBZIt1O9xcd3uWtdiknMAcjwVxfU0h2SOV6PMP7MF/5mfbBPVF61
	 M+wOroEYbdhahVcQlNnsPTWtEoys8e58cSjzwMdLkChwIP8PjZ8SyIjzhncqtkc+6X
	 lk9WhrlJhuqiLl6+N0APUOJwqeLR44TPABHWYoO8LYcM5UYHjcPA21QhZGkIf17oWq
	 XvxIOZENLedhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A837CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274719362.19261.1988771727522715089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1abb0fa1cb354451e73b89a54dc6654f6194581dfebd67dc6037b364f6e4b1
Date: Mon, 10 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762747193
