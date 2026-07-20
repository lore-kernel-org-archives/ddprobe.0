Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477B1422523
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784552914; cv=none; b=lkrZLvl++JmtZyfodxH/FUgU13qOrrFCEta1yhpXbyfBglL1SuSYvuGXGt0+AFvP3zxS/7HsSqgqXPgj8OOIzggql3yhA4EM+/h6qzQ9XOOtvXxvzg2oVZ5xFtxlJkTBCdjMUmMQulTwE1fOx8iIkNp4N6mPDUMFrKS8dDN78i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784552914; c=relaxed/simple;
	bh=CdA0J+fuP/5866BUmGWex/npO8NSX4UqHj20KNZnJRM=;
	h=To:Subject:From:Message-Id:Date; b=EHxPsdZFWDLt0FFDvWllRKUXe2UwrXatsba3wzH/B2sv7Mpookw2SkgFvvL4VuIWbEuGb1kj5qS1VNxWGmoDUjx0MyTHdz5TFQ8BqC3ClTMh/Af8ABpU43Gzvl3tBHSxTuUf2CuCRtPwAfL64COrUmQapnNqOxt9GD0li/6QVmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcNuSAsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcNuSAsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC402C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784552913;
	bh=CdA0J+fuP/5866BUmGWex/npO8NSX4UqHj20KNZnJRM=;
	h=To:Subject:From:Date:From;
	b=QcNuSAsU9K8GPi4+K3sXWCJkxXO9YAq0DYh8aZE1owFMZOxY+RcaSkzv/1er4Ay9E
	 NhbUrO4uDD2v44g/7imrG4CkWsArwf0W/+5/LKAcMhr/R6fp3W+s4umIf3UDGViFJY
	 i8tgIwZYZ4tM49dlRFn2eX7Ddu+LOrQSiAUQ1f6Yb7ivZScCi6eJpsce3/Dr0DM5OF
	 ejnGGMJ6E97kWPBqPZ6FNF8M+ZMWoz8EvxJn54hs5NgW3t5GSdttx+CNSI8nbyxFNV
	 2QmEygxiJgnH32e0T7WMOUNfqfT5k89gWyh/51mBIZ0oxv/M87O/Myl4WqoqAebJko
	 2FyfQJFz9NQPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A939AC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455291368.20625.4722482326376882872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15324c57d949e47d3edd6aec314673b094ac5ae34b9fc4b68ad26e7035bccd65
Date: Mon, 20 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784552913
