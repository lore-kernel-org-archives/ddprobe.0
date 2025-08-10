Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C20023371B
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754829594; cv=none; b=WLbQp32Wa7W/+rReMTGaNQucy903gBpTsLj3QSz81ITRnBVZUXPbNGCF3fbkKMCC/mH+IUk6uYH9RgkpVc1V/tUUNkfP5x6rEKQZTI6x9+regevdeasz+KBfYs7eqC/KrBCZxxby8w5RZrax6JYD0iD3uHNtLwaepREJZUrLcro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754829594; c=relaxed/simple;
	bh=z8hyjEOs0Qbd2BNlrICc3JKiUirj/tw+7+FRT2GRXEA=;
	h=To:Subject:From:Message-Id:Date; b=Y5vtnl9eEMy9GQgy4KUelVI25r+fYlN9sBormslx8khc7saTGlNoRXjmDPVwYYrOJTIv/yYeXJ8v4IGYECL6EKud2syQZFx9N5XXxEik+hkNzpiqXWv2/e+qK1kKM+bDnAH+YUBJ1zm/aL1XTvX9c6wWpdF+4ZK4+sW0sY/TFeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXkPu59r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXkPu59r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4793C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754829593;
	bh=z8hyjEOs0Qbd2BNlrICc3JKiUirj/tw+7+FRT2GRXEA=;
	h=To:Subject:From:Date:From;
	b=SXkPu59rHtheXaDBrgNAtcp5idICg3COp1l37SicLsOR0cCnqct32I/cSc15GALnf
	 1hYAS7ENNcVUStFEpnDzfRWKtHxP9viuWw7dVdOixftn2wxiU50WN9PbYLt9inzFWG
	 5+UFHUP9/QPakCCuoZSEbbPm59eFF8jpPoxelkciuxMNqD9ui1Ph8y17lvW4KDCK6H
	 HMkDBUMHw7cK8vygv63HRxIPJT4EovtdfhbINvh8A6OzjEa6s+RQ7F3uKiuBrlpyj2
	 SaXslbwddNIS9HyRugoliLKNE5Y3ovFtUNHlFqpbywPBq9qS0BddVxYc5vX72728w+
	 oe6wj0t9HjKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FFC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482959357.17356.11639963472951922004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e6f89cb258f912a9b0fa57bc628d3cae688edcf3b2829d416de9272998f80a
Date: Sun, 10 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754829593
