Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4041A2381
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754646594; cv=none; b=eqqKlOyBjd+luzCgR9cs1MzORflEyNxle84DTlAGqitYGdelPZH65yoTSc9YoEeeKJ+dlg082ELW0cVpO+5vUyVSAOZjIQTJNX1OlRFbCIY3WRe4KqLY+amO/C/TedqQ7gA65ENROnIlHo0KwqLpxRhbCk1pnbYiqlTWD0UDOR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754646594; c=relaxed/simple;
	bh=vJnHEEtF89rjz/2wmJM+9v3qyGhmN+PedMnMzWw0zYw=;
	h=To:Subject:From:Message-Id:Date; b=j+WI62I4gf8K/Vg2iXF9mEo7O4JpHdO6APCTQ7Bg5YAf8tSDr3jTUzI7668IdTMGOKMAfzsiMaBSDiIy6WFAaomy06IHsLzXh5C2s7fd0zBDuqOLAWP9d6U+wZftatiGPk9zncVd47Wvh5vBv7da9ygJ3K9STQ1b5iGMWKfBKi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvOLS97x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvOLS97x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE53C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754646593;
	bh=vJnHEEtF89rjz/2wmJM+9v3qyGhmN+PedMnMzWw0zYw=;
	h=To:Subject:From:Date:From;
	b=YvOLS97xXMJD7O16jrq3lioEg0pW8HXRkCMY1dTDYdGd7gPpGF+dXhjm0KnstQ5WH
	 Waz6Yj0o3qlz96bdgZK7By8sI7AWNXOG+1KX7KLvlGKqpfvEBEZ1YPFx5ubi9J7+IP
	 qKE4FQaJgtLygC++mW+1ODhEeuOhB7DetKcTgdJ6GDRggccqFEAGspkHzReZOgVi5g
	 8QXGIWVbtkBkW/GNaVUt0YhkjL4TdCOsEB8KdwaVND5tdiGCmLxJAiZlGnNGfIYx1p
	 B4DDOqUr78Ps+JbFphEqfkdZ6LOQAcsTdSPjOWb1Mkkd5Fzecyv4qDYeMeTr6Ianx4
	 23q/QCT6Ea3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FCC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464659357.8612.12692005413478528452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c4378a57128a7bdd1063454562769cd79881e4a71fd562eb9aef29f3eaaa2a
Date: Fri, 08 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754646593
