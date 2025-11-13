Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD652E6127
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763073594; cv=none; b=fvAt3mbkEI93ot+scJ241pcsIbJy3WNP+v7Sy7SqOdu4iDnpEbnCk1kLjWp+uflsrvdZ3bt7f5AncvyTN1eDS+5bYBpQMjsZN8c+07vZIrRxurpo9xo5Q5NUm3NOUtNK/TSAp1Dp6DpybpTKORF2EspB2nmWTGVDS6bfNXf/icI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763073594; c=relaxed/simple;
	bh=m4rN0EGUCxbQhX0YrwDwZaFKBAV64HP3GkMpfxjJGOA=;
	h=To:Subject:From:Message-Id:Date; b=ongoKRxYZlDYV64YqhDDkJgepO09rdWMSLCEi5QVbCPamGZngryco/dpszlpHePUDWAR1S37T9pJtIUVIfuGGQoLBkEoz9jH5M4vWtK++OOO9Nb7oXn06Yi8E2Fm4H7atNRt7UZjkjiLLpXBN1kiRBjSyiWc6F84dSGbrMbfpAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzRX/EgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzRX/EgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059DC19422
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763073593;
	bh=m4rN0EGUCxbQhX0YrwDwZaFKBAV64HP3GkMpfxjJGOA=;
	h=To:Subject:From:Date:From;
	b=GzRX/EgSZxZH3z/2bH4QqfXSvi8SUjeQd5Y8XjSYMXjqTmTl65mbljrd8vDY2Xphq
	 E3gzoqIcF29yxmEggWxI/25b4wpIfM4dGgFE9zMGtUtQO2jTseC1b7V3gpGeXu7vs0
	 tEMRtdrKz1v8ftKo6QXFuO70cSIgPfWSQB8fwvwsSPsU5OYqtllmr6slFkj6HNqej7
	 TWucqvL7Rg0IJcLkfeAeasPHUPrh09nuPoFJb49EP2OfY9RmH/FA0GR9ZWb9He4Uj3
	 k5ukbQ7wmlFgQxgKeEMbEYajuqSfCcFfxvwWuL550Jvx5lp6Uy89eOQkGtyt19yGHA
	 QwPjqLOCwrchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8ECD98F2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307359358.28671.16852080540498725369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b448beb968290ecce2fdf32ea6375a5d9b6d84ac747222a1bd2ea79516a439
Date: Thu, 13 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763073593
