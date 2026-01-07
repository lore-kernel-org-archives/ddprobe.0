Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C7A23372C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774234; cv=none; b=tDmNSdFnLVpMhuWYU8i4fx2cuBvL9+2xUeMwjHdAN/tOtQygIIUGvOWlPVMx57wU9Jax3riWzTtXrRsR2uh4iEeIz/etO80SKXrMDSgWspmfWbcxGA+PulIP0IYzzpYyYznnR3oNcu5G97AV5KIFYeaqCHwjonrDIjhx+kCoa/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774234; c=relaxed/simple;
	bh=cFRqBHNrV8+pQgXevU2a4J+ns7JmN6NGcMh4PU6n/nE=;
	h=To:Subject:From:Message-Id:Date; b=NB3fcIpUhaZ7gscX9tisTkwJDEjz4J5jJXs1w38GzuM6IPCfc0QnTLxrVFArY01INQ8Lq3v3ORI+vW1Trtn9KyelWWC4/7A+akD9DQSNhNV0ZU/w4YyipklEnkfYZPvPb4klKnJyt7DzbX/OqIFgJnYYJoY/G3z7CgCH3ktBXlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okc3qATS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okc3qATS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EF5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767774233;
	bh=cFRqBHNrV8+pQgXevU2a4J+ns7JmN6NGcMh4PU6n/nE=;
	h=To:Subject:From:Date:From;
	b=okc3qATS/uVMBrFxyIQLZpxwevvVHRDYum8j73sw+Xw5veZSzc/KIwhl1Pix5z8V3
	 KrvGdQ1jJKAAKzDqjs0sID0bFV7cRN8GdYlM7BVkfByemp5EWAI5+yoV7B3Dq5hi3O
	 GgtguNnOMSUOmjNa+rw5xy8dEEGZN3WtNKnyqxODWkiWsaSWL0NALMaUCI8DVJBj0A
	 Epc0uQEBdUcyNqPKqzcy2sSBzE9503POfvEit2xsiolVC9Q09asKDFgudSIigqx8dc
	 j1LJ+ZSYCaXZK6Ft+V9Q8hlFQ+5Iu6QS4EO3AHlbkyyjpeXGKNajwkT6mENXJhBt52
	 PnLQYuVMz0+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1648CF6C08
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777423364.13453.14774066643435830994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc14b3cd0913fe33c1b8a6ebbb379262df34e80943d47836c333b6b37212f9a
Date: Wed, 07 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767774233
