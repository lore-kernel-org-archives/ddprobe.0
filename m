Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336FA8287E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778904034; cv=none; b=SgOvHJTZjw957NS+kttWdhxXUuIp5/yEU41lCr8NjyVeyjKJVln27y2ZxxUYFw9E1UA0vdebhymv7BzSldDmv9SPkUV2K708wWI+TN3I9e4vV3K53cQGVf75FasUEQj/G7/EF7tMansFdwEJzLjQHZqRyLhqdbIkI5zuwOqW1Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778904034; c=relaxed/simple;
	bh=VetphMUJqs+ciQqljQicpBLHPQQN0AozYGvrRhHFEDM=;
	h=To:Subject:From:Message-Id:Date; b=m2DFOhPfnk0ZIERApdYJEHdJzo7Tf/eq5OD170LC/mfTqyBqhodCywlzXdQZxbdnEOQBl9K6LjQOQVZdU4Kh0NCcGLKbrr0+wUi8yOO4122o7+Z6Orlmqc0otHOcybmi7p9K1iXls9YQh/KSDxNfwvI28REPGOV5ALX6KxzHqmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPi9sCgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPi9sCgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42B5C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778904033;
	bh=VetphMUJqs+ciQqljQicpBLHPQQN0AozYGvrRhHFEDM=;
	h=To:Subject:From:Date:From;
	b=XPi9sCgsdjHNjSR1UbSgKzgp+KkEUtgA+2qk3ZIF6qUMKt0WodsbIhDtf/VLcuQ98
	 /Bd2+GQQ39jCB/KNuzicLxmT3mIQaTcx9yKYHBpRiQdd1C/mXAMiZd/wJR05bJWX1Q
	 uNaZZsy1T97ocaNjqH2eXK4rQTy1DYXs2Hc2yM328MkzDm+HH0b89exBT2H0SV/S+h
	 nqXnH597RT+7V+ajlRXKmy15oSAqrBgWx//gpK1Y/RHRaX0nfX1E/ksnJY2e0JC9yo
	 aAKvBHXaJmHbIqxYf0Fp4agWF3YDot586PgTPJsWFHBSZ0TmW3EG5D44I870aN9Xv3
	 P5M7ZpZal0rxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD285CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890403372.4148.3433011004661810346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bd0883dc09a27a5c65b2710e1c37519cf7538378a5cb57eb944470a88614d5
Date: Sat, 16 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778904033
