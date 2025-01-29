Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E3B1487D5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738164954; cv=none; b=V0E+Kv+nWa5kZZwSeshP7P/CXdswMHv/5JfJ2nDfjpjvcvchutP5DXq6BBCwOJgIDSxYnhpWdiSoD4dTeUrEtTe+Juj7WjWIDOoXTnUfRPXU0SK4HVh5rz3Hf5Tb9d8U92v66+QW72sIjGdMCEHiuYewcHPcQXDD92As/9+9SBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738164954; c=relaxed/simple;
	bh=w/VAZKqSgrz+HlrQFmhBmvYhGstaV5NLooIZ8P9JsRc=;
	h=To:Subject:From:Message-Id:Date; b=Bn0S+K1DYERkT6Zq8pboPZTp4LZ5L2dbV9ndbEqVg/RTd4qB9c3hROxXO5+A7pSAczGRAhhDvD1W/oBlR4/sRZ7ZmbH0l/qBva5GwJgfjNm59NJSA8pJAu6QUNFz/h2i09xHiwvhkh4ASYneeQ9fraIKbaOW7V7rLgXeP2MJZcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jnn6RWpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jnn6RWpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4287C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738164953;
	bh=w/VAZKqSgrz+HlrQFmhBmvYhGstaV5NLooIZ8P9JsRc=;
	h=To:Subject:From:Date:From;
	b=Jnn6RWpBTp7pp8gtFO+DvEJWfUu3tyed0DDFDg8VE/vXLT9qhnqkHVEVpJ5b7k6Dz
	 clcYRQpCXNoNFqFqkjp1a4w0EUgV14ULXJDD4l+tyaLVgZECYsQOM+6U4Ro1oC6evS
	 WnWw0Eu/5tN6JUXSRUoB6mMjxXTfXhVDvWWc5PNV2q9jEh99pZTPvczoLlcJRw1sZv
	 HC97OPvVzA2/0Qm5lzHNpAlYjNPVit/61rrfBnV1vf17jIh+4D4bqacExru7G4bhm1
	 ukJdoNiTcXfevgKUVxZjx9bHP3qKJGch2cgWbgMM8kJIxcxGeyGBMY2YI5uPDK48j3
	 QjtR/HITl5EkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ABC02190
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173816495358.14258.6662263984212434195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75e2d366f982a68e2ccf005c7f04b9bbdc23edd79f415fc7a2f6fc670430534
Date: Wed, 29 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738164953
