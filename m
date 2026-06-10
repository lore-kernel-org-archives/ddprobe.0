Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239D829C328
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781130394; cv=none; b=CC0K16jjcvhXFVFNBRxeAYb8cWzG48y37udO0CFiuo8zK26OfxiPKkY07QM++uQHq7cai4HKmbtqe5ZsC1gyTAEmHDMguGS9Z2pnn+HkmR1LbDut0lEbkhXcY5NlbkHorqDWVQWcQKIDl0iQRSYhoUhDwCaORR6Bvo3ZO24iV08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781130394; c=relaxed/simple;
	bh=9cB/yyGtyL6EE165CUouZvEDmov5ctDtjcvgvc/d3Gs=;
	h=To:Subject:From:Message-Id:Date; b=Lt95MkOxl9R5wMgvA/DUWFMz/r5ObeJcoEQhk4MhGr001LkHbGS/E2kbj0F1cs8Sj+773pehPN4eQBy2xmEcpczuqd9b/uw6G43milPk3gef/mRBwG012vswM6QeBrZngQrvsYOM0mP2seL5JLlbHP/IQYMe2cDOvgEJWyGJrw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPqXoNm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPqXoNm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AA1C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781130393;
	bh=9cB/yyGtyL6EE165CUouZvEDmov5ctDtjcvgvc/d3Gs=;
	h=To:Subject:From:Date:From;
	b=FPqXoNm0ElDGD8azsavwdnYc7ohipx5cg3fVCBc+XE3mF0/R6K8XXdeVj1grRjSrD
	 If7DxFe0jdLErmzKCllmd8WTy1vrRAXLs3ewLjwN6BvpKpBH5K4OF9Xo/fLZppZOST
	 xa/PZYyWYLUQxBd8Y3uKP2ulrtmBnHBdZCfPCfjDE2PR5L0CEFH68gt+X7muPalfGL
	 SVIIZnkOUcAm4wbemkyTnYHRVu+hMobl1wIlw/q0LiKw/6nRQEEJyT3Yyk6p6TXr/2
	 OHzeH9hxEYzXf4XqKjcTTxLiAtYdELLZzqXOlS5zZdw8LMMv7qV9Xf7OkVpVDliM0Q
	 WtpbJJ9xotimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74DFCD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113039367.1873.2130649267473117688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81ef50133587991f0ed3c3fb63b0c06c826112cbfa91659b4d36677d93d53f9
Date: Wed, 10 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781130393
