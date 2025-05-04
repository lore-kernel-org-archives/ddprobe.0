Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E9117BD3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746321595; cv=none; b=V5FlDkbYXf0kTlWOlTYUwuqD/GYCZRPZR9xpy/5HupPgiQeDhng7cLFrufbdP5f7PwpncvYgNVkJthw23W1BTMsEDe7qzFVb7mu2h6b6fxem6qS96nUImL+as5YYQtfsfEx8zpRNZ+KMpXDr6BcSw3081VX60zIa9gtuJtj24nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746321595; c=relaxed/simple;
	bh=wtk0hTWoepBzuKYvuKV9CfrGySg/KvKFQZbITnSE6l4=;
	h=To:Subject:From:Message-Id:Date; b=DKKMkfdtR6iwVazLlQREr/beiJtvt9EVsFbd8Ts36vUGigOANQjYatnqrL1PGM9LExCUDNh6H4b9woaKLfxeSRAEgYVe3wx97sleqanYM0zpVBMLhA05Ec4gK1siQ0fOOORuMBqTyrlZSNHxzA1OLQo1q8oC7qdRU+uee+Ta3Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KY0lHi1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KY0lHi1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6117C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746321593;
	bh=wtk0hTWoepBzuKYvuKV9CfrGySg/KvKFQZbITnSE6l4=;
	h=To:Subject:From:Date:From;
	b=KY0lHi1AHTDipwuquZksHSrfFstRo4V4NAlX05gsQ8GnEhZCkwxx4hlVjLaUd73w1
	 b4h3D5majKOflr/3RBY18Qm35vPcc8eSGwDjS8aISYHqXV4nc+Is+ID7oFm2VKdG0Q
	 RSpNDMuahwGPLxN8NSBWYCuomR2JtxAsmoGATqPzDBdk0rbGaQ6A7AfQwF2bNQtO8l
	 jyd7XGpjBkhcNAyEZE1w9A+qCy6FJlNqc8mVUXKoLjMlhgS97EMSD1AzykMaBRZKSU
	 Q5uq/sOv9FnzpNBKHBFYj8gCYBrBHGenSvWQvnihfmI7Ll8Ko/9ZYDTcqsVxqiYifC
	 8iNQmg3pqIVlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC2C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632159357.15928.6256975492989058723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57a4cc110d1b2adfd10fc140d4605254745c3c243412d16a5f726825f5e2be5
Date: Sun, 04 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746321593
