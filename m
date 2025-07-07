Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC2326E719
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751866194; cv=none; b=kBb687SKkpwidIzFStgbNDrWXcYSe6PCJo6k+0/2hFqnsJl/fgqtXh89RtawZWR3AWQAOuMyplWkuR9ENi4BgB/0K59/Yq3EH9Ur19hlEcP1tFU/49vGHzrWRhboIs0+KaYz4DfDgv/4pNmOjrtb/T/VFBWnFzu0TGl5LKgoLGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751866194; c=relaxed/simple;
	bh=EpIeWugXX3DbITsul7xEGqF/WwT6HhPlibGFtr5sQgw=;
	h=To:Subject:From:Message-Id:Date; b=OXZmZ0RsOXdL2O9YzzqP+hEvWKh5wjmBEH3akDA2fZnG7yAMTD9aLhZYe/bUauwoSAk5Vi5dLDePqeBowomlLwUrCt5sgLZgGbCISaKpoBX3izQYUNQyE4dudzOQSrXy5K9pGZ1bpu/9LHxqhOtD6WQz18m6U6z0eO7/z7T+i0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcW9E/Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcW9E/Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0727C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751866193;
	bh=EpIeWugXX3DbITsul7xEGqF/WwT6HhPlibGFtr5sQgw=;
	h=To:Subject:From:Date:From;
	b=kcW9E/DtnSn2E91e5uEHGuvsgFRG6IoKlNLiAe3jJL/MllKI/+GtkLyf4K9V7xGPQ
	 eTA+q1pLCLMaI7lBl5W11piV/auTlcM4PplVtZcrYZ9hJ3gOLTYblkpr6Uqs80PpLS
	 QQmEvoEUBM/bOxIDRxAY6faliAWV5GtxUrF3V2DFb1TwxIdIfJKEkad/ZfEZqqlo1O
	 Yu43JRqe/8H+1kpuN25uHJzabp/XrGticoEQle+gnrDNBqBeZ8mFSEQs8IAKzrlMlA
	 TiXSoR4vun+35z2IP6sLIjUoOe9TIeB5vEE7ahCT+rUeblltc4S1Yfx7MjCHxK1tJy
	 aC1uANXzTPCWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E725C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186619357.21464.9168344454833704239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47da99af627c597fff66cea36109d5f9ff417c1fa309c7d0b3e4d77b3b996544
Date: Mon, 07 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751866193
