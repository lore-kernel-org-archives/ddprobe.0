Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452FAB661
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759783794; cv=none; b=cwmZiw50oivwB5yqrBfNfa62cDAb2MbsptZc3pNU13clobKgVZ24JHYEXZD+6XVSHSrooHqQR1ZrOh4cnkDR8xgQlxEm6q+McFjTb6UIR0vILQCVmllBZJJsz83/IGS3Car1CZ5BS1beh+i2i/zo1oICYejSOJ+BRfSetSLmmaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759783794; c=relaxed/simple;
	bh=XFOnhSrymMDzQ7I74B/CeeZlTI7t/O02mXnP/6g4/YQ=;
	h=To:Subject:From:Message-Id:Date; b=H1wPPHldRQDVh39fHswrCmCmCvyzCKC7hm9f7FQJHsaBusPKnKsQMijXTNKEuyN5IHVZnPB3FcG+eZ5AGDmQjGR87WEWPBnmXYqbO/jA/vaEYMnQy/5S004unTWgAxa/4V5KXP2ViMx6XsuygVdTDmCBY+dztokGAidXxydMhbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFUXdYaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFUXdYaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B9C4CEFE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759783793;
	bh=XFOnhSrymMDzQ7I74B/CeeZlTI7t/O02mXnP/6g4/YQ=;
	h=To:Subject:From:Date:From;
	b=IFUXdYaW14FQiVzSwq+HdDNFguhtma6DX78bvxG8heDAtFUvnKpncnRNkt9KNpSbz
	 zs9ikiKEZdAlIYryNMxh1nTRWd78IifKq6zGY2DZkpoMm7vS2PQRbcgkraGz+XNm1I
	 HqWTmoJiFO9vzXYAHlE88xEsPr5E7UBOzyiD+qARnfGg9gZCGlXYdilGSZ9QQP+1d6
	 sM7Gssc0+8rj099lrng1+gGLC9kJ8NlMfngSp7pfs1qj1G7ewDDyiIGdGu4Nun08LD
	 r54O2rSo+EFVAYR4rFjQKR9BmLNRxolQBK4lVUrxBbNIYFb2QuIXETqKsZqWeM9pKK
	 Qjv3xbH2kNhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015CCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978379358.21474.10465468604470791223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c67e499ac0e4962ba7404e9ab7fc1f024bc9b7af6594f176a579dae32328b9
Date: Mon, 06 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759783793
