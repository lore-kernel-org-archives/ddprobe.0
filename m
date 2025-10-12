Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263731F4190
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760306394; cv=none; b=XxHMnp8JtOjkbQJQUoqztFu1Mo4gzRfsxqm+SPY4Uk17ym5hp47CHOYSLFlLzfAd49xh/6/FZIiRQ/FVblG6qMJ5BAJaPy/nfztJMGyEliya5Wzc80oq9rJiNRC6i5jYZzIHr8pPqQdtdCXmH0m/xaYii+iicuyArgKrSbNIr7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760306394; c=relaxed/simple;
	bh=Wq13yowLVbweo/J3nIgMczXTrwgeNKpCdLC7DCrwUQE=;
	h=To:Subject:From:Message-Id:Date; b=SGqrzWA2mASmRpQWnKmYD3r6owgXpRXnqLiTuSavdD5vxRYvCN7YRixSs8rXQx2DKo9fog5RvotRImUGkWXyWy8V59X2UDYqaQFQ0e1koq58hUOhIcSZfpiCTJE3NvatmLAS8TS6BBvKc2yiXDfb/p4lOVvQcmK8Im+jjq9124Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd/q6wMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd/q6wMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760306393;
	bh=Wq13yowLVbweo/J3nIgMczXTrwgeNKpCdLC7DCrwUQE=;
	h=To:Subject:From:Date:From;
	b=qd/q6wMxUFUyTpaWcZ//8k7qwF2Q74fsHlylmON71OGcGTljitNpl3R5K+u9oAZpC
	 KEV875ZkcICWJnX7tWdsKUnUqITXqI0oDQzasjC+gBCLppZ6batKvryrIjsfGdsy8J
	 VoEadTWByHsmKUwcKWwI0afQgk/IVkWgsKapWaSRGaM4OfpoQ+NKfzZrt8PYGXMMr5
	 qzGPBqdZUFTpjN4uQYBkKbjgksODkn4PlOBkbDK1uuq4eH12jQ4dNIApWgf+iizc6g
	 XyFnhlnL5HbS6Rs3gzY/VcmZMthyrs0qoNFCNz9N4W5a1QSqyBMueUmc9h/wlQTBuq
	 3ogB7SrI1CNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95300CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030639357.22098.12248984781247265588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ff2dbbdb94e923d9b8164d78a2b9ffd4674bc9c393d4b9a84d80e86c484e67
Date: Sun, 12 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760306393
