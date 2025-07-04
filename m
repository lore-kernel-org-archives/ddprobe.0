Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FD2328AE1
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751620194; cv=none; b=e8w8nHZNcl9hRJl8i9Q6LnbKtDbnQ75hhc1tBMUBG3IAvg36Oomb+3p+K4mVfS/t3Vbw1kgTbUtdpTm6AUVSROWpaL4v2XJ82Oupq9YUGtLrI/qcEZhdEph8Fc+LWwoWrbFFwsZcgnrQmh0DCnbpc26cSbdOR+1NX/UqE7K5GP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751620194; c=relaxed/simple;
	bh=dnA+ubJQbJ9XQrD05UAjpyn16I4Id7Kjaqa147BvwPo=;
	h=To:Subject:From:Message-Id:Date; b=b5LfIwX6LmZphOdPN/G8LpYFqjXmCeKdJg2PrvaPVnI49XDXGB7EI+Gg8DAItXmF6dwMlZ2kH836S0z3u9LBxAuoLSlS+wYEyUG+IOGtPCeUNqbMNR+9sbRIS8AFVLt/KskcxIrnzc5LRqhbSpr+uUKoEQFTqE6CGjOLYicwBlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8FJpKxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8FJpKxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751620193;
	bh=dnA+ubJQbJ9XQrD05UAjpyn16I4Id7Kjaqa147BvwPo=;
	h=To:Subject:From:Date:From;
	b=P8FJpKxvExNzeln8S37Q8xApy0xqnsZ7tBjS46hpBdJedf+mNrk7pa+zc8x0lSy5+
	 KwUNYIrM5ZMrVlZOaDAlfpzzYY1wODaOvpfepzqqZIQOdcpGyLpOfQXlI88NASnv6u
	 PvjD8QP3v0IVBLr1YXTf7pGSEMEKLNP8SLLdQ023TkOzPoyXcvgUn0yC/LXyBTvgaz
	 UzfTsnXjCcR47sRbuH+Pw1TcnjhH/qaLZQRU+mT11At1Nas2AJ0cEotM1jzeI3B+ND
	 tALZ7SB3XTvMMu8dEqctXe4h2Af04yxf0C7HryCwY97Gbl9fTAT0s+tWNvgDS4O7jh
	 5ylxF1LAYPphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA8C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162019357.29925.12116754373239469721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5652998cba91d798ff607c1688b83810194164b6de4f5d4287060f28d30faa7f
Date: Fri, 04 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751620193
