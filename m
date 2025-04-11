Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B0B268FFF
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744396794; cv=none; b=fK4TmJsl5/Oh6EYIoM8daEIR+4Wj6RIayy22u9tMna2CQ66UpYUS0qnBN9SVYw0NGgUCHqW/twlUvoLzQOdZNreCdL7li1s/v2IGGvpihQMnE0zduBeicf2QNkdzZ2IX3wtaVHCaNlN5DJqLVb4FpeeZNMKsXKEvob9odexQPDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744396794; c=relaxed/simple;
	bh=kxaoXE0eZWAuZ4X8Rt3IkbqAOHSmoNIWWpwrI4O/ikI=;
	h=To:Subject:From:Message-Id:Date; b=u7tmAwxpYH4Cz3NftldQwBw/Q57xiG5W2Xu6davG9MAXrFLu4kULm4+KFODnP/TU3hM6Up6WpDyE4deSpKrR42rhKGS+3UynH9gzh4ddHFsZV2pRKyKCac7j1+CY5mML/Jkk0h7SKzb+7CSJ0vN57HGD0KPyYpU1WEyFE1H6Rr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WU7e7HfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WU7e7HfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8641C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744396793;
	bh=kxaoXE0eZWAuZ4X8Rt3IkbqAOHSmoNIWWpwrI4O/ikI=;
	h=To:Subject:From:Date:From;
	b=WU7e7HfXXtme1TEOUvMuc6A/rO9q9B4cBzbTpK4K1ceBhwChuzfNcew2rhwzGxEY9
	 lqBaaQHrT2RBGArO7v92AISFJUT5tKyKJ+KQkmUN5+PDb2QCM4Vct9rlwp4KiBngWM
	 bIx3uaQZfl0Y7RX9BlsaLR6ys75jeV9bZv7P7Q/SwZyIPUUIFWxHacACyPpEe/n2Dj
	 01Xr8fxeTMng4W9i0O98YrzFw5oFMxg6Rp4haZ7JB+Lo14sHr8d04PQDjpmgrDN2VO
	 ECsLAtD72MaMP9eQmvi+VtS46MVCggJowGLP6zYgy6Qib133CTTEXZNQHDNjpk1Z3s
	 o9HsdWQ953r5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE6C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439679358.2195.8512307584084625915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b05f937942011f309e993e8480cb3aa5e4f54309c5e9f25396ec3902f952da
Date: Fri, 11 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744396793
