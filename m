Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28471212572
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761481794; cv=none; b=o/Cmb/LdjyIynmE93UU1JcQjBj3BwEO8emfqBLHw3EmvnjlJI1Y+TapnCYVFv8y/yQfJ37FTOP97wCev5szsdE2JKZiqCO67O+F92g7CdDARRE3kNOH/pStUOd7pZPgOGHuQSGKhJSvXI4mlj+Q/Dq+cuiRLZbhs17YzSfA9PMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761481794; c=relaxed/simple;
	bh=00WN/qxDZFAimqY45O1FIrnImc3S9rjXAkmwny7aSEs=;
	h=To:Subject:From:Message-Id:Date; b=qkpam+6oFdId+PGGoVM6s/Bn5Vp14OVLqJsKbDD0QM4COefOqEHVx7hCiTqfvV6cM6CQ9uj89NvYKvA4tRgxt2oZdIB0tzKg6/DfCYrBfLSANK6FC2Cql1PGRQS6l5uXG9Hv/4K8uxoV40KzlcYDskQ5uH+iuP/kSRVtnJ1KvNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkT2xdWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkT2xdWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761481793;
	bh=00WN/qxDZFAimqY45O1FIrnImc3S9rjXAkmwny7aSEs=;
	h=To:Subject:From:Date:From;
	b=dkT2xdWxR20rVF19ACl/zJkQH6+sRQyaE1ayMZ9sPU4UBzHbGwA5rt+x5oSDmmLHc
	 NqswBM16420WRQpT69/nGkfah2DZtYLPMKwrPmjJJL5K1tp00EQIt4M811aVkcJirB
	 wNbIo7sx7Mc8SIb4paERJWbRfwu/2nxKUhjhBXGBvtGPDUE4fj6TI50ZfuyfvVb9Xe
	 gPK8SbKXeu7fzPY7/OuLj9rYb15nKzCrQ/EMRxLCkrQOauRrQ6B++qRgcgxCQZSTR1
	 Na4KukPJ6CXyq9HhonpsrR12hVpDglUSacP3MOzFpwK3JDNjgQXIOdVjLi7IqyMTw/
	 831CXYBHlPVwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90305CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148179358.27544.249240939170392392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb57f01fadc689562f915c2f050ae3caa9bcc41ed8c8a8ddaabb05717c19c85
Date: Sun, 26 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761481793
