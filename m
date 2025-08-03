Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125722E3714
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754239794; cv=none; b=WjqHYrFBm0/Lt6xfYrOS8x345H3gYrHaqSXI6kcdr2XHtAZSN9qBDqbrODOrCHNivU9prqFJQxXqgQrefxh8fSWhW6Vd4jmfQMe+5cmBdC/osnMU8GkdUlUIrb2t0CjzZjLWcIgaM2URnB09F/jJ2gQQKfjtk1SI4UU8bItxNNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754239794; c=relaxed/simple;
	bh=1aeLJio2sloFA0tLldt1tehyldP63y0pAr180E0By4E=;
	h=To:Subject:From:Message-Id:Date; b=qp1g7tKDaxbkJGA+X5g8T1iTK2YvwEgAK8fBaWrNyRGv62VY20G4+qVKfpOINkfxf7rkKCgmZlnww9itNJYqhcz6AgfqkqowqN0yd5VC1F6vbBLt7+7lgpp+GBedvZfUqdULU1IObkBPADcKlBZVsk4HGbzwSPhnIhFu16jyc/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXJ81O+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXJ81O+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E9DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754239793;
	bh=1aeLJio2sloFA0tLldt1tehyldP63y0pAr180E0By4E=;
	h=To:Subject:From:Date:From;
	b=dXJ81O+trVKzoHDOHyys8+LiAQdYDgS3LNWHTfkuCzJwkH62PWsTXEgLePQ6LBYHs
	 OdJ8Nbvml4F51KyH6S/shH2NvZspIO9UpgfCg9kXynOn6fKnRDF8OXxLgcMKgDElTs
	 Qwyu+LcXh6j19St9Qu0iV1+o28ZrcW2S0ZcPHTV5OCEe0hQ6VaKpvxX0uQWXge4c8o
	 8x6zdiJCpeFYfvXaIeEZi2v0jpk3TzDS3xEvU47GnqbUObOwJM4STxOHOIhFhrmxeu
	 TaeHKUCIhpuuYrYcZBtl2gEMOP7+8HyZatc7yHLMWv2B4GLFIFMhxl+1rSKSZ6HEJ9
	 6rafj7l1NzfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B48C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423979357.16746.5880279091954810872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074edc4f0479a4583361aeaf4d2619b4fba8d38fe516dc2b0af01544c5124966
Date: Sun, 03 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754239793
