Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1318336680D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769883834; cv=none; b=idq7RPCs+owDly3aI6xWwws6iio2R3Nu4i/ofhiB7ldgFSP51XRNYfM+9qggdJ4iDPEUgNE9QNtnmnDK8TzzbcWYx15kxcjvmk/P+01H0AqWBRv5waGagpBvtLtF9H1ZWfsz1JVWjQiKeMi1Sw+9OvU4tqU5CgQmYNehN5PMUwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769883834; c=relaxed/simple;
	bh=76y7uYHwklH3GAT52TmscGhykZusTZ92NipRnZSjYBs=;
	h=To:Subject:From:Message-Id:Date; b=q5YYWKkAHonQNqID1ANPXbCnst65XCXblfYKY7qY/k6Z14re6/xh0+jI0p9/+dbWdUfvarEPzee4UktIDqhd/J0eYrnWr2VoHYjVt4erTZrF6Ba2EDyM26m0oO8kbTIhGc1LbeTulLLR4+0suAqAFIjJXcvetPvU6O7Wa7WpKD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODSXxSsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODSXxSsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2249C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769883833;
	bh=76y7uYHwklH3GAT52TmscGhykZusTZ92NipRnZSjYBs=;
	h=To:Subject:From:Date:From;
	b=ODSXxSspLBdLApqrFDJjbNDst4ALDQbVKPPgsj1UZFBjC6zvi93WuhzgGwW0BCIxu
	 cH44IiosSR6mqWQoTySsOvLnxT7NZNpfxyFs/rpcZhjKziQqaojceyJviqrVvgbhCV
	 bPKs78Lp+jGxl2cQE5M3BJwuW5YyQ+FCvMthA8jDAz13Hj+y+QKCI+WAzO0qz4y2SC
	 +pKs9RlMd7HzwuxY+R4RP4J+Z3ivLWLK2xKNlRFWpxh5Cz4uE5It6DvPcfKP2tnEiN
	 Wrj9tzTern6o3a2Uf4LTqQpAXlDbCvBjaDk5bmfDKJbU8Mu1tcx/xeoT0aDUFgUHnK
	 A67+10HTTq4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E52D73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988383357.4109.13669420045776314515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f429255fa0eef271ddf197175359f0795cf664ec931c024ba0025d700bd021
Date: Sat, 31 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769883833
