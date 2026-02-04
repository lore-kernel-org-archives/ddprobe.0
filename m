Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FF11C862F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770212034; cv=none; b=IjXL8BIIzlS2cQ+3NzYRvRzQRDrWqYx6q2VX0PMzC5THCp7JeUCnZjuiOr6c2Oeyz2YLeBHsmXchSBSmRDyhhpgtvsuvoFU9gsAJ5W0U+TZ3IE8ZmcIgxdrSFxhfR3TRiaqpowqhMAvJgb8CJ6l4gyiWFF5aQ1iAc8mZAS4tE80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770212034; c=relaxed/simple;
	bh=qayWR7h18oRFl9l98L6ScNSUNt03vsjO/AxV3CzqKA4=;
	h=To:Subject:From:Message-Id:Date; b=Fwwv5BSpKcAAcxiwpElhlTcNL8tMkGs+XR7dxa/6Mu2OVCWZDs3FiakebbR0P1ZoA2nlEpWs1Dcx/3pEETskskqFJ5zJNFaqJuFWPKQWou2QNlU3vjIaFYVj1NklVWFynhWhBt6i62h4TP6BfOODLtsRXpxP+2fe7F+nVjorJCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=et9qPl/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="et9qPl/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C3AC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770212033;
	bh=qayWR7h18oRFl9l98L6ScNSUNt03vsjO/AxV3CzqKA4=;
	h=To:Subject:From:Date:From;
	b=et9qPl/t5aygfwaMZGBWqH6GQWaER3YSl2oum7IbqoAFRD29662/7XE6hew77mtAD
	 JJ3Ob2eeqv3eRr3M7YH/AthngbwQakXkuPPf4dY3MJTddlmAX4c7pLS7gctsPJLZBC
	 j9K3BG+MZhuRlYfncfp3jOKYT+nMxdwQmlaPdch+8yzBJg7ybaIvX7Lp1cShZUFuJN
	 ReaAaWfZLcOWzFQxNH5q/q6i4UjfyTy4/Jxjm+3QalZB8823j0GT9Y6Sakm6vGlj2a
	 r+mkQUd7LlNwt2KpYLpD3+PupwmLimaLmGWIKTdTvjzlxtPangNSeKvcpoU0j5yqVI
	 zVpG7BPVmh65A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7A2E9539E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021203375.7456.18033048011657964003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0bfb1519d99096288c8c1b73f6ea6f53e918f30463b4fe268d42b96b89ca92
Date: Wed, 04 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770212033
