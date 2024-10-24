Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCD8170A01
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729752954; cv=none; b=oYHLc6CA6TKuraOF1U49mjYxe1FcQkVywtpm93ml3GD9Ew3uDYhJKI6nM2X5mY4SSBqA+/G4JGDYeSzH/EjnJQWO2C5MjrHQtCLf3YwmRgTE2gDzhCc42xIPDQc0/dvjbUq1PoukGOURMcwOmAIenVli6e2x7cadNhbsqYv+IHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729752954; c=relaxed/simple;
	bh=7RU4gyZ7aiToaEbcKNvD7eA1yHy3c0FmmMCiBLzTLz8=;
	h=To:Subject:From:Message-Id:Date; b=Tj2s6AaI2XBrybx99J0bViEQ8gbgOUFgBn4+0k0I1+nGljAO5ILXaZmUSU/NZajWRtKmCtseXQv/8b/plQYVT3J3+c/FxnDaaeLxVzsCJHDU3/edY+3FPF6Q5Zl+JY+gF/DZQlIZhfytgb4DH4XvaPoAaR+VMbVHsXLgPfZ8Zo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOCEz9ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOCEz9ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC315C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729752953;
	bh=7RU4gyZ7aiToaEbcKNvD7eA1yHy3c0FmmMCiBLzTLz8=;
	h=To:Subject:From:Date:From;
	b=vOCEz9ir/9ty+y9gl7CCCm5eO3ic7RL7LVl4ZoYoPlOuHUoxQbrdldx243ntGWwbY
	 anyV8NpokXgpp5zxtGxmdRwBIIWgtPp79mLVjqGoDrtXvyqOOuRjgGdvaA7KM25n4o
	 3BNZwEciESLXzrN+bNi9muibFMBLnaArziw+ugCg3vBd+FRHPasVlLFJxh6eYJlS+0
	 Yi1FvXx1PK/ZqsY7+KOcYkfTjmgqbFWE5wcYdXjFOXTkdXea+6D0Mz2CBXORA2dC82
	 XN2uMVA8cbuI5J3LOD+a7x5eoDZhhV0eJpBYa31MeqjTdg7+rATrlDi5v3c0I3iLTd
	 MuHVJvq2xWRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F91D0BB66
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172975295364.18387.17732850573388374510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5c822d88dd4e970fe9af57ccb69df41cba7a5ecc87c689d38007db080364e9
Date: Thu, 24 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729752953
