Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7678E7E9
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720920623; cv=none; b=oarQYl8b0U7XNsqztuco6K6cnUTXUuup2Cniu17Y16hgENkMGHtYU728ZjEm5Bwb8kGxS+0Qm/nfbRMdFYBXDMcv+ccESXJPLGYFVZATIjRq9vBofEqQyHE3fYuAie4Bp/8vrj5+lQ6rVBO4U+Azk3xOzalP9/JcjfCwo/ZiESg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720920623; c=relaxed/simple;
	bh=2hSV/6ts34ezP9XXQcPn9iVyU+OE7KhQarBApoxNHzc=;
	h=To:Subject:From:Message-Id:Date; b=U6U04d26nDO2wtB3iTOtZJE+5xIQEeFhE7nyp2OHPXZ5BqXVWnBYOGzp1MOp/F2Q6h7bnmBYC3K6qGm6WcECfLiqkBNiH530D+tLfXBA7qCBduoxpUFNRO0skRFlSz33HVSbsBRIxPIEHiN+TtrozguYGKb6L+MJhlgCTd383eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZd1DjEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZd1DjEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE668C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720920622;
	bh=2hSV/6ts34ezP9XXQcPn9iVyU+OE7KhQarBApoxNHzc=;
	h=To:Subject:From:Date:From;
	b=pZd1DjEBVQr0Y5Va2uktQm5QeQQ2T02dyyfJfRgLUWfDkDfeZKnxgdDznBpMZG4k3
	 xjgiYpxEFiJsZdxILjeUW4EG0gU9cnKc5V0zmedoy7b1Sis//bxx7dwf+Ojsjzu/ze
	 KcNswU0UAprhnO7ifRWOGyRXCiFuPQ6BMogqXjUip/kgirw73LlEGbsiWDiFJVqWSw
	 AcCmcFNeUSPwoXueYQZBAlrPmoYCnGNWSNJ3Kpv+X7REHamu45RiWqC7Su2MASNEqq
	 P4iInDqjlPVrqP8e5QLtV1cuIEcnqBv5j21jwTu+nKqsxGyUCXDZtomGh4j3Uuunw+
	 akhuG/J6VXNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D88C3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092062277.7130.5236979861831868718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f1408f1f8911179e930373d43f0fbd378e65d893e7d6de0811846ac764ed1c
Date: Sun, 14 Jul 2024 01:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720920622
