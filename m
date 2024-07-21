Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BA31373
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721528754; cv=none; b=a2XtTITIEHhhMXkFUwdQzEj1tZ5HxI0RI1BTqbmqQoymXt3gwWpHtGh/Mk+9mFkMgdYK+hQT8sF9y/u1DqqzeKGR2IH2H4GscMXLXr4HlH0cL1dyOAQvNazTV9D9zIL5zIUcTmqtgp2xRmuP0fscO3yCR6YcShYzlU4N3r1/UZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721528754; c=relaxed/simple;
	bh=FHfUsWoFqde+ceM/9eJ2LV/QEal0TYOra/kBvTVo4ms=;
	h=To:Subject:From:Message-Id:Date; b=JqZonjSSjYsoESjncLquyya14/+9U/mo+uSRjTjfzep1agcHdmmvWKM002Czh9Dl8RD+Tk16R8WH+sWDZJTOiS4RlMMXL0VKAdEHV+NWcVBdAXlXRkUf9QKL9Ltl4prM1jincW4OgJjR4AniWQARDOsFv69RBHD6lfyeKRCObfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUQBU/aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUQBU/aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98C1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721528753;
	bh=FHfUsWoFqde+ceM/9eJ2LV/QEal0TYOra/kBvTVo4ms=;
	h=To:Subject:From:Date:From;
	b=FUQBU/aL3Y6GFkdFw9g7EfRayWeu53GG/Tiu/jgy1tN2l/IYO4elxZRBtfYnpbqxg
	 9svcRGHfmcDl7jAMR6dq351eU7sp39S4tMkDT6hHGx//guRZxb6nAS/62OcTBTP/eF
	 umUd1nXIQuCtzMZE5fldbSopSRzESaP7ZokIHITxxpa7KvIPKOtiLKQb7geMBRqM/f
	 LodDUjdW4Y7TIj3HbryzBMv+UwqWsfSKpM2b5X40o33hQUFLY6eZFYVyFioN6IR2o0
	 maq7gKRCu6zmXLcsp/A+EZhc/+yTnefGdHH6R86MubYUNx/6errX4v4Wc8/dSZ0lS3
	 vnlgVvMQV0rKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D8C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152875364.27576.10751136832504555654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71303fcf802cb550165e1a03c88b92725ebd9bc11c6c684c8e2b974b906018f
Date: Sun, 21 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721528753
