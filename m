Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444823546ED
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782170794; cv=none; b=FKo63dVLEALOGBXnsPvtBDMCtt7fd2+lAZQ6YBbNWUMuIFNvt+rKcLC6sjOdjmwNbhnYhjCCjchcIY0UNNWi/2mSea9KxvN2rH24qiYGr5nU6yIPq8KMEpQ6+CqjHv/BEPnLEHWTwruQKYZWtrj1lc3eds1BW4OkFwoqwg4Bl04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782170794; c=relaxed/simple;
	bh=stklRtEN5I9uqD/BTT0euywOPeXYPOW8YRRZIA7CiLU=;
	h=To:Subject:From:Message-Id:Date; b=LMEP0NXWHxScTE220Bi5iKusvzp1C9k7VtHt8uGin0sX/EUr+PXTu2ZBJrQiUkmEZ860eL7Ijlee25kbk741TisINHKpbATeMcjoVoSjJV5eXfm3DfHGnmWmpo/qPL/v9MDBekKd3whOlvzkHxIxF00dus0Z/Ep/CMRuSYYR6do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkkkLsZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkkkLsZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10AEC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782170793;
	bh=stklRtEN5I9uqD/BTT0euywOPeXYPOW8YRRZIA7CiLU=;
	h=To:Subject:From:Date:From;
	b=UkkkLsZiRU2KtGXkyutS3ZDHPGNnJUVG7l2/lb6/nJMjCj28QeiRgn6oQm8OjaF9H
	 xYGPMFKLs4b/R00mKhObplAYhWfRx9R7A84/E9qBu1BZaTjh22I8P91hcHfCnXBxXA
	 RclnogmNjJpBfRxYGiBoLBb709/A1raXgX1HZ1p8D33F0m86QDyi6kzQEm+QFlMOJh
	 zIpeYPvHj2u+K8qT4f5kSAj/liVD69CtqaIgvTx1jXBqUJYYaRw+J1jbdS9hcGWnc6
	 aUrGavB87bM13mQD6sgvMn4qbpkO5Xr7OzNGme2CWTuaQkSZoqTKy/WlxZwYbDEMVS
	 YSvRn1Dp1mrOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD491CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217079368.22982.2285772682226935766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0235aa3eb76d383f3f0af0fff26f26592673cf0f0f7ad2052d130918284f362f
Date: Mon, 22 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782170793
