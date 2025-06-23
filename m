Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CDA248F6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750683594; cv=none; b=qVAl6pzi8F2Aa6wOiFyQv77bS37hpVMhX3DVSgJw1mc9zMFOzJ8R8oKbXR9AMMDpook75YfbBDxBaQ5JiKH3NYcyJ6D3n6RB01uIWRDNP5BMhtGIVj1MjSvEt88intEynxTDyrKhRwkFHtQNKYLiyTZi06XHoofI/fa4G8/bbYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750683594; c=relaxed/simple;
	bh=jXZL8mXLPd/waiqrTiDaQkOe97BNEXohO3fnTbla8DY=;
	h=To:Subject:From:Message-Id:Date; b=KW3JbPeORt3jCJjJPCS0TFg5gTk7Po02Z/UpXSi8xJ86ycm562h2RYlT3BUgwFLqRWWzJzgA8VhOBEL2jS+MykJiR8zTRfB3WuWPjYC+LiAjVy9xsVnIGK3/kTXKfXpEceRveR28eG8Fr1OzRvYpK5uEqkVe02YhV/JqVLHlfIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJy73ke8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJy73ke8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB74C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750683593;
	bh=jXZL8mXLPd/waiqrTiDaQkOe97BNEXohO3fnTbla8DY=;
	h=To:Subject:From:Date:From;
	b=pJy73ke8teMbwL0rpaRc17e46tnQa4b9oAAPWs8HRDyR46oJHxbf3m9WTpfM/QkGw
	 f+wGtyYTEaqVWfV2/cqG+BI3Ye5x7fUYVgDulX4FIXHfqn2u8/WW5AMf6Csnj+B004
	 BkCaX+t6DerndSLn7q22EXOHfRb3JOTx5vn/DFK7alWmF2ddiRXBufRrrd1Oylibab
	 z6w1YwFncE1534PmFyZmdXDnnANwf6AtuQYTdeQyMN2bjGzux6myIIXyapf5EMArit
	 Cbopzx1xUT8ChNMcYUYZBew6D2Fck4N/4G8WNONTaLo2OAB0w3dW9vHWvj28EmuJKY
	 Dph8M4ClXkYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FEC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068359358.11963.11102054685393174738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9ee82b04874063a7dada7d8fa60a78825879ef24ea4c5cbfd17f2f8f0b0e8b
Date: Mon, 23 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750683593
