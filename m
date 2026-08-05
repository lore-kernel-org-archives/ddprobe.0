Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4087C3D566B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785906034; cv=none; b=OZ4NYdJsAYj2YkjeiuF5nd2bqgQLekH2UpurNTrbHja4cE7mXgdMRpOE1gFeecrFCV6Sa2TWjuHfJ+BF/6zmNWVCMw2Acr7A2gIefWzRQpyjD6BQYnsuVXpTE4ejbGGxPDi0aIz9qbibFHI9bPWN8jNA5Sgf8hUG9I5mec1FxJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785906034; c=relaxed/simple;
	bh=oH5UXKMohjFOFpK7WXT8texgf822kQN6r4Zh/bBxzFo=;
	h=To:Subject:From:Message-Id:Date; b=Ae7hxW9jNjjUQ7Xtgw/xNuiEmlVjJ7cfumnW9YQSwVjFqD3Jy7DrwqhI+lh/c4JwvQKkyPP3A044r2r3ffNsGHXxBB6i/GIbu4jkn2Lb6jUy0fpTQ7R8rM7YwYNjYGpX1q4yuuDrM+/z23HKh8iTEWAjrmvTcKuyX5WUj3NO+R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOzR+ceT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOzR+ceT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D0BC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785906033;
	bh=oH5UXKMohjFOFpK7WXT8texgf822kQN6r4Zh/bBxzFo=;
	h=To:Subject:From:Date:From;
	b=OOzR+ceTVySeshxDxd+P+yMVSDBgBXyhs/YloB5uBZhhQZXloGKv4WBBEoTccXTSD
	 hiojSHFcERkzwJxORpL1ZghbGWI9Y/z3eHig4FHTmDwqokcxW4ppuy+CjxnNL5LU19
	 JA/7c78Y7MVpD7rO/2eiyoUlQzqlylO0jWUM66OGzUJywMAs4y8lJlR2uzEOnQyN/p
	 hsRcK5yI3mV3eiFkYdYyCY7Tg/DS60w0qVOlkpuzw6jrkJvk8laGx+bNKr+dzLCXb4
	 UjM2mv3oRfrpW6DmmpIdp4eQ9pXA19hgV32MWFA/1bTGv3ehLyZsNCG1KQ4w16r1z9
	 G6P5/z5SDesIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD4AC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590603368.10742.17228547740737948278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0667930eb56f67d02e334d50a8c1a7959180e3ea6875beed3ac40ae20d0e7bf
Date: Wed, 05 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785906033
