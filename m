Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587C638D419
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783762114; cv=none; b=XO+dgfvI4kTPJ7A1S/44A+1oSp2/XWAVywrVleAzD5O4v7NJpLsKrGLhzCdyXvNgv/zW6mr1Hh9UwzWeE8gqxYjHKPevrZlUZK3EqyPlpZ7azlRatf+uyrNRrdenWCTaR7+bWR5ZMjDR7AgQzN7VgRC9ff0Rgh9ZSbvvYqAUW90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783762114; c=relaxed/simple;
	bh=GQy9sW4nbwQz2w1uQDVvMcTkMzXRRkCbqs6Mlz8fCWQ=;
	h=To:Subject:From:Message-Id:Date; b=plLG21oXUFAyeuiZJ6v3lrwEcbXVTAUfkaoc2oEPHpwdaq56BGwWegUT/8Tiud8+KEnQuv58/P2/tdMsEzEDtnUmZdIpEEFw4mpc6tY6hg2tnOtnxhTXLCRPcZZUrRy8jwSz4V1bA0USvqB1CSw6pMCKx976XpVIW1oY30xwqm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq9ZaIMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq9ZaIMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA89C2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783762113;
	bh=GQy9sW4nbwQz2w1uQDVvMcTkMzXRRkCbqs6Mlz8fCWQ=;
	h=To:Subject:From:Date:From;
	b=lq9ZaIMjkBuJJyPaahIdJeWiNtLAz6VCVgPYuQ30zHAPuxlnd8IKNoXL/87kfDZUW
	 OBtAKkiroeuYfNksukphCzThCbdAsNAevkTjbhHUKdJPZc3Lcuy4JE3RqL6SfoMjkG
	 lgV4CP3DirAzJddLug2SDg15x0wqzSBbZzH1ItQuj4PXbdLlgpMYu8Arwjm9sw9gIR
	 KCvhJfPR52IBOTS66j0oUt9+Pv/nSFxNylrKRtrLlo0feAtqparTgra2OYT5mLrh9Y
	 Q18/vew3ayBoQZgCX5NxjwFnh19Cf3UZ6k3qGQSqLzDHVqTnRBkTibNw16mFBhDgpV
	 JbViEdB/zQMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D6C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376211368.4690.6750629266994481665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc3ac50db7dab51d171f0cfe40708efa25971dc7097fb89e6c82f020e0f03a7
Date: Sat, 11 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783762113
