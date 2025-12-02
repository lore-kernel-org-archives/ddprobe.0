Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55111D6DB5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764637973; cv=none; b=RZGdGSSx4TM1JshOAsbrtRkxrRaPzUoHFOGMhfHvgoEYKM+CJO9WmVbdYqrjJjDHkQ8W3mxN5yqIt718zjc+1JpUOUb/CZDYCsFXqg3gFZWPIaVGDSszGwr//kgTtmXwSbAcb7LFXdr9f2hLSAbW4SRs2noAv105YC86k7hE9Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764637973; c=relaxed/simple;
	bh=hEylyXzGUFn+AfOe62TKRQlUNoYGDJfeXKAbO2hjijU=;
	h=To:Subject:From:Message-Id:Date; b=shWBLlyLVJ1L3EVqXmFTRfJQBaRjFur+dW3Kee4Q0QEs8vEln5oMaPB2hwK/FfxCbJ9i/of/7VFFpEi60l5iKfafy47ZtL+lyvLFctHfOUVF2AXXpH5f1AfI2gkVL/N/Z0OLLiPeWLr2osZPgoRL+tIom+hYSvu3WY3otzXVFXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtPvk6o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtPvk6o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764637973;
	bh=hEylyXzGUFn+AfOe62TKRQlUNoYGDJfeXKAbO2hjijU=;
	h=To:Subject:From:Date:From;
	b=RtPvk6o3jHL1qHHQdqp+ZIh3WV5n87/d+kqoizPXFyisQrZNTwkxFRG++isN4XEKA
	 z66IzcggG8MZxifbxhDCk1Wzq7XdnZJnlH5R4eyux710rOFZeXUpV/T6cNgCXRetQH
	 IT94vn3z+lacqXG8106K6VauLFKjk1qczP79cqPPaIPuzvBZizjWGQkYEvfO20slGF
	 1npMeI9DhGDJNYkmITJOuqGsJ/YTgKhNdpax1UHQmMWkGD+ERVfvUttleU07F+Gb/h
	 708s0jhQGytmSXEr6dCdlYn4LjApvEcoJmPXq0x/bS+qG3IKZiGJcIBlfDqUMhRBcy
	 81mCKa9MWLGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C9D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463797359.6218.14003149087143259128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cb5cb78c1032191310aeaeab9fd3816b34e36cd96a2056c5d917ceebee5558
Date: Tue, 02 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764637973
