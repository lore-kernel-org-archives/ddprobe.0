Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8031459F7
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755222594; cv=none; b=HdOguMs7euEksxJCR30nr77r3NwPFt6cuQyqIwmfG6WJdk+0FaKnnGt0+16wSh1uV8LxQIPLnl+gRweGXzEru4k9mG461oeSQt8FcCZHknoSbZhRvVjqvuGebVa/kERFJiTUNiDFoKnPsLIV2tzHZj4dH6oh1DuhkCLgPlaon0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755222594; c=relaxed/simple;
	bh=dznPT12ekuyOvv4ulBJpkgNKfsOB01F8ckFToiiAtgM=;
	h=To:Subject:From:Message-Id:Date; b=e+SdM+thn5c4xWEU7ukBXooSc5K5ZHtw/0rw0JF9fk3LfVrGs5E3mbH4M71Sr8qcNTM/grNnJT3a3ocJzagBubM/XdBV0Rpo75uJH7EEJQ1TUgCIRzs5j8fU7Y4ecpDGy2xbsIwaKy8ZvW34Ai3JFMj2v3W60FzEWN8dsfNDtnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhsu1Vhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhsu1Vhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45BCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755222593;
	bh=dznPT12ekuyOvv4ulBJpkgNKfsOB01F8ckFToiiAtgM=;
	h=To:Subject:From:Date:From;
	b=Uhsu1VhcLLUckm9HmAvaHxJZDE55duRVvlQ2ikg0MyBfrrirf52HfLM5XuH5M6MJo
	 Lc6vxMK7yNMmqKXS+7H+vEKk31+KH8H9BEAXyfELBZqc7OlWEJG+XwSqrbyjU0EjdI
	 00cZU0ZVVL1pDfArPGwb9oioJrk4Obyo3b0nHVdvMPBsXIo/2FIJYlurT/aB3VOCe3
	 zVlMJCpFM9iEihH5O0fBAzBePYoa0EB3u9VA9LHZ69SWDHp/OLLQLNNrxoYx5Gs6UU
	 oiSsUsQQ5HncnMXbDQJdz9l0l6wdRI1F6ZRAKX4TmIS3xVUZJDeBndsCYXc7L/t8Kt
	 Ih1+Bx6al16GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93284CA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522259358.4635.6226226901569603874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e2de0bc02d11ab16289e1eb88c3fcdee17d5f4e09489110c5795b94049289d
Date: Fri, 15 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755222593
