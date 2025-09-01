Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A19B32F763
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756753795; cv=none; b=YcFlgP1ohKBvfntVUMo8sllDDnbLiTQ1cPQO3SuDSFiDvh8bcSwhn1+/pEOpFcyifNWghYiLn3ADhO8zs7ac766LH4XMsJD9a5ImDmL+ydtkg/5U06VgiUqp1sH34UNt71WN4Ydl9LqBYMeQQQNEsKqAhXNybfHgU4TFcykZ+3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756753795; c=relaxed/simple;
	bh=ilQuqu4xaaDBNzsW91D1JI4CuTH89DclKej/KsRq4ww=;
	h=To:Subject:From:Message-Id:Date; b=o6IqdDNd6HDllLBbAepobvvN62mIO8ytHRy80utgmUWOyy2bIRGHws6S6T/Y+Z9KBhXjYqbUjI7PxAT/3u1HMUjhodNyrc8EqIPid6/N1agxyDGCEg9uGMMUbQ9TWTQBOj8iHwa8WRvWQb4PibAkmnIP0a+MvcIK5onQvdq6ls8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNetQxc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNetQxc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756753793;
	bh=ilQuqu4xaaDBNzsW91D1JI4CuTH89DclKej/KsRq4ww=;
	h=To:Subject:From:Date:From;
	b=UNetQxc1W6lXd9YSuZdporotIX6k2YoU21h4Gl5zf9Ibqd1AbB65jwQuqy/LEg3Rg
	 6MBpNPnW+tlGDYYXFtwotR7yJHMQRZPhiuX1YGCE1STL4y5XwAly53oRIZzfKxyGEm
	 1hJja0W8+4CGFTroksOn71TmxI+ghOMYHp5gmVwOGC1RnDUspGDhlv1mz3e4T5Xfxv
	 hQPzIPQlZRBQdDsCE+QUuZGO7yqElU5WvVd68aPkNRvgDESgSkeUKc711Kxh4E4Dsy
	 6hCszGaeLBRkiaaitfd6ormuxg6/tciz96jqw9x8KorRvYvYCzoE6AaolakpUWnb3p
	 81tFO+QAYsB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96087CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675379357.7742.12439191196530686423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cde4723baf23cd5e2d47fac0fb671e67ac682807b2630100a4b251ee511014
Date: Mon, 01 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756753793
