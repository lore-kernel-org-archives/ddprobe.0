Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619EC2C69B
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719726863; cv=none; b=VkVpJ6jDPUAGMpa4KXPQDYvFuCHYRvkfGfOTb2AoAhiOhQsbXpyoX7prvGdYaq3h9LDjupJnqk6kSju2z6/pky9mRJMEkpztZSYzHtvH6O6z79thHiBNJNkne90FBweJUsymp7uAVSvOLQvgaHcLTnftdfgCVs4T61A0Szg6Va4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719726863; c=relaxed/simple;
	bh=REeW9Rqtf1GR7NsxseIZhsPdOjgGb7HVm8COccfn5JQ=;
	h=To:Subject:From:Message-Id:Date; b=CEYO2+q0ncYo6XqBmkqEfRFMlWwfy5NDLnchugwooHjj9M6Qn/ahEy+uefS795vri/8JtuLiClTC4l7MY41H7h9JaAhnQ6smkqJXvugbwJyWnjOIJt19fEs6zRV5VReMrPVN8rQBW2ZDM5qcWXjfWBcLKQQB6yuplYRuby3aMAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=re3HU6GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="re3HU6GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42D4C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719726862;
	bh=REeW9Rqtf1GR7NsxseIZhsPdOjgGb7HVm8COccfn5JQ=;
	h=To:Subject:From:Date:From;
	b=re3HU6GEqmuhIkDBe5krXU3403v+8zRJxltWDHs3diIR90qc8OYvtTGuKmiXI+OKm
	 xaZm4rzC/DIiAscdXWf0rA9/ouGaIwbyueLPyKA0zarAVs83AglGC0VeFha8gXzIly
	 QC2JUhFonAByMnoSma8LUYWtBo+4BX1kqMzy0+VeqyDtZVId+F6Jlpa86mf2npRL2v
	 fqtg6BGnYTk3MilwD+oZZrqySXcG7t0zloF1bFCy/Xl7rtvC0fbC6w2dsub8fEY3fg
	 ExQMcwXmfD8w0B65p1M638MhD0MPiouTA2p3MYCOUiL+7J614jgJhn/R1iE1JgQFNq
	 aqXJSKvjylWbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC41FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972686279.549.11877376114841570604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf4b1c5b1bd4d239f484e5da999ef42786d976f4646eff1f6fa6f13f14a5a14
Date: Sun, 30 Jun 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719726862
