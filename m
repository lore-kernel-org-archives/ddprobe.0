Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EAE1C28E
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748233794; cv=none; b=TGsed//XQA+0JbeN8dm/nZk+hA0xCPywCY1P9wM7+ovDlTVY9BLnWXggpHY8UTY2gfAc/BSwnuedwJFiHcNEwOWl+w4v2VAZX6mRi4N2gCe2Ubo0dL8k3+X2Xpk5s3lu11Yt/0xhzow94ej4KBlt3wLLdofFhnLTw3YC2Yzonow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748233794; c=relaxed/simple;
	bh=Bja/FucYPh1ufCjLDt/upkSzSigpQSe1dZJ/DTA0NcY=;
	h=To:Subject:From:Message-Id:Date; b=iFzdiRp/0hsyquvoO60hCzGTQdgto+ELL2LargkWm8ST5Xi2TT8FEYQgYsa9bsFnC4wgdmc8RLXlh+dbu8FFmSGCEBso+Wvb90szD/K092Q7PO/LUndWGMZuOt3hClB1xK6XBope+fpWIklj+vQ/PWxU1h5Y9DXGCuzcmm43pF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJdI9mdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJdI9mdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748233793;
	bh=Bja/FucYPh1ufCjLDt/upkSzSigpQSe1dZJ/DTA0NcY=;
	h=To:Subject:From:Date:From;
	b=oJdI9mdzbutULA0a1djE5UOU+T6QTp0myZHvSOvbrJ4Xp32OHvti2ipb7JD9QVdX9
	 e4qwChhwkd0mB7ahPqnpzlWHtTPtCK12zlEh3ZQtQMhmVZG/b2L64JTDS4d6k/dhUe
	 KBXPjz+n7juzvE1wZFkF6mm0+BndUOvxwOZmi5teuA92yixOvJIoBMjaSDtG0yfK8V
	 2NG/VZtSRQ6/Ib10I2vG6zi37AdVAIGdXQYYLu1ClYG+iP8drViRF7aNtQxAv6bTre
	 0sClxuU3w8f65EJtj4hBs9ysek2VdFfc/X8Dgm97vXIarmNDyVLWo3QCGnjfDQ0x/9
	 m+FL55vPmkeUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511CC54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823379359.553.4680696730675026467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd15adff95c62a0444c3e45b1274b54ae702e5bbdf3f299cd244043fb78063e
Date: Mon, 26 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748233793
