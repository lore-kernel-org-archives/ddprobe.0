Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5528E0F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722122754; cv=none; b=tqYrL/uKSAhzhebEx2TobDH3iYWKJjmdsqfCR1jYJY16qG9PAgHm6hbqHRUWkUlxDRvOcXfB4X44OOI9y8AEu36AZPHvQFXuS4kEogjBCs8LA01kY30xulR2TS4PL6fi0VMf7hk3us6tp6mmsGlMbux4X4yFKbamEb4zs0ywRvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722122754; c=relaxed/simple;
	bh=NMiQRAo6IlCQ5ISY2LP6f1mhLQIvAWC9LSPBEfYkaMI=;
	h=To:Subject:From:Message-Id:Date; b=WhDSuPpUTaWnt+VR+mbLXnJF9KWJbA2wL/F1pd2LEv4OY7GVy1gZpBwzai5y/dfXdTvPZVMgvb/JdH61D19KLdpUug/Vvan6LBvAgxzebp3QIrTohpI9H93lyr8JbKmCuAtCwwOZbsGU+1LDNuRgQwGvcGnsaqgnxlKjgZy4ge0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSQBUMcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSQBUMcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB9FC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722122753;
	bh=NMiQRAo6IlCQ5ISY2LP6f1mhLQIvAWC9LSPBEfYkaMI=;
	h=To:Subject:From:Date:From;
	b=mSQBUMccqdxJP1AZAP7qpGqUkTL/LiLdNMcQjeYimNrwCr7TPaogVfIm3MCesfQEg
	 /8AqESNn5/UGYVDsrRiZkgw5XyPabY1QVcpwkVB8RXxhyQz6+zl3aruCXNokhR41w7
	 N3ukoZU3emreaow2rBex8VwiLpDLL4IHFbXzStbCZlgX2Kmr6WQaFxJLyoy4dO4FlP
	 Zi9lJ9vdXhtfIYYiWwb70LEwEu2jJlKCdZPJ62RNLisIyuU+vCqKqtFD++sy+g516v
	 Jo86Lqy3FIAtJK8rPMHvgWwDHWlgtoWcuQrUjM3eqtxU+kcjyKCCFy8XHqNi6RRgG1
	 S+rYskZfMvFeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D5AC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212275360.3746.16038776947165022893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45c6e3c03855497c1e935fa74581656b3fb501cb4390be7df072b4db0cfa495
Date: Sat, 27 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722122753
