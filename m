Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AEE402436
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777557454; cv=none; b=VOU6QbChdOICuULs8qoIY+mRgBk5+FAIlARtA4Rczude9NEwCJTK5Y5bpSGNCtFgXt7rJHXp5Db31/p8Rahvs0Rqrr9Zwr1AC4nSqjaVOFIOc9b7gvx14hpAT0o/1pKIKu9rqMFsnV4Rsn50bw0wF2XAfXPlmBaSPY9eigk9l0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777557454; c=relaxed/simple;
	bh=8aPzGpwJkVGcaDkncHumatGGdYzQzTLcBRtI76bPrIk=;
	h=To:Subject:From:Message-Id:Date; b=DWy6pVl6eWxPDGJkYfC5XHkYKA3yfCZAn5u36mxEi1Z2gnFwj3oES58Dd/QGSDBOgcSS2YND1z2fQJPp2AMnvQBNea7cWfARJp7BaFxEfogd4ZzfvBq9bdor5MsNZaNOqmhAXr78sd5y3QhBv+cTj0UEBWI+a/sNh2WZLFHk3WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg5yWvKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg5yWvKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE44DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777557453;
	bh=8aPzGpwJkVGcaDkncHumatGGdYzQzTLcBRtI76bPrIk=;
	h=To:Subject:From:Date:From;
	b=pg5yWvKd12UBQ302oXwarXQo8Hlg+yK/zDHv7h7dG+2HvdJ+hMgFmPY+NCGRJt9Iz
	 wYo3Hg4SO5bJYI+4OKa4FbmUlEc3gkO36GRZDt4POjSxhl63MtYsLOZo8+Y5y+St+b
	 6iSZxXA0s6SCrJl1MUFoZsVSy/h0VXgmcWzWZ1QklCfcD25354EYb3xw8Bmbfh47rp
	 4d6RxQORsTJbMVcSrob8lR+PXAulD+LYr8b1YWw4aWpRaj2DVaR2fGdfJMZgg+R9vK
	 AyVja7sfF1K1yb5U+xOm2tqRH8t0tyluer8V4aH/xWbP1ziJ4nheNaxYGQ8YMZcGxv
	 LjE6EEh3+nJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8DFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755745370.5168.7859435535174603205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d051411df0c210120d3611e70fc5d7d0410dc883f435ed6a036d087f00b94ff
Date: Thu, 30 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777557453
