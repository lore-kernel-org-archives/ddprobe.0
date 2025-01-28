Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5582419755B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738101954; cv=none; b=rw4p6s6Y5yIzf18gB435ajDC/bXZgzj5ZVBsbxXwwBbj/oFS5MMI2H56xt8Tora0MVa9IFFNPGHYhN5ye5RMzvLtf/MW/wCyptK8jNvfLdWoA03cQ2T/hVxZM8J8s7czP46IpLphjQnJcnNe+bdxFPejuqLFHkNo3avFCuVLNeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738101954; c=relaxed/simple;
	bh=2Cv53yrZNw5vBscUBZQTQ0OJprN2Lls+7ZfFwfncs3k=;
	h=To:Subject:From:Message-Id:Date; b=EhMQ6wKw4/7Q9zaJ6GICMrTLCfC7V29ODPvu52q8X1TVHm+vf9emDhWY3LYnEmjSo1tjIsCeg1I+CKTO5zt6Y2R7BLV+QZoa7NV1G1Fxg6/oKiVvEyc3mo0wan9nnrdbwI/jsxETcC2tC0NTx70zZsVIs5PhpWN1xjZ8LQu8LZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCNTdugt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCNTdugt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0948C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738101953;
	bh=2Cv53yrZNw5vBscUBZQTQ0OJprN2Lls+7ZfFwfncs3k=;
	h=To:Subject:From:Date:From;
	b=bCNTdugtLFOVjXOfuZpO3Ep+6H4R+qTPeRi8FemSMzHoAkqYUTlpq6KCFTomoIvu+
	 d/BVUDNSVHJTsU9RFfxM6c9Z1nWRWp2zYRtuWRR9o1krWY36Zb7sKbdsVIKWw5arU+
	 YwBjQpa709lbBNi2ElBF+BSNgyPeCYrF4UHDy1xwh6ANICJtp0dnc0l+h6EpMb7u+s
	 TtvVjRxOTryqlpJ89Ew4HyIb2K7M13A94fOzBYnUT1Uvgisol26+APQyHPliY0Om5/
	 GrwgsY7ZItzoXikYgqjksBO+7gfLv5BqmLb4lsL0p/9DMNnzy6PRR5jSJDZs5zczb9
	 dFrKIavmZbAAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3599C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173810195365.7751.4489792880329147995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f395299b57df79b5ec49c6aed9a2a37a202b94887476f146c96d313f201075de
Date: Tue, 28 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738101953
