Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1223D9521
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785447636; cv=none; b=XBVCMoX1BbPjbwLEUksKyzF/Z3GU7d2c09ayfmmjYJGB7qjNxbfzs+SpBJfh4ZdkgdNn/xQzFz0tv5u7o07stZmI/yDgAOtea+GNx6c+oY/0ZjWHC3wqIx/Vk3vEMKrDCv1Y0SbpYgLcQgTXnYFRRE0FfGYMeUvyeislxNbCKDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785447636; c=relaxed/simple;
	bh=uN5qAVRreK4MJAmUgDvU98P1W9WVJfpLO8oxXke7I6M=;
	h=To:Subject:From:Message-Id:Date; b=HWUH65HFZl2/8ddSrO5nZI/ogxW3YlYZ/sBeT9oA7VPhMlVPbINmw0E0yqaF7JAQj+xFbDifJnZjlTc7aLEYPZdPEQJiXEtFWmKF3HugmVOgo4PALsnR0KhFKhrCdmGuNzBOw5OqajBHPMuoZ8ILhyPH9aO3MfpZlPfyb677Ewg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R79+8mQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R79+8mQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB23FC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785447633;
	bh=uN5qAVRreK4MJAmUgDvU98P1W9WVJfpLO8oxXke7I6M=;
	h=To:Subject:From:Date:From;
	b=R79+8mQXO+y9Z0QNaLgZU8CIoHKCY6hdhABw3yegSdAYp7cKXrtairucj4gyeLZts
	 gAoCji/ORcqGhQakeRE764NIufpl2MaH43ux9qa28e9NY9nzy15X6h2KydVBL+kYYd
	 HvM8/FPJ/ZWIF3Pcg3/MqJd41NJ2jUe3Ond+DDhleVyUzPpYs1hsDEd5a9YLSlpOt6
	 EVbitm6bDTLk5q8dO8uMrjvdSukl4YbziCnGzynZO6M/89gWkZCK3u6SmFFhYgMItS
	 edhIcoFvacs21V5cUL0OloP7gy53hEliT4IftxYvBp8UpGHQDe+KmED3heGy5I7z23
	 vlkhfv3FlyaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D6C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544763368.12062.13922408063967343147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c254329241b1865079042da89efc581a01be9a811073d6add25a0722ed7c4747
Date: Thu, 30 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785447633
