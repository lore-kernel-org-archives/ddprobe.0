Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37A389106
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785735634; cv=none; b=D5UiTXEQOncEBsFs9sudlH+UfKmIEbrhYGZo4q+RWtBBQHPOI9OEFaRo6e2NVGho/evZTjJRAFGaiuDWPpAGJrnbNbtpJxXk2l6+VKtigazCQa03w6o3w+8vChoq8llOaHtZ8M/q8Ygr2ixw2F4Sm8GaTqk0hx5FNfq4yOEWi6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785735634; c=relaxed/simple;
	bh=HavpoPB2dNPgeJ02T3m4GBSWd9+0yjqBkqaBuOYS3XY=;
	h=To:Subject:From:Message-Id:Date; b=GqADtAtH63r9Im68v55VxZqEcCaiCXmosbVeLJ1cfcgqCT8oSHVQS8YynBfnCuPQAvr4Uf7wZz0fwkVZs96vUPRhPqi2h1e6rkhqvB1qw4bxR21KnTyaSUxJPdHX005kdupCvFF+4eGsLEOPODPxSRe2fSt2zZZNvS8TiC9uK7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewkcMGyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewkcMGyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2432C2BCF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785735633;
	bh=HavpoPB2dNPgeJ02T3m4GBSWd9+0yjqBkqaBuOYS3XY=;
	h=To:Subject:From:Date:From;
	b=ewkcMGyne2x9eDzEfdwasU6ByGe/H/Ol4iJqGdz1QXqOzzfkxYqbkhfvZueJslcJx
	 bRctFO5n+cj3+khoAMNq0E98Vek+JflTCt0Lupky7jauNmFIBw9JQMa2zaJjHxcnWO
	 6rCyR98T/Cvaa+7Ow/r703jNaJ193vRnW3mGZk/5Zp1Pvu7urF08aulO/OCxa08yXJ
	 qV6gdit6E3TGBVeLo4hf4BiXv8xsjaXFivcdklEn6LaTU+pBzx71EN5zokbkgLQ9/G
	 eVwRHsCefEBZ/CPx2t6AfOe96I2ezf1Yv7t1gyHTWvgw5Ypqct1ou0V8ka8whVIFvj
	 cqFXySdi/Lrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B042DC5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573563370.23526.11291371752712601660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed97e98b63124d413afb25fa025f7451120521f52c62e233238070980b53989
Date: Mon, 03 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785735633
