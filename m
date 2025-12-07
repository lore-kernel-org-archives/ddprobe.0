Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A56B2EBBAA
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765113174; cv=none; b=n2uHpm+HdmuMyaTArjuTOk+n+L8Bn3GcQYoNYFa94PSeTj/PjUqgS0L4Wp4k7RGDP4BVdLhSyGwIqdq+eCh/FIO4K2UoCbBb4OdigWEqn5VmmTcQh+Yi8VvUPjqb2dm0TKzWU5QJM8VD9/T09W54Z45PpG5yPFPeWlXdikf5USo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765113174; c=relaxed/simple;
	bh=EPEdeFm9ZR8xrq2D8j7H0yvGI08rHA6YW3UeFxAk+9E=;
	h=To:Subject:From:Message-Id:Date; b=u5py8+/QDip9e1CmoTkSvuwzj/pnoWIOt9RNfy8363YpSR9tmA/A8NoL848q01kLpyS9OQfIN/dUIclmmGuueUcfUHq+gB7EzpNHVXX/iPELJf9cKW6OcpIRCXvYgmEIdlK11jyPquvXSAckzBLUBuu6DwVumWAZNa7jsdfl6wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XU/s6QWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XU/s6QWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D1C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765113173;
	bh=EPEdeFm9ZR8xrq2D8j7H0yvGI08rHA6YW3UeFxAk+9E=;
	h=To:Subject:From:Date:From;
	b=XU/s6QWbhi5u2Ynz3vdzFylSsBtlZ8BawAtCjQqMk0p+022z92RvOdkKtY3iZ4w0t
	 jq1QWrGDdDsmPZmfzxEJ4FQ6U+IcTU7GINkGtgoNuO6Xmw2GtjacFCkmipuuwHkkaF
	 0FCxG7erk1L2R6znXCM1vgIrQ6ShpCEjcumUNjVv8TvEg4xQrMaZ/ujojASHBVQKhJ
	 1s5they6GRJxbPTlWfkjGSK+IDOdiIRFjA3f1DVfrUw6tBJaPL2s7oSjjJi9o6KZqd
	 fO3ehINERY6y5GGK/cKaBGr1/x/VilAwKNxH+qvV5LemPnZ2KMTvxrKsth6lPD5+9M
	 juKSDN8saOpwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94027D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511317358.6718.5480098403608500157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5d0051d2e3e8e4ea9b471c1dd975acc9af78dc491848cdbd5355dcce5866bf
Date: Sun, 07 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765113173
