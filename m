Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE6C218580
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743951594; cv=none; b=c90dKlf9lAPLRVS6WSHdV4Qjhb7NzVCJpx7Fvh/TsQKUnRr0nEVuVE9me8n4PA5qverXE6lFUT2ZeTT8NIRfwHtFKu/lTiHeTK3gGQZqT9O6MWmfYSK9108+SbLoNYZ2X/NSe5TldDDxwA9DeynaUKr8D59yZIzpkdkhI8k6EIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743951594; c=relaxed/simple;
	bh=4LXj/LFOy5eo8A4atItxB1W9krIxyP9cQMJ5SI+gVpk=;
	h=To:Subject:From:Message-Id:Date; b=B5hHPhtnQlxin6jIFD59YCCg7LSy1M0uDWLQyGAjqPWasx0doBTrUMhs+7X3qBbzj8WQaf4phv2tGBrfqoQZHDuU1hN37Zm9ui8rffgSFnyAvUgSxx6YfO/Ao/ISj7wB64oOeonm0e3mT95ljBKWCdVwJvrzFNhZSW2YJt3mu6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciShfL/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciShfL/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743951593;
	bh=4LXj/LFOy5eo8A4atItxB1W9krIxyP9cQMJ5SI+gVpk=;
	h=To:Subject:From:Date:From;
	b=ciShfL/oVc2IS1/g/MDk9rPQyF0Rn2aggWpgmTjF8X49jtJVet2y/Ap6GI0pgHEKK
	 Q2sExZL3e/c6IS2r3w0Mq/P5x9VVYMnPrw1m1bORlr6RrU5v2WSCUzrxoyZxG0xr7K
	 Him7xwE+7BvIhj2xpZgrLD3OyZvmmGVXAOkBDsHCP3K4BbF1ZG4LeKf0/lVJBh+Cre
	 OCgwuCPk6qRI4WbUm1dVNw1vesRkDRv93BqssaanCZr5CSnn++oyt1112JpcakCBXB
	 yTb4Aee5wQLclqaQDcwLiP/hYyO/v1aML1JU8A+JusLSMlvhdahRvdwOwo7gr3rfA9
	 vsuSIs4bhXFfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98798C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395159359.8013.9397436136731692943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c438c5d1b3fccbc636c088ca991298a1d8b058815ccece80b75480fb9017725a
Date: Sun, 06 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743951593
