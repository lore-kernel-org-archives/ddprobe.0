Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B85367
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754231394; cv=none; b=HHbWLG2FXiN6wXjZwcgQ5pS6NQlhUg8Mk1UTzrJ2AW+Fk4YF96/GPyg2AQ4C1c0cxinVkN5J19SCt9M4Og529geollFcKcWMxYlsqjXHBNTX/NedwfCcm/gzZeM+2Z0jXHYEJ7G0rCSB5ywCY0HpZ8K0UhqUyFrYuKIYJ0zHt3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754231394; c=relaxed/simple;
	bh=k6qWZGfveS68zC6ZwT4TM9P6V2CARgOjxlr+hWcARw0=;
	h=To:Subject:From:Message-Id:Date; b=mkvefC1z1DkRv/8nYGyJot8NdODaxKVNWx8H3G+tvHia1HsSGVNtgXl0dT2ac+W7tc12P2VklUsNbJPMA/rWf2Zu+H10eKNEqVg87AqALeVREPmhSTMIsJpj3ehIEPBHar3zBmocKOvCYGxuOo8hO3Sis6IRA7c7/4ZNAmf4yHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRhsmeK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRhsmeK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5482C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754231393;
	bh=k6qWZGfveS68zC6ZwT4TM9P6V2CARgOjxlr+hWcARw0=;
	h=To:Subject:From:Date:From;
	b=BRhsmeK9o4pbBokgiIHE2/U5638eedCK4rWz7xnCnDbOxggPPL+y8h5oxXbMAcLsH
	 0oZHxvv0VNZR/u290r74UsCP2k++ybLkwLdVycFmAWTttG+VL7QwtEItN0sBcnFdh2
	 BG7ieU6pNzCinhpYvzwytlKE1DIuacwOAuo9BOFa0R+7cAmoirZekqnh9gSkon+k8g
	 iZU7O9y45O81MfJ0QLjpH+IIaF65sWsmqX+2IghfKYie9HrAFWWDQ3LGWEOyBRSxOY
	 J9l0Wf+VztLUNWeQ6RuSin3q5QH81bD7etunVckFYX80TIz2u+Eh/1ClgjYXwO+SoA
	 x7mgeBlG7JKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251AC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423139357.13577.9223699457264554866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fa05974f73346f2149126900059905fbe389d18d845d6d7a57fb01fcff392d
Date: Sun, 03 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754231393
