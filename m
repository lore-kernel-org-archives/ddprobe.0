Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA901FF1B4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775598934; cv=none; b=DrCoO4hwxfyzcx/JD2wvI84nTlmgbXrSGPhDRIHvOjqZ/vl0YFhA2Mw6Hugtil/Q9/B5z3vVPFR2zsGIWGk0x6SEMHMDezjLloJQIfDAXfbl8x4/Zvo+hKgYXD/yy82E8hdOT+W1b2AC4BKmrtRny79MiGZLl3VwoLoLwHiXG2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775598934; c=relaxed/simple;
	bh=MBlLBfAxonegthuYLejJ2x+e54zeaQgkGos5BvLudRg=;
	h=To:Subject:From:Message-Id:Date; b=EGxEHh/CVuvHYpbCrxlRxLu/MiOWmvDrc77dhQ0JduagRdNgfGty4E6Rpc2fTuFbjxOy4Ai2CZwYaMlC4SpJXTO1Z7ZOdWcB80fZb+l5+Jmpwb34mTHBg2RRjU55tlCFCpWVikPD8MgRMNs9njbWw38UH2+ylZ3G7JwWqpOPzqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6snflYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6snflYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB778C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775598933;
	bh=MBlLBfAxonegthuYLejJ2x+e54zeaQgkGos5BvLudRg=;
	h=To:Subject:From:Date:From;
	b=G6snflYsBJCb3KMTlOwrnh0oA3KiKVEPEzgx5822O4fF7LHWKftn2HhoCJF6OMioJ
	 Cwms2wAA9Gu1tzSaGt27c7Pfdf11z4yCcZTpEp6IUJXsiqpkGxjvH/XTEN28lRbBX+
	 ZXX3BHY2LsHCVkoMEzL3ZLCfCAz/bFEywLgQwKguLAVyzGj+if6IjpAY9maoRZkqiX
	 ZxlwK0LARerxg/m3eMxjM3vaUprKd9o+TplC/udSKh6Xtz++hY1qtWf6MnoCOJzLPP
	 PXJbDxOFYyH+ztbozeywE3d42isDBi019zzgvreHgB8UwUqBnjxiXZd7wZzYk7DY1L
	 Zj45lEh39hyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E71EDB7D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559893373.1072.14832175525344586825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72de52e8674ccba8a0b3d6f6942280fa8f9a653a713c6cf63e0f0d4f2bc84ac
Date: Tue, 07 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775598933
