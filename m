Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F09190067
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749512394; cv=none; b=D+Z0njT5bCZ+WK/o9z11Y9njSpxj+NFlYkTfM6upPKcVWuSdgfrFaCuhxXVRF9pOeqHYji0hB6iteU7jA57A/mMWMiDiYkailTMS21mNHPYdegwUS90TLsifcna4v7Gk1eV/xlocOk3lVOMcnIRw6+5/O/kKMPnmAJqoLA8djnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749512394; c=relaxed/simple;
	bh=JI46hLLnXsdVuOjlbkA5pgCS03wff/55G8H39TZ0Ank=;
	h=To:Subject:From:Message-Id:Date; b=rlLuBw7ISa+x3knSnpdwF5gFN/p9T1xI7WV2oYpfLWu/94MvfQyCgCCJ5DnEom7ZvyIu+lzZG7o6kGunVj+FoOy8rs5sOWPWH2AiBvjBmtfHbrxpCdpYprO1OO7DyM968YxlLZdQgfdkutWfSvu3I1fxfrz8dxx1PnmQeqG/3MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/DYfY9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/DYfY9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749512393;
	bh=JI46hLLnXsdVuOjlbkA5pgCS03wff/55G8H39TZ0Ank=;
	h=To:Subject:From:Date:From;
	b=E/DYfY9JT6Mo1+unuY+z73ncmpUbKCHYU4aPLwgTfjVSaxPqOvhDDKRTNT6YQ32XO
	 5+tv1vNtvle631/Xzc8TPxcDEJc8u1PfqQ3bTRNsCTE5t5g2PB5oro9tBeBjhepdxh
	 t/EsCRRnoYyyj0rUI8edFsgFWC9YvUKGAWp25vmABOFCmqTfrNVAo9s4seBrJC7qV0
	 rLh6ntnwEee9mAq3erar+eA9FkdWBMF3b3nkRVO3O1x0uHYWifFfskngJmWyvlBfkQ
	 R9HVQH7GYulhzI2ZHOqAxgyo8HCvzhYI4dS+rV+Le2x1ulVrsuSbJeIJ0qlt0NyST+
	 En9Bw9agFLlAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339DC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951239358.14827.4021447770609402529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53996f00a7b9a0d061e046d465113b46c3b1075870a4ddf2d01b185e44912a42
Date: Mon, 09 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749512393
