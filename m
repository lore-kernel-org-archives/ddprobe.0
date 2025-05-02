Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E8722F773
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746181794; cv=none; b=fVRVVw35s/2/ehWnrTzGNAQ+jsR6eOQtawVcA75oA9i5uIFb0kyuT9bsWn6y9NZss+LAf10RI8fjnGLv6cyAftzc+F8w/rJqlLpui4bVOFET2dwIhOjlXPErEDUJvXNvEPcx4I/cLmRUs3IIuHtkEd8FCuA7VruBd0KfnGZlduI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746181794; c=relaxed/simple;
	bh=zMQDh9glJzAqc1duExHbMdTSRxfRJEn4I4AkW9FWCgQ=;
	h=To:Subject:From:Message-Id:Date; b=X3Jd8fAMFQeHH4u4LhZHgpScSBCZNJTWhRkuEwtQOaqpV7zeCONLzBITSbKSYxiNaWauFRmNnma5JntUgbrIWwMcCwy5iN0efnsmZjDdIWrnemERAIIB57bp1+jZz/cY3SgJwaVCVJQmGBmgj2UV4Vjhv5M+oCD1F/EE00Ks4bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCKTnsvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCKTnsvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE4CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746181793;
	bh=zMQDh9glJzAqc1duExHbMdTSRxfRJEn4I4AkW9FWCgQ=;
	h=To:Subject:From:Date:From;
	b=MCKTnsvA/nqnL+uqzaTBz54O6zzslkHRYbh+jKRXMK3/CSZZVew8GRHV679P85jmm
	 RCQ3cQzTiGngHc4oeZzJgv1PASKRvGXBwdcXEELB1gAUslfRL/uiHs/xPXrSajAXMY
	 UG/tZeMdSk1ItEsJHQcxalbkBi6EGwB5wwDxcNcS59c9HcAQZi521NiqNA4bdSrKjr
	 3CBgRX626ilsJbm/OkLo0WjGPmUH3k6sdYV9gm16z1ZOpY28G7QcEry/XWCZ2NGgRX
	 W7zPPKphldP+W0K/qJIqIfRLer2+GeNz0DobZ8Ym3AvdUQ2dkA8rp0V0NDbcAvdK9R
	 Ys8iIW5KvQrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC6C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618179358.10154.6421058544707036870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4bd98d8cd839b4a7cae6e20498fd890debc6c2d7b1f744c5c1af89fec0ab19
Date: Fri, 02 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746181793
