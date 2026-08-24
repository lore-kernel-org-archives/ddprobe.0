Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550E03859E2
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787598634; cv=none; b=KxozRxiBO63nRK0WXzDfuwiGPHGM0mqq2tWX5A6htvRg+wpVrjxc3r5m6nNArqlABoA0XQ0XpT/8UJJU0T/mO0gLtgm1+LV8JOxdcc1lKQTbLRg/gpKgzOu36h50nXpkSEBivUzZsfv2O4JI1hjPIaXuwXF5SruiCKKqqtNkQes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787598634; c=relaxed/simple;
	bh=FZ5c6Kxp/up6+AC0cVsZHLBzML7rJa0ikSammMAMEEI=;
	h=To:Subject:From:Message-Id:Date; b=rB+nXXv4oFAGV1oUI5h22+6c/nOlbDhNDnSsN42XQFaN8KT5nkZwE5PoWiBcm1QwrDElRSak9sgFMlYLxHfzr5+OQNuu+QPFbEbPlG6z1FOXGgwTB1gmezWkmc0GkDoccjrFg2vOw0CLJVPwiQYUBXgmMcBiLMRVLPM19xljUO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS4UlOgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS4UlOgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6F1C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787598633;
	bh=FZ5c6Kxp/up6+AC0cVsZHLBzML7rJa0ikSammMAMEEI=;
	h=To:Subject:From:Date:From;
	b=NS4UlOgzHqu8nuGrscQ4GhsATJ7a44cwf7XvsA59FCDllv9JDqiZrBTPiD986WXNC
	 iOV1KvHdH7E9cK2SZmR2QAUbPZ4L+vur4Bxs27+OLlzTUywCc+jTSH0u/F+BNd1Sjf
	 ZqXnNINvPEP8FfQrrJZlbBvr5IkWuAn7/3lwyOILQ5mlDwjjkCfTSWWiBRTkb7piA6
	 IVDUU9diUGcY575d+GN9usY2rXzmtEoHst1onFzBjAGzs8I0y2pXeE93FIImde7D1B
	 DnxFxFr+EyOBTTvBtw4m6Dl6AYTHworu0/Cbr47FCiq7mISTxa3xN3KrvPXHodqd5n
	 qip0JoZdht+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB542C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759863368.21903.8448473122192054157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedaaf4546222421ee0560c5da40d27ce488a9253cf2df54c08b77de86e36779
Date: Mon, 24 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787598633
