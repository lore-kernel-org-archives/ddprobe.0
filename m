Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402FB9460
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721573754; cv=none; b=ifiHQxx96rD7pk6ub2iIPAUlRg1uszIkXc39gk7+uYu4FT0ki2sUOPRrJhIQZiBhFDag3P743PQmbuq0Te+izHW/+tNYr1yYHy9tatGyc76tfGJT/XN9a2UfTMwN4V7n/6xBQ1CHW6U7zMq+ODhwfxhd1UrvmYOOdGxKvkU2wko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721573754; c=relaxed/simple;
	bh=CMjMvXWGqrOBwcIabl5GhBUqdBqukd8il5DAj22CKMA=;
	h=To:Subject:From:Message-Id:Date; b=F6p8NWQR12HT3RVTukwazhDB1uHrE6Qq2tvWny86yD8SXbdM/IuNkFnN6btYDaOLXoqpxLowGrBB3J8K7mIVFBZV1OdLNDYoRBQdU49gysWWsTyLBOW8V/mJ63BdUp54cf5DNKZIpX60q+CpqEtWV+kgAqYCU80K+DbbbSdwhYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6/UxTt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6/UxTt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F91C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721573753;
	bh=CMjMvXWGqrOBwcIabl5GhBUqdBqukd8il5DAj22CKMA=;
	h=To:Subject:From:Date:From;
	b=Z6/UxTt7p44+rM0GQOnCzSv43GBKYKrP8mdXyiPiHTlNzGg/Z5GeOa1y+LjwjR4Po
	 KalUpVBRdHsV1G6stOTHuaHxAjfOYr8SJZTyUMZ03eAjJtXKnFQBREzmSPHiCxQKgS
	 d6A52WzB4ZHAVjxd7ZgpvR3V5riSGEJ5+EW7Rp3DOjwZQ0YXQklYCh9jEcBs0vKsky
	 NeapHZvEN9s8iY0YRNdWm09xnzYKPgYJLnxiru0aI6ro1neLpIglzxU4Kox8W2kM/R
	 2mjos9sajiQ3Q0pxcKrbQ18tLah1Ikw9VM9IJTFLwZhiq7y0rGk1IIGIH2dCeeAsln
	 l0IaPbGgWcdgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA2DC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157375360.3686.2526371177681955145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f963c9b4f9646727c500bb28e754d5367adb189044f1c07cf40b2f588efad61
Date: Sun, 21 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721573753
