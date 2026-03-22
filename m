Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B60347C6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774146894; cv=none; b=nGxgJG21Tkz8nk5QW3jd6Rd2gJvy9uEnI/yW9xULE4AihzRC24aaHsJfO18Ogpx4qKG/kLDKaiQc7R8cALnulG7nhxU34Odrdtm8iisxoyku1m0k9GIsunglLp4hhLOp2B6z8JIJTpx/F3Ml57CIC4w91gv3xcbC4km8frh5bmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774146894; c=relaxed/simple;
	bh=TZ39WRTM/Ln/LZs7LFpX5D+MQMUZ7rXMaCJU/e7waxc=;
	h=To:Subject:From:Message-Id:Date; b=gBKRpcE2MqO7pas3t+lrTViOBHuPH/LiK08uHEaSv1ePu7Ma8uATEEXcWHvyojThpSSkDardHV+k+eaYi9/+sIFL5CxbCiFFxgG5eqG6GQVBdiElaggahKPky/rVenKIzzEjKB4ULuY1ydCByJvJoPlY6ORiYI8aI9JkTihtZ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuSWlRsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuSWlRsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A3DC19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774146893;
	bh=TZ39WRTM/Ln/LZs7LFpX5D+MQMUZ7rXMaCJU/e7waxc=;
	h=To:Subject:From:Date:From;
	b=IuSWlRsEgyWm2j5/tg3AMDaC16q2qGnpRSCyE7Qps7TvzvABAwm/AztuzWn0lmO9M
	 msF2/tZPCH7d4PKUNF6d5Du/XUsp1esz4Ko1L9ofT0OVFNzuuMsS3ER+btId3Gel1I
	 HPB98oD35kfJkF3V/9w5Ubq7iDtzPiVUkIZFr7C9viUCUHHaihDAsddL+CSvIZWRlK
	 Y/9N5pnjGwW2MHVGmztHC4T6+KMkvrdG7MM4llqlsOaD8KXtTb3dPPAqlYVIEWnX7w
	 8kR7vpbrWY5PnU+KjoleT58N6+wzMRdq16r8eNhpviJcpvYzfsD1HD0dXf8OO4HnSl
	 SC0BA1LVdB5oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227C1094481
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414689357.30239.815020913616148530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acfd9965f44bbe1af33d913a713c27c0d31cbf19b32bd35d978c8b00a8d1895
Date: Sun, 22 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774146893
