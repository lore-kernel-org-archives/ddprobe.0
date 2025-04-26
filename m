Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A23253F06
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745675394; cv=none; b=T+kuAeCxcIf4oing0+vGMoDCuuZlIdxz7cZfq+PGWNC2WhKfEOpHVuxHxRi/oQKUsFuNx6pjNKG5quJtjqmTpO13rVsw6sEJ2iqeQ9xFogThmHSor1Pd3/zQBidUmSscB2dwXoP7B7faq4ol7/rxhOeJCNFiIdltiqrQMJ9DRY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745675394; c=relaxed/simple;
	bh=4zJWDvrQqR5GxCJ9WPnGj1Q6IYdaqCXyRCcE94lX0hE=;
	h=To:Subject:From:Message-Id:Date; b=eLyAsABqmJPz34iNTJQ0idYk7/tuWKxL21hvXutJeARdGjV0692oxM4t5aUC3e+UJkJGlzH+1uq8efCTGJiLkRNKHL80d4jewhetF0ge0vmoeBQwkjN2PxK5+ZuQ31EqpQLqUajDWsZfxCCFUcNuG6qW2nCYVdeFZ48awFqKtlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAdkBhy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAdkBhy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0193C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745675393;
	bh=4zJWDvrQqR5GxCJ9WPnGj1Q6IYdaqCXyRCcE94lX0hE=;
	h=To:Subject:From:Date:From;
	b=eAdkBhy31cGD32yvmczp0QMq7NepfGuyNcNtWO1+/iuY1egoFbc6OglHDnwTM4iEN
	 czWyUFelW2wUUhJXlS6Qu1t7bqWYVI0ax+d75MknBeSGSQrExmOCXeCTzDBP5qof7q
	 KOPu/CawGF1gGq3KQVX2UJcwScv8IUzurkHaUSYoT45WIE1b2NdvukdKuMYDy5Me9+
	 xILe7nWz4Kb2OF3QCSMCkioloZhe4k1uIOrPHyq3JWjF48b03uVEKQseBU4kK2pXVz
	 ShUVGD1DTz2VhLZ2f5BNdOw8f9VN2iuCrlMAbeo1xt0KiGuD1ABYvi/clTN69EIkak
	 9ix1vR4fQ7wFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBC6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567539357.6044.824362305676805326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a00504d91b524a5ce63aec38df079b4c1458d1bc5112b17defeacf092b5f5e3
Date: Sat, 26 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745675393
