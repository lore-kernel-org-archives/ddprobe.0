Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E762175A6D
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790998834; cv=none; b=iV+gzW4aUYv9JhKV6t7EhCjNNUbhyrAPEKmesvgOdEoRTvJ1WKFe/ypkifP4gfnfEIogr/6QNC5cManuXsFrbao1m5zg0I+VmIZ7omTmUqGM2Ugprh26wyRIcNtZR1K/Q3jlWGhJpiWjB8GNmKaeevKUBchjw3f5+QFdvQ+gPqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790998834; c=relaxed/simple;
	bh=uYtJgnUvo14SbLP+teU0NkUnJb4S7LCFXfo2x4qhG+M=;
	h=To:Subject:From:Message-Id:Date; b=MKoS7CQYUKKEQwln1+IpwN5YgRfTKsTYO26hDKjBMWZL/B0tJApe+6dgTfo4QzYWJFSb18PqZbV0Y1iQqFQf6BZRV1FYLn2u3Dh5SNF0lr9QTyFYiL3fDLcYCj1DmefCev2vgV+qPjX2wY6buv1j2tG7BCkyHJ2wtQqNgUFMnds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5CFKwFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5CFKwFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD81C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790998833;
	bh=uYtJgnUvo14SbLP+teU0NkUnJb4S7LCFXfo2x4qhG+M=;
	h=To:Subject:From:Date:From;
	b=E5CFKwFLn8bpveE3IXGlxuf7blENhO2NBPcY21Op2+Hw7oFY6h0L2OR3cjfLNJ+aQ
	 yFN7vP6aTPFIQDcP0wums1tanQkXLyTYdTEcj3bGZc/UWVvWs+DgifQCU4L1c6vycl
	 REn6ToqBwqEDqztxxwftIVWwbaF+T5FGyzgZL/kKHM+6lOJXuilgKEEzUiqxv8wiS4
	 wOoOv4nM79PoGbMwCBoTlgKdVOioKhMGaTadOu+pTXUnvhzz5j3IQWxpH5Y510hgS6
	 uVVcZTW0Z0O0L32LIOYI6sVsHjjpIyRqPVnnr4baNZ2Sv3HYL8kTV0zovGbia22J53
	 Cun6gTmnj9Ebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB1CCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099883369.21478.2445907393399028938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15343fe6f3522f3b9aded408644058dc45c1185b2110e3ea4480c2604f0fa657
Date: Sat, 03 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790998833
