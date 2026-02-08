Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAC2F6937
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770578634; cv=none; b=R1Q9YKw4Y+4CD1KRBw743v4Q/gejhnPUXzQNP5g6Sj/lr+aRVtneuT7h+jDuPfFrN9fRc4+zQRV4oMZ4jatb7gXRVjETugkaM+gaYmkVySlT+Amlsy2bsymQO7mDlq2CX1/bbFT7P0SK0uhYg7pXc23/l5Ke+1nCpcDP4NLB0g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770578634; c=relaxed/simple;
	bh=53zKIjkgFcv9ydK9lJ4g+RnwHfPbrosw6hv+ghbY4Rs=;
	h=To:Subject:From:Message-Id:Date; b=MTmo0O0omM3ocq2CMwC/zRspj1IrHgqRgtvkht6RhVQUbo2cfadjpmYzZjFGRjoyPMmt3X67hGX7uVE12kOWMVpoaprJDC09ZTElWJK6dBJOH+CX0peX6o9RGqfdD1vrFFPfRpZY2p4maRIfrCSksiXqBT1rB5Tr0ZIfkkXcTN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHQshY+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHQshY+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5517C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770578633;
	bh=53zKIjkgFcv9ydK9lJ4g+RnwHfPbrosw6hv+ghbY4Rs=;
	h=To:Subject:From:Date:From;
	b=DHQshY+271tuFTAMCfPnGdBGoUk+Tvy4b4gvgCb5c/S/1hgRCgiK4EO/GjULymV1r
	 l6fMqFrTgPzwjLNn84A38ujgVGzFjV0Y3+Ei0hwXm0iZfflIVUPCuN81KF9vyLYiVU
	 xXvth4/aUgHvVHLOev12kdLckyqEzr13Xgo64js15a/bvlijGbzrW6OqISs5tHk++x
	 PrQbGzAnXE7h+f6DANWb+TrAAhCciYidq3OjVD0c10FmZ3yF2XpuVVlQduu0UntF65
	 ThW/b52/lxtl2IWGJHIcFeC0fGyP4KMMU1ZdFj3rtGSb2/qex0pWHLaINzEF420T2h
	 DGMxEo/6FmgWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E554EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057863358.9313.4440066080734532141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610675fde3dbd9c9d134b9ef221df394c83d9b6c19cab61d9d438bf37cbd3ee4
Date: Sun, 08 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770578633
