Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033F5361DA4
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765980234; cv=none; b=YEXxXc+z5jaLBythXMWxewRe+KfpsnQlKvDk10oXv30JG42u2dHaRf52eclzu9EWKdkpWESZ+HPDoxcq2P/S78QI9416UMgwAf//iWr51yL9GXnIDG61RcjOVUwJauPwTkinP55w2E+PMrqXH0lPXGJ0eSUoXpWj0VWF3ffF1i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765980234; c=relaxed/simple;
	bh=KGiYf4ix/lK0jUm+7rdUCuBMFjjrfKSgwFglHmZNkTs=;
	h=To:Subject:From:Message-Id:Date; b=CkPVAFgrZXpb0CJStZPhROeJ6cBm9G1LpUUVBjMYr6O5lq6qgBlAVGIZGDyTyZ1AGeVEBE6euALFRh9Wayn0dDDNtWRtGJoeIZKE6ukLiemguCWkGlyKYvBrqdw/UR9FsCy1jb/+Gg+VdJMg+HhiY6PoVB7PCTUIc1yb0nSliGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kry4yh5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kry4yh5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98921C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765980233;
	bh=KGiYf4ix/lK0jUm+7rdUCuBMFjjrfKSgwFglHmZNkTs=;
	h=To:Subject:From:Date:From;
	b=Kry4yh5Mdng2bur5FagdsOGsdRp+fMJzsOLQzv3glaf9Pxn5R9TD67f8HS6hAtAKO
	 ooDRQqTlgBp9u9oTZN/1G5R5g5Mr+Nwh6MhRwbxcr2R/owtK5ZTf36hyH7mvNND3yv
	 Ev7W+seklNe0eHk/FjUdp6ekDLEK48G7RzXASmSjZbmSM4Eh/KdsicMcMR5TrPKE1i
	 aKSBakQOB3Qjfd/TDijPdWdhso/DUwbK/1XaWKi0B+aR5hSxqlRI1ocBTw6jzVtxTy
	 q6Cwru5xsMwUC972YcJSzuGZGxHR4XmAT8OchJJZYIwTbX3fJxwnhblk8+3YarecRs
	 0+/qFwmuiC0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC6D65C49
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598023358.25189.16279995411528693110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d993ec0d6d587c9a84baf02fcded78c9f00935c6a59079c09ceeef257f927016
Date: Wed, 17 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765980233
