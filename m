Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF3272E6D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788036634; cv=none; b=dR1jZD2uK+YzALPLhYtk7tx6YnZjhTR8ba/4kbQm40wKW4Ftj6PGmKMF4oqDNbmSAQ6EikDIwy4TGL9BwY46f3fjsGdfHaCVapjAB1c9PvIzHX86QpIRRwtRH+9zOeL6gfKQlO1l4oIwimv5gv4jRGJq8AJZX45c626Idpxu9gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788036634; c=relaxed/simple;
	bh=gX6+Vp4CsFNnQ6wjIntm93z/AUOPjz7LOblLiJiIWM0=;
	h=To:Subject:From:Message-Id:Date; b=RaoJQKvlEYBdwXDlSUtD0K2fcb57UfEO+kwKClw8vsUoMgwQaxFR7hD4PB313pqn9mm118cyX2fd1GlI3okEhJimIcU73MiJyjoFqGvsjqQqQg9K4fIo+cBGjye55eNvQAKoxmIIKH65cIfUCYD1KT9baLEKlxBqTtXwRNQBPX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeeWk4QP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeeWk4QP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3525C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788036633;
	bh=gX6+Vp4CsFNnQ6wjIntm93z/AUOPjz7LOblLiJiIWM0=;
	h=To:Subject:From:Date:From;
	b=aeeWk4QPLPQQp1/BFNwSWvwy4XV7KjOo+Z7UFTmte7oPVNgs/9myEr4KaHtJ3UaFY
	 njIfUihwd36KwqQfhqhFdIvZuJumJC5PYU8VJztd+TMk7dreMnAokNm4HTmbGHW6oV
	 g4RPUl39QX15DIAFxDKghgJxUZpCfXfUqvfxzKpY+wvYoVroO20irXOzNjG7Fak0rc
	 6xuMUul0LXPbejJXz/qeTWK8Tm2N3f7dOr2GbjLh4M9E+sWZYLWABL2BfNEqI4SE9+
	 Pwug/SGuS5F9hH3FEeXToUmh+TjaS4Ir2YiGj+Zun6PCvL99wE7FrZA0z3XFx6r/Hh
	 GBLSGerngkoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0175C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803663368.584.4576060308487865253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0466196b0883bea0e266f027fc6abe2818367d9800b6a5cc31760845d82b6e
Date: Sat, 29 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788036633
