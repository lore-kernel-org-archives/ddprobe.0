Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA2314E2CB
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709068097; cv=none; b=sWsGQOtDGbSzWN4l6lCmhftKOV60PSRUbOAvZM2d8hHVus8e1B67we9YtpcUDTKmJ9eVXUnUZQkWVrNEf/LPID2SZWO9+w9bDjZYzCcF5oyjV18Hm/6Lfo7jJMcbgmIHGvPvX+0ccO3NYT7rf799b3K9eD3NIIPim6YbCCDhs2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709068097; c=relaxed/simple;
	bh=i45js3LsCDqrOesFD3a1mzMlP2oCy2Bqgrs1zEiLHn4=;
	h=To:Subject:From:Message-Id:Date; b=HrGnEQOUIix7xFlhlrN3Rd3WecgS4fFdzk76FjiRVITfB+597nxxxVSFPiWhPyI/3zRhdNsSoJXwidLq3MG/5xpRzuTLeGoxfabHO9zlXcCLKoeuKN+D8mRqbr11rmjM5s/B3dTttpTw/T2Ow+j4F7XGqZbsSp4k3Kf9xtlhtE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwKk/vyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwKk/vyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83732C43399
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709068096;
	bh=i45js3LsCDqrOesFD3a1mzMlP2oCy2Bqgrs1zEiLHn4=;
	h=To:Subject:From:Date:From;
	b=KwKk/vycXp7ytW3SdTgo+vLMuupsMqcqDk3VN/jlZMZ+cNefDfQyR0ZsNkmhmtnCo
	 5H6Dx8vdwFb71+69897FyqWaCTI/1xMvlPDWj66bkyWs0wjca2ogm/EerIwSsj4ziB
	 SKq4N5druy+WOqEleBA4Roz/Yv4ziaVGLATncJ1aCcugN3G4gQ2cHj5KR1Btu9mJ1d
	 hWqZIZL4DJbgLeVhwyibZE/J7P5L9L6uRqigJviYDzqjNehVjE48UpLn9Y8oaRmawz
	 RiQJJDKFapeuOkRHwzx9oXboywYodNS+YPjmNXsEmUL83TFX7Z2QzFZYAZerMiHZzU
	 tgAWbcRltdIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652B3C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170906809640.11359.16050499656693659659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43f9a7941103b08c2cd1ed6e75fb5bbbe3e974aaaf15e2e5545ea519909624d
Date: Tue, 27 Feb 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709068096
