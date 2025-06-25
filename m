Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2984B18871F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750817994; cv=none; b=E/yrxHy0URqxXw+XDwWrR23cynWGCRi5HEJ5+i2l8uSnxdsXgsFPHCMOOlhvFcREgzfjmXZ9SnXSwVSpTxvGxHI9SEj/y8cfiahGDd0mvueH1rEgMRko9XykKPYTUDvk5urB6D6x4Ko4d2Xj6W5lAigyb7tPOSkwdSV51N2ZaDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750817994; c=relaxed/simple;
	bh=G+ln4SCqP2Ouu7jRyYe4CtrIBGV94SV5DNlGNA8devg=;
	h=To:Subject:From:Message-Id:Date; b=qZZAXJC4VB/6GU2+H0JZbvE0u8+7iMTJ+ffW0AOrkt9rqrm0xqZiKAtM8aFkz0AVWy0L9z44CXHfjErrDa9XXhrXIjhLv1ieNjL1EmbcInrEFoNSEffVHesNBqfcV2x/34yvJDlX8hkqtqi/Ydd/n6AzV5YPvra3tPPJNFJYOqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy6g81QV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy6g81QV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A099AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750817993;
	bh=G+ln4SCqP2Ouu7jRyYe4CtrIBGV94SV5DNlGNA8devg=;
	h=To:Subject:From:Date:From;
	b=gy6g81QVhKFBiQfxOzfx0IR3qYCl5uiB7J/lY89BZoTHggJW86SVSu1GBgLxur4Q2
	 rD0N1yIYklDCQxAJ2DgL/7QoTLNUTUN6LJutonWJiHWggVzaG+rA31qaro2V+CSIrf
	 mIe5T0i+684Fgnhdasd1tJxUCoavdK94xYYukCZSJPZpYnpK+V3pUiAtWm+efwNAUa
	 dQN7x5vOzNeRMcPr/+KCkQU6uomlhyQuCevsLKb6tPCRT6MPMuaqpWhkKMbNCfLnFe
	 pLQiPU7kfB6nSQNTGLdYoTOSTSvOH9g2lqx3dq7gtQFYC1LZJnURKF7vrjffT12Jb8
	 WRdTnZZ7RODmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63FC77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081799357.28905.17348018363538003952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd171e4a511455ffeb3a06a277dc3cf9f4f2e5dd5bd6f7068939f2ecb976e3de
Date: Wed, 25 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750817993
