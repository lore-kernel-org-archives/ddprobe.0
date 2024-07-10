Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7389E18FDBB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720609583; cv=none; b=oav5cFe4uArEPAfupFNJuvu0iEqJZfgIifFemt5MLq1ntMNTC7Ua209fWbM3fzE86Cd4slsAoxHax+HdFU8Mk57JCZ9fsunNIrbgE06UJoDHhkIgA84yOgz6fRLA+2eY3RetcsC33/EA8eatI3yNgIThHHT/1lbcYh0aW0hblds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720609583; c=relaxed/simple;
	bh=DQjRRq2/E1Ib8jq/Lttg+BmUkz7t/lYml25OurEcuKk=;
	h=To:Subject:From:Message-Id:Date; b=PSJWBrsJ4th/9155uO3f3KVb0gBBn5TgtLmcR8cxu/f/ZMjbo1s89uBUcKsiWv6VN2w4ho1YJb85SzMxPnDtnogIeUTtXYdmuJ1fKt/vKPVu0vTtXUEDq0vEJH7KA35wu6JjPWtLPqvoax/LmjlcWjN42tY+YIG7Z//FBxvPbI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2Q6/2x+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2Q6/2x+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA706C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720609582;
	bh=DQjRRq2/E1Ib8jq/Lttg+BmUkz7t/lYml25OurEcuKk=;
	h=To:Subject:From:Date:From;
	b=C2Q6/2x+ZV+8xt54gkDRpiEF1tG2CUe+2+bko5xVSq9NvMb7WKyNWxM/2YTEqYev+
	 z5RJmMnklDq+yGil0y8oE2yGIgp3SlIwJbQ0O4LcKfLGLfcK0OvO8QXevdry28rbs4
	 syz/TMiKKxY2OElEXnqnplhTDzHcvL8aB9AWHf3EbFECB+sQEe4Yk68LcbJK4HeYkM
	 OL9m8Nw6a93jlRvTvzwPPpcQ2M/aFGIIhe2ejVRDH3wckEhYb8zyshlQLtf2E2sYo1
	 PnqrN9HTAfC3wvtxJ2Hh5tG5zPq4TqGKChckfZrs0EWUm078NXJ2RydfdHzB8Qu+uc
	 pyGa9oPOWUQjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24C4C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060958276.28215.6499456023975616832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb476fd519541aace40e7c7b417c868b48a49aca874400894c120b6913300526
Date: Wed, 10 Jul 2024 11:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720609582
