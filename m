Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F4425A2C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750751393; cv=none; b=sV/4Gnf7kNu9ROTFE9EDSTfslujAoBTIqm8zbX5KAfq6v2YsIfZcqbKwmRc3Hrr6LqL+NitUmpbbjhyelK9RA12PkA3JE6Lnb2FCYT7+0Jyo93ZPUe4VD9Dn3BLsLoAQ+E+zhe/SHpEsg/jFQtJOdCMIOQ3qfxkq2OfmEXjE0Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750751393; c=relaxed/simple;
	bh=3tNHA+xp0L2NxJG7tTLfmzKCzY/Om7pG48laABmseMI=;
	h=To:Subject:From:Message-Id:Date; b=deuPi8neShOwifG4y3nd2twFwlaTWu4n8vanW+F1Yp9Qm0IrE9AxHca6TFz5JANaCnQEzyPoMDq4BDg0HU2OCisbA2sUYZUitEh4IoLizkSeUlxNhb1FYpG9B2X64vun6Qa4pZnqZIJvWzIm6dr4kVb5y51MyX8KcsXskswUW/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJSDE3fK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJSDE3fK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF61C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750751393;
	bh=3tNHA+xp0L2NxJG7tTLfmzKCzY/Om7pG48laABmseMI=;
	h=To:Subject:From:Date:From;
	b=pJSDE3fK44tiWY/XJn2x7jV870qxRqSS/bpbUQRfh2WGafJVxZ9rx2acsm7KKuBSX
	 UyPzXj5PleRuGV/IBRuAN6TjaDdM0JgM6akWP6MvJnwU2h+f5uxWtiVUvAMhRZeb32
	 WSGaKhCIG8NErNL938tk8i5z4D43HksE/Eath4q8624wdDvQNTEdrGBhAEko4yQumt
	 Qq5eqwax3t6YIjSNwgk+Awbu5wQS8vyUkZorIwLjD3+y/4Y4OhS+aznbjwG+XdJFeW
	 NfAnNMejRssNY5ugZ2Moz4GJFc8KoKtOVN3bn+zZ/iPdL3SjYS62uzE8gtTcrGYVkF
	 7xgOQ97QUokLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F275C7EE31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075139357.18239.14160847459179218331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609f9ca4c15d66b484bdfd185d75c3982a52e68c86ca281985a1434683f06d0d
Date: Tue, 24 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750751393
