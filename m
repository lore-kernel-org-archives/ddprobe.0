Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBF334253B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768948435; cv=none; b=AeCpWPec3u5E6DaBD/sMooxfntGfXqHofmrvv1BH2yS/spI/986/dvdiC67rNnkE3Nl4GNvPe8vv54YOEmKseOFfB23e5j0ZCTUaTqyp2AAxYHHPrBgb5ihyOzdLs7+Os78/xAJNkKod3rwbUe1qb3rkm4ItXb8/+HhiV0R4rjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768948435; c=relaxed/simple;
	bh=9UGzQJB5LH52llc15Y9EzQEdpLBxi8asNMMsK5KW34c=;
	h=To:Subject:From:Message-Id:Date; b=CV6j18m7cYVqCnYP0pj0QwrBPJ5/VuzWXS93vFBzA1tSqVgyQHwn/k0Jz4fuy/7ReIG7hwIL+DkbJ8h+YnXYwYNzCCwbR0BgjAxaSQ1htQ2r0SISxPKjpHIjUSKDdMJCueg7aCrRaCOIUNqt46V3Co2yk+YU8vjqwiuM5CwiyDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peSZb2L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peSZb2L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C47C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768948433;
	bh=9UGzQJB5LH52llc15Y9EzQEdpLBxi8asNMMsK5KW34c=;
	h=To:Subject:From:Date:From;
	b=peSZb2L4UxQyESMbANyBK0NvXfMRIwnr+AgPvPiZJQawHJ59t70mbLjNw5ljJ0vzU
	 7RjAhoBnOdVf2p/I3toy/LbrXReBtHb4/D2ugkQAJdlt9F+PydBlGpI4b/mxiVo/0T
	 SYettJjHZhdFh3yNS4qi9qvjvrhR8MCklLN2OKoL5R3JVqM2SgsU6WA3KoEkimnBLZ
	 rGYbizjC6C1BLndt6Of97w4F6XJ41alLSBZFHnAcYZHwMjHoQM+cTPhWXsY1UfCpdy
	 1BkoDkndik1VFR8wSn8v/79APqENzCGqqvEi5ASngHqWF2q8iz+4M9hpncFB6oXmQC
	 kkhAOGZgxhfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914DAD262A7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894843358.26865.9988089411597799747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d83cdd524f255f42c816d055b0ae16098e86581c4971da39ebd84cf388d67cd
Date: Tue, 20 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768948433
