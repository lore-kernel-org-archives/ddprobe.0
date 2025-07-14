Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B291277807
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752536994; cv=none; b=VOVgy+eYPkMX9CApk+oRkw3JNMYVtVkf4qU6YsrRUWVV7d4b4h+RFbhfYFB04jWDgfsgJXU2Ew9ztSdC3HRPMCOUyxwSEIy7lvtNljZvf5RIy0ibj1ECnfzeUIyo8rp3WzKmdpGNnFT/cCFsVmp3pVD9eCW0VQPJGfVzYsqT0oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752536994; c=relaxed/simple;
	bh=SGN1JGD44fIfK26XcR9tqLqdAQG9m9FfY3yP7m1o4Xo=;
	h=To:Subject:From:Message-Id:Date; b=QaF8qFglJd3MSFc7schLkZHPeDeTfk3vWHGPxOXdrfW0kXgBEJD/NilvAzsK0oTb5WaHu3uhpDR37llMaHYqbfDeL++Btn9qyl9IgRyLUckQnQk/tnuFTOxK6ogOsqYRiLCCNC3ySUn8B2Nnyt9n/1Ob5ZrrfapQ80itSsPTarQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7PF0Qlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7PF0Qlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752536993;
	bh=SGN1JGD44fIfK26XcR9tqLqdAQG9m9FfY3yP7m1o4Xo=;
	h=To:Subject:From:Date:From;
	b=i7PF0QlbAiFd10E1Jo8s5xXfBcgbIP6xwLfhVlghoNzbgp1h/8vczMFmC686XjuDv
	 pn7xtCANb/TIi8Ed45XHpGWhi0Is1MbsJCafLIqPZCdponkcT+CJMWkTqtFVFIrU1r
	 fQ0fqc02KWAKk8KeS3epVh0oYX7M4zYS0o7Q1WleJ/BKVmHdh1FE9RBAAxNLJ1iTNc
	 5BvyiRc/Xoc9kLcLmiqBSHb/w2nVR7OYh0PM+Nwt6X7rLSSoRS1FU26lMcaP3L9PjK
	 Z8hv8YvrAbocZECgi9PNF6BIVxA3qhNmbT7jNaK/A8KokTdUjHPNMOxtt0JQogX/Gd
	 skL58GN1dlg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D7C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253699357.32504.15257605153383490613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aaaa94d7f7a0824c92b2f2e59e7c42211afb72ef9aa46664cfe64b1fe1064e4
Date: Mon, 14 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752536993
