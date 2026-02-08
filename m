Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F26434EF02
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770587634; cv=none; b=exWV1HD2BaAhjHLCQEj65Qf5AJXFti5y/awdEcPlWzvkNZiuoU4q15th6dBpBXsDrPvOdjn8LQrqpFiuLdgVz21amGpqKUAPLIp41Lqv7cxA5W0KygfinldU7Mqs71aX2QWjWeh64SPDZBZQkWgF1JJGDDbhe5SZeZdDuXScmv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770587634; c=relaxed/simple;
	bh=yinI6kD95E50sxHIE7Dv3oMD3I9gCYbzXngsRRSouNA=;
	h=To:Subject:From:Message-Id:Date; b=pO9Uon4Qeur7CU4x+0H9eOGtFrVrUWArClD28Ge9WLO0wn6kVb8h+o969r20x8BuRCQtSwhOvDiAMIABwkxEYtwl+FBB8ERAyVG8Dkhhdu4wijkFS8LNar5/n+0wQdNbvutAJ3sum8ipbmpHxT6x1aXPJxLpcXnYdsNhNISLfaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggbv1HAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggbv1HAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C47C2BCB1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770587633;
	bh=yinI6kD95E50sxHIE7Dv3oMD3I9gCYbzXngsRRSouNA=;
	h=To:Subject:From:Date:From;
	b=ggbv1HAiltvElBtXfD7muA5uyys6QsK4tUXZVHCoSdxPiC7f2GGI3+3dbYLIVcDri
	 c/Ycmuo8icb3yJzya6F8PpQft0hOLzhxP3h9N5IBnaUaWQ4FsgN/0sFpq3GzvGm6sU
	 BEQq4DCubBPGIYp74xYGcvl1HqgCT+X/G9J52qrgzq/tS/Jl14H9detlmSR/13dUiy
	 IDNWkrFO2iOzGc3AuKSk9ay0wloRb0XL0BAFUzxxrKmXZ/CypuAoPMdUz56gXFt5Z5
	 WaP9RKpLsLZp76zuvOeQvEZwA1II3UE2aVc+ngz920Y6LxQ25glKR2D7jHpmA3pvv1
	 3bU/C9urnT4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115AEF06F8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058763358.8973.1664834203265536133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4df8ec3ebef447483e6296ebb6336627633c888adc3d0ac99b829015d6a197
Date: Sun, 08 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770587633
