Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649C2AD3E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752441594; cv=none; b=Z1eICKUhKVQIFbCwfKuMVYla4Q//tr9+Lzj2N/34NMEqyVxSfiR7960xWLJKLlQTHd9LxcNPx+FLFi4sLDqFffLfSoKgGuhuo/jDOKmKuozOZUDq+MB26qNqlPHp6N0pljalGtIvZ4k2JnT1IHharZioYX5WjuR8HCVziEfNDXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752441594; c=relaxed/simple;
	bh=wZ720Y3Suug0BDs299UqH8ZG5PNTbhK8K8VIQAhy300=;
	h=To:Subject:From:Message-Id:Date; b=DH6QmMyWBA8cqWd7++DBr+BIYZ/IkE02MsXLD43PHgk51U9rl6DNQzNvSZhOBZ3pSQkynOnwXvlWQxHhiwlTDO/tnzy9+N3bgwUlsHvwy84RxK7iDARUtSj7yEdkIzQaKuQcX6V7SC8jwHTGC49/uujQ8sgAw1+sgLaUFCAOylk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Slx4EnM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Slx4EnM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06DBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752441593;
	bh=wZ720Y3Suug0BDs299UqH8ZG5PNTbhK8K8VIQAhy300=;
	h=To:Subject:From:Date:From;
	b=Slx4EnM9jUDZ0bO+MhSAv86tinTQcQWY00xnvgHFZL9HgOgoNatpDOGAoTPjDhleX
	 pOUIh0Raw+LKE9/Vq5k/uSQeFfSt7VdwqUSwQiY/ajVRiUZ5J3zd0H4n6LfQ4fnnTA
	 UvSQQxgEQ1W5X8q3TroP9XwB1k9fBpztRjRrDxbmQEshG+Hr+V4LfCkoFT7ciGolV1
	 Xw3CoQIqmVHNfl7NhfnJ4U/TIucVEkoH6SzqQ9meiYEmRdz4q3CSoW40wUfrpLMgaC
	 QKsV0DOVYXOadYAm7/3zEFXZbmJeUPAgxdsfe7WlXKYVtlgLBL07vEPNHBBt0kqHl0
	 mcNwasB6GV8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E842C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244159357.26723.16904126543850939953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a528b5b90fa6b8e170936a593e2cf582dbb334c90bbcc8a0bc0dcf29d70645
Date: Sun, 13 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752441593
