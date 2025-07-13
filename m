Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3642E36FF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752411594; cv=none; b=JIqfV9qFdsTHz5Yw/5Nj2bozMz5wppxkkDmJzI0UXhy6PCyVONIZWqSGz6mhglRfx5o3YrsqSZiCVcpYN89NKyS4mE0hEenZNQwtzZsG7Aj1t7VdBi0ZugLUukgPM+wM14zgkd1Ds1EfOiT+rY6yKeFkMEmNVnEl0/rNOf7KV7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752411594; c=relaxed/simple;
	bh=g7BEomDrWg/+WCIKY2WkwHuwXqH3xO6IqvS1g6MOZ74=;
	h=To:Subject:From:Message-Id:Date; b=sg1aqNIsE/5vbew3Zxxkp6vxZUseFzKF+yXkIFPgcPAb5GTsm4Pz1FWSj5TSeD6Lz2avVn6lbKEDLQFtTpGg5qZ5gEiMeWkN4Jx5acH+XKBMbFU/gCEyfzUGHNXrzKm6w61BDK7ATrVWYYimYOWfe8JyrZbZX7K3JqeShDAf84U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0aL9Egs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0aL9Egs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752411593;
	bh=g7BEomDrWg/+WCIKY2WkwHuwXqH3xO6IqvS1g6MOZ74=;
	h=To:Subject:From:Date:From;
	b=O0aL9Egs2CsmokgK+ki2hYBaKSUb9ZH7QAV4RUnTNolGCNy72jI9GrwfreVUoV5MM
	 sLVtr002Xw3GeS6FO5z15+LSPaMwkFQSZSp5WRa4QO3iSXUw+S95pfzpQdFyFZT9v2
	 6cZ8zBklu1wIF/5htX00gO0Ga3V2YeIG/Ztu9i5Ym4rruTyvuatPYwUaVQkI+1UtjW
	 xsYhg3YqicSE5Uvp9QnjBjigx/oep/aaXhEvreqyKfUSYpJn3gXz0A8/0JlaW7ytCI
	 9FhiQIz/JPFQQ+rbQyoanlxormw2iiAvz2jlRkLsjgMzXhemQ+pnx1b6ZmB8m/wd6q
	 XT2SxYeeMQgEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F224C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241159357.29323.10389414388989706603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702ba4a2e27d6c8a22e2563fa9a0d236f146acfff58f87fe367b6d9a7bb2779e
Date: Sun, 13 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752411593
