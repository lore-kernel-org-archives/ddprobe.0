Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E39714A0A3
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715244143; cv=none; b=EDX1TYV+rHcugH2Vj34uDgzDBhTYZpHXi0ZhlW/EnwP09iKlmy2/OwiFVKImAbI21r5hDRqNMIB7P2DpegNDr+zHpEgX6JEOZUQJ5dSm98PXmdjKObeNgKy5O4u6B5qYUbkrP0xOLeMofK2Kg1Lt65Vq0BRRrVNlNeE2pc0tP9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715244143; c=relaxed/simple;
	bh=6C7dSp/WgGlo/TV8pNfvZ0JxKNLfG/zBXqsD4+/BCJg=;
	h=To:Subject:From:Message-Id:Date; b=lqWys3YKQE1hDoCoKW8MvQXwHuE1vGz56YCdPChQemYaP+Wmz1an/sazhW0uE0S6lbt13m4Vx3doA+58I5zePBpTosyckafWJWiYrI7ptRkhjRhDEZP7+/fQ48v6iHFsFnZ4sYqcMv1Ib2ZZFnqPAeUOKKs09BZO0RbAT8v9zUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6vZp2tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6vZp2tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DDCC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715244142;
	bh=6C7dSp/WgGlo/TV8pNfvZ0JxKNLfG/zBXqsD4+/BCJg=;
	h=To:Subject:From:Date:From;
	b=G6vZp2tbhvQvigPaZOmbmhq9kxLSXqAex+eylpPbc2ECFju8wUzEpcGoJ/YQsCW1o
	 2TrFRi7l6LRC2FupCUNsoLFZKvO/tRf/VY+AjKkemNSz8WQg8/p1bUxKoo11mrTvte
	 r1MtlPWYHdSYSnES30ZMgTHwM8dHgpxdyWRtU+IU2sXfuObGItyaaEPex2FcvfJPc3
	 nY/SIPQZUyY8oU4oKRdn48AlAc+abAJCABOK9IGFS8r0OnXJX2aR5sQe94nYqUQqcU
	 gYVdIvP6zRQoqPGSa/0PnHOm2UZ1Osfmsjbzdbb3GO96i4N2NOK52nbSy3EoaYOWgG
	 FeqoDNrKB+dPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1A3C25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524414276.16063.1662109863290949937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe64bb21f50c68e6dc615dc99a67616651f043fbbdb73236e7698c61c092072
Date: Thu, 09 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715244142
