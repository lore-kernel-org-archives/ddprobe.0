Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35E725F96D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769620433; cv=none; b=vAUXgJjiLv0AXgdITmFETi4WZ8KhEYP2nGWLKQsnvSRIw2OlXV07d8Tuwp+dUYi2wor6AvpuLf9tgVZ3wxBRYUmh8x6G7OlfeQ9OkHSjbvJWm2wzLmiItCqVUZeLXjIgWf+Nyx/o8jZRHBS2SXQXNZpNI635MP2XHzJYWSZkwx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769620433; c=relaxed/simple;
	bh=204WCxymtyk1ff/OxTQwyvfjJ6RtJx0MmCVbR2d7BBk=;
	h=To:Subject:From:Message-Id:Date; b=jm3z/t4JMdA4T+U+SoH3xI6pkCZIsY98ZhCSz2iXGf7gw3kNT/hMs6eZvGsB0L58yv7/XPfzpV6nP69qqi2R74IQUQHNF6/18ea5Z6+QncvmJ+iYJtd5amzFBdKt5TcQN+pGKnk3HDc9VSxhSI+tQlPGqgY0CLVc7R6RMrI5g18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek5L8PxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek5L8PxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0508C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769620433;
	bh=204WCxymtyk1ff/OxTQwyvfjJ6RtJx0MmCVbR2d7BBk=;
	h=To:Subject:From:Date:From;
	b=Ek5L8PxMxqr3jTRa2jyBah6i3e5Jeuyl5el8jPAKUhwHt6LtLtvuylPs3xAfaZfFu
	 RR7eH8SQ5ObuR4G8fG/VFzc9GWBNJsHMoYa7ia/vUonhqm57PHRkydyjZ3FYxIexFP
	 UBi3x67FVXjmgylVfr3uIh1JBSrgdMwwOJNQN2aonrN4MSwMQYPgjlDloA3y1in361
	 0/JmzLOChxP6WbO1W8535ANa1AIv+R9hlI0eb3tcgirVp/Cx01jqiNhmGLi46+YKMx
	 Pzi0/UBVgLwn7D/7OipTXmVkAt++4DZ247L9quo12xji0sEzeO6Rn1Ha7i04Cf6PC+
	 5+0QDGrRD/Qeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91600D3F09A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962043358.24180.3391174133084491001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7664963dd7a472f748d572fbe8c64368f35470f9cb3b0f42ea65dfc195dfdfd9
Date: Wed, 28 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769620433
