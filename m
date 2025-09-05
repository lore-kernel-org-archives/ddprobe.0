Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BDDDF71
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757059794; cv=none; b=XfDrhDFqdOMr+xio+VTXdc3eRbefvLQV1qUsdqIuYTBeRjr4SPJkzrQnkr8l3lxFMgaMuBESy0QRtbohKxO5ix8c0O9diKxiUK+LLrCsKSIjUf1jo7x0sfMkY8q9cd9yLoqudNnWmUMgfDyCDWCciPm+VTxCkAZUUeZv81Wu8YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757059794; c=relaxed/simple;
	bh=PEB2OJLBKVLe7v6vJfA+YtWy1e2AEyRSEM5+gzkJwB4=;
	h=To:Subject:From:Message-Id:Date; b=f+kKgPKK8ESBnOK3Uz32AWgYEaqIdG01YhIL65bB+WKlP4+CGrI2jB9EiTTWNe//aqwADciOkWN4CkAMypsbYFW0DbIVBziR9e8NzHVp8KMR2p0WDGLqFDhDCfs/TZT2DlH3wCWIlboclrChDjALqWmvZSWJLVRhhZq7/aTt+S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaqrzY/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaqrzY/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4331C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757059793;
	bh=PEB2OJLBKVLe7v6vJfA+YtWy1e2AEyRSEM5+gzkJwB4=;
	h=To:Subject:From:Date:From;
	b=NaqrzY/RF1DgxxwgauwvelVJInGApdiL4oj8zaQ0yZ08xYLKgdWIOg7AnaZUrKQrF
	 MjDCLX/q2rK5n2FN4PjlmmMKaliEHdUGo1GYsu12dMpIQLXHnDONCJeG7+v+RMmWhU
	 YbNIH0LZtxXXOpurmiYRw32XKC/ClgZXzsvX4CqM+vppLY0FrdeZkWgCzVR0JwD31d
	 2ftRMrbDjfJuvxgGbsHRPhVh4VQaJ3VC9j5/oqsaimW87meGAIGPb995M0gmQzvn2i
	 Fwc3LOAsR6q3GhiZhOfK5zGVXhEZDHyjHK0LaIglsHKINx2/hJhdrgjf6bvBtAzuy6
	 lvg/KfN1KjyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB04CA1015
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705979357.12503.17890989024082482839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a8a656b861e1e44f3873eb2e941b5b85332636648a87a3c7c15851291a1e41
Date: Fri, 05 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757059793
