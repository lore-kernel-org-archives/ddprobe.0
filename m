Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3675322C6C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733584554; cv=none; b=dmyTaDSSKzVKH9/QZuu0xbHKumTHUqBip8dXeRl7mk3hITKd1agIuQ01GEAU5tl3ue0fvp+BEot+Al2nRLXJD56BObdBGMt6WLWCNNeicyv4JYI64PDNrNAGyBKWo/LgNEQbGUWntvn+HyMizbn0+4w/JI1EABQynpnJdcZLAMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733584554; c=relaxed/simple;
	bh=QXZhCEDx2fBz4AxSEcNzeMZAk26PxAl81rQDPotl07I=;
	h=To:Subject:From:Message-Id:Date; b=scr3ndi9r+ho91YJKrtD7BUUjSmz/a67G3m3fjWprEJdHU36KODNFOSW4WsjCEx/jwsnArkqjtsI6YLldCGAnNAenDxEFF5dwA04WcWdeM714MgJrT8AlOMHInTzWiD1PbFIx5eWRpx2CYy4JwliKfz6KnM97Q70LUc7GV1u0kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VppLD8xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VppLD8xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60EFC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733584553;
	bh=QXZhCEDx2fBz4AxSEcNzeMZAk26PxAl81rQDPotl07I=;
	h=To:Subject:From:Date:From;
	b=VppLD8xyOB5ZDUGkYU+qWEF6O5eNQkjFe/hlQmR82VA+mRd738divcJDrmXO+4ctn
	 Jx+PQAz2FNxu6lkM9EyoC64RRH2BE2fro4fCs33shLcSezcbyfmWL5fxkbc/MEeT8Y
	 dhIv7wL+7I5PrNPw5rM+/44NzPcikrgl/Oo4cnudVhlNbmv2XFW9d3RsCgdOg51bzf
	 E77XANUI9TmFR+/dE3ymssdUlXrzwL+ZCcHk3yF/AYIS299V0xxr+Am/6DK+8b+2tu
	 LVp28JfihnE0XuPouLrjlqDB7tLaWkOKWzef3uchPVdgDMRgrj6DU0mgh3Hi3yDo70
	 ybN9hcmmwdYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E910E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173358455362.12496.4423984078755066547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12295d47cef122a8b7944ec94ebc6cbe7f05dbe2587cd5ae5366d1b474cd43a
Date: Sat, 07 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733584553
