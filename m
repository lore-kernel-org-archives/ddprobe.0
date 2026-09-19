Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532CB380FC4
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789804834; cv=none; b=jFLLqmT10cOlpeO9G3dupX4DRiz5fx7+7qeKPugAyxqWItQXE39uCJv9XYQ0m3uhfBWfFs3KhoAOTvFFnT48R6JT5GvhGMiDWOJu/rH1GfMWuXDncXq7KWukETecsNm633s1ph+bY2vvVbhhzTdoZvQp99W3f5ScE6KHd4P1Dzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789804834; c=relaxed/simple;
	bh=VrFiWdv+yivnbqx9os8XBHAoVl9VN9YozOH6Tu3p5MA=;
	h=To:Subject:From:Message-Id:Date; b=UQvFGZgmxIKQqZkHg1vLEnPinxWieJcQjDC2Bwq2BZmTdHuKyt6CsuDD2t8PSH0cUKC3GEo7ZolaFbU0PVMT50+mw3qG00KoWDfVLMCg/EQyFlcM7jj7B5chJ+rrfwo1y77/AGk0UzC5aSGBTeJaWtB5WIuwXfHmI2p6cJ7Ie8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZQMifXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZQMifXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30A9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789804833;
	bh=VrFiWdv+yivnbqx9os8XBHAoVl9VN9YozOH6Tu3p5MA=;
	h=To:Subject:From:Date:From;
	b=oZQMifXxHA8/orExThvtV22zmzK93ea/Y7tWx9F3B4Mj4nW+UTndI3I/vWyTZbe69
	 Mg75uAGw6SBgtZSKf2XhaMnxNg+43CoC3+CQXadl+eA3EJiaw+uSwSNymJERt/chdE
	 zxzSiqFgn+RQIh1MMzsbSo9v6By2OftBgXOyvrBrmHl556Z+7ek88Ua+KrmohNCF37
	 MuSJNk5lMFrnuYQJyYaPnrwEpY3L9RVAm5h+82idhGr5W40TaYqItH6tMle6YaRgcN
	 sGNbbpNixmwA0cnNXXbjUVO2yHPVsVBz4HCDUmAjw+B+i1HGgZ8D4nt0BPA3qdjz8o
	 kE8vqZBib22Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA49C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980483368.19124.11673029176656364758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478505ce479eea4601be0ff8648faa3f5af4dbd9f9ffe59b950d82c5a6a4c3fe
Date: Sat, 19 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789804833
