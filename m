Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F8472621
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788705634; cv=none; b=HngFnunltxTYnyvHwdjnCRYA6XFbLLty1LqmV8W8rfmCFscjSJaIYZP+fetfQvZU39JX5wWOQpp1DZ71b5ioaw8pmVABsEC/RLfpsVrWrSji78E6+Zwn1UeU7/KNUuclhuSlT8bew3SOWWIcqtRTPEQamsWaYuJGSepS9RFjQq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788705634; c=relaxed/simple;
	bh=5NaGHp1TqFOYCjiJDxTO8qruF7bF3bvTaiFB04i3t8k=;
	h=To:Subject:From:Message-Id:Date; b=XgP53cha7t4JZgxu9NnZShwhcyn7VbKkR/PKK6lVmCuoY2pnA1FRVlAJNpxl9q6UPQ/o1t/YRgnQYzeRqXxxJmX1Z+9fLW6SoCqY+gxKkZkhpUPZK4lgEBzIjSxvBRAbIEWAZd+XMhRcNGrOKxrzMQYyPGMdF0FTjjPH23Lzp/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk989rOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk989rOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF55C2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788705633;
	bh=5NaGHp1TqFOYCjiJDxTO8qruF7bF3bvTaiFB04i3t8k=;
	h=To:Subject:From:Date:From;
	b=jk989rOplH77PryBHaAdeqJLu1wRqArAQ1DHbxtTi4kSTMaufTsx69pGj9nn17/rm
	 dTyHo4+Nj/NBofV06AQu0pDWAqgIiMFtWPM++QW7ZRCmgUExBnRGzeX82Ux92o7he9
	 GFffymDcKeRaZDGR17GmMYNkFpisAVWFXdjy2CPIKvg701QP7HSOZKK4tZ4NM5X8QN
	 aOHHpNyURA2BhliLGY6bdH7rh+yhMNmWDKUUS5QQ8JQqbQQjK5nHEJod2dSCIdHyai
	 J0N83KLI+DLe3J4bpvB+OogG5fPOprl5tRRxbKYBxzZL64BzOaGiaPXKQ2zSh7ZpTq
	 X1wRQq4O6kJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43B0C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870563372.13006.10265235087843694019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b9fab0a3ef6edce295caf8001f479c848ef52d4868096f3945ad8b289dff89
Date: Sun, 06 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788705633
