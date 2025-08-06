Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379941114
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754443794; cv=none; b=jeN7vmXj5SO5opGef+xMqai1lx29J8LwlwQUBooyxPE+Ca4vn/T9Ex85mishkCRxduBNubAOyPlWqU3B5mu1Hikg9spHs/CpeMutZ3G8kFbTeRjl5dMGcsg871cXyqOoAfJBLPpkjs2qqqg4yYg1Ay2zD5qp2XYcTuO+Sdfztzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754443794; c=relaxed/simple;
	bh=AkrJrctGzHdfaPIK31665MxqqWVzEaSa3X+rZX+tXtw=;
	h=To:Subject:From:Message-Id:Date; b=Yw/pXKfMWX83Ei+eW26eJHE+zxB3pW6glOh9LNp+R9k5VlnGKV124ht/+wCbNDM5f6ng2EEfovrXdOb9QH01A/x0OSRbW4wJpLOG7rBoYDRSikTtmq463ao2SU3zA4I86KnOcu7qHYpbawoVTrhM2QBD2iK9O9F/V/1awkTDvSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh6z7pgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh6z7pgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754443793;
	bh=AkrJrctGzHdfaPIK31665MxqqWVzEaSa3X+rZX+tXtw=;
	h=To:Subject:From:Date:From;
	b=nh6z7pgKu+QMgcw3cBQy5DVGSm0SVvHmnqVCk9ZMTJDJM0mGZUxaJCQTlQ6zwgpHP
	 kNuVGbO2l+5v94Zr2PcvLZgOKvGJi1LUbiVpxttHq8VliRcMzgjbgibUSJlCWeKX2o
	 /OidPd6Gp3H/7ABicZJdx1rdws8kVoc9iR20qOutU1/iSLdinmSY7NUVOHCZoPdiT7
	 JlJrt4cU2wp44RjwetNRu+jQSqypl9fthL16iBRow1G3hc/Lq1REPPc5T95vvjpBl6
	 sdqDV8ApfqraXNPmkY88aoUkuPbHWxn8DUzNjFNQhuEgDzGORtxdiH/m0o7Rn9KDNV
	 gemLVjM1yNkUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F10C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444379358.15180.14718946270952245888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf428a2b9305a47e2e204626ac657c2b38997a6cd07ad775e18fcbf9dbd10b8
Date: Wed, 06 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754443793
