Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D345B665
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766879034; cv=none; b=IBvH0BD94Trtfn/RtnQp+cwEX8EV5B/i/Wy1FRK9vMes53d2Ehe04gkcRTVSheaBbj99k9FivM+AZOXqG7oRbAcnaJvSGB3mH23yEKT/4P0n522MlQRBc2Li8SgrLDEHHbz8MObNfPaHFsF+lNR/jrirGxyasGFzpuwLi/AkVf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766879034; c=relaxed/simple;
	bh=S9Z8OnrVMEGbfeB98a3MAV1pGCfh17Qkr+eGCurqXi4=;
	h=To:Subject:From:Message-Id:Date; b=hARNZlKuA/GZYIjrCLfYqr7ZiaBz5WbM+NMKFqts5iYL+UZ8r29RmdQRlySD4gSV0OP8YLCPlQ3WbJu289rJp/x994TgDilzFZEEjmsPJlLnEWORSpg7M9KJvC3KRSBLinukyzXeVOjNx+WCTn+cQ9M/SKvIC8uPJHbXXLBnawc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neY8wIwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neY8wIwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC951C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766879033;
	bh=S9Z8OnrVMEGbfeB98a3MAV1pGCfh17Qkr+eGCurqXi4=;
	h=To:Subject:From:Date:From;
	b=neY8wIwvyeBWntNYpMkeY2MRfM0OFvyZ82d3yxW4dy7NNZFzhNiyBCx+qNxRlAyth
	 1F6VDJhK+3CzssyHUCmfQyDwnWrQtlTT/bKuQ4DcwzCIQxN4R4Yodj2o7VhGTe7X3B
	 8iCU9Vp4sQQFn9ZOLNLyuASUUnE/8UhC/7sWd9kZDTt3pY0KoJ3L71BOANelgS/qKh
	 V8vom4OEMaSGHkBiqAG/ymKR8/pBwquvm/RQdB/WKn2g3vhN7vkSo6E781TDk5jw5N
	 5NUfqb6sGE5613omxzJrDEHt53w98AK/tB2cYU+PnPCVh/abxYKVBz9pgBaWlKfyjg
	 Aonhb1+SmRFrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA52E92723
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687903359.8016.9831326717274168081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c003725ccf8ea2c2d18a00399e95e84cce8cbfc1bbc50b2cdcfc0d068b8a70d
Date: Sat, 27 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766879033
