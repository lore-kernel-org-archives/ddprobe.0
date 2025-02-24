Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6C81ACEA7
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740376735; cv=none; b=WNOJ7XASaeeut6B3OroYy0/f957qybzFhBgnO0Sg32nhsCi6P9PxhoJtFBHAT8MOjPg9e16uLVonH5UBefbdhMMQznz0tmg2N7WDFEdT6vFfVuy0n5ZB14rBH0BtFwCC2jfosljbv1y4VVH7S3v+vS00J5QuCVuiVHUeQksQQMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740376735; c=relaxed/simple;
	bh=/o090g/fOAQ9kj/lTlhQtfFXQ9aj1pm1d5OwlvEb/zc=;
	h=To:Subject:From:Message-Id:Date; b=NX3FwP4hHcQyEQL8QLy20mTaWV412XMgBjtncCrUKE4ZltQ1CRXtun2xyHH6zhJfYWrDnuPLNNZ3v7V/HqFs9iqgkZu3F37Ird/rl4OO8ecCFyS6X9f/BWlft05FmKrQ36ikTdGm+72DWNtHtJOuxzjpbCjeroE3RHkd4JIAlBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNfW7RYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNfW7RYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E2FC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740376733;
	bh=/o090g/fOAQ9kj/lTlhQtfFXQ9aj1pm1d5OwlvEb/zc=;
	h=To:Subject:From:Date:From;
	b=vNfW7RYPCJhgoacdhXSexu5/CEMN/QkfxeCawLsJM5VUh8BPTOEj2Snnb0X8kyyGX
	 D/fzZ1UBwGa+ZCK+QtkIv425Ub+JnGkrgESWWNHYgQ7Rv7H7V1wvkI0wh9hyX8kGze
	 oB4U9sZgzIFq2fB0NV2HUMnygI42VCwGMtMrNHCXGfqSWNS9er12zx0irwG1U2LJID
	 BE+cNJVrYBnO1Hi7cTInQk+IeU4nRXQMaUA5DbO4IQIhz8P6XXSHiK9X/1sXi3BCxq
	 zipYEpkcZdbCPN3nmz2zgeL7oKFQIWmheCoKCGJRD7Gtl+Vli7X8628DBBJG9uWUyp
	 1j/YJrItwGngg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B7C021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174037673360.9266.15651779033918111001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf316de470a895545b6bb579bccdc8351d1c3078562d692e43491af0c809884
Date: Mon, 24 Feb 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740376733
