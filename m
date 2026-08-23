Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644DF3563CD
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787506834; cv=none; b=k0AOml0vsvqJJSKqb8fp50x7dpkHqqrEZk0y4fYznY9YgiUVwh3wRYcxixkSOjPgRWkm/mJzQUJQOIRp/+QwoOUqb/rxaRkhy6+xSrZLP09SHRKBYRLfDrPUwgXPYb+tqI53r475CEcd7Gdq247FiDsgvFH5jJxW9kG9qQD4hcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787506834; c=relaxed/simple;
	bh=gJNUbsM+BHEHY1KgeFqO4mnuu4IEghZFvKJeoCXnXtc=;
	h=To:Subject:From:Message-Id:Date; b=Br1RMzXK1KhDtGCBnBgdJYlleLIa39Y5OnEpr69BO4Zj3d1/gjJvOcObp1Pz5jFCrRmtfjAOrYLq/84FR25ahpPY9H5XVDTC50IbnadJFwBAl4Zlly5ycRxAHDBXa//7UJae0BNtbkV8/h9LHMVES3S3TLQttgcGODwf/nm3Twg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKhex3GL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKhex3GL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787506833;
	bh=gJNUbsM+BHEHY1KgeFqO4mnuu4IEghZFvKJeoCXnXtc=;
	h=To:Subject:From:Date:From;
	b=eKhex3GLKTkJTyNkVe9Ffli9oa/QkHIp/3uyKAuGiPXbkAhSf/EDxzdh+HkqYTeL2
	 yHiNMPV1xXcIP8XnPcd1yObLZjK8qsL2hiRh8GctFLPZp5ZpuTZF0pV06pKqE4FcoI
	 L3KULicf1cChju6AsREud7RYUFsZUJhNLSN3rAUhxnDBpSGiWUj2QNWqI8oUjGKJNg
	 COZZUTWUf9csCa3PODleHGgIGWgPpSyM61OrVwAV5kiBbW7gN/mjCNwDLr84T044Kp
	 Dc3oEeSBZh+iOljmoTkVI6E2OhCXw8x9Zs58x8exlWrcHcBGobKHLgtWBbc6XXExRh
	 R0rGfX3GMhGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C3C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750683368.11907.3309376238661412721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69415477cc7cb106a833eefbb1f498106ee67fc1b5214070c06e928e7055eea4
Date: Sun, 23 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787506833
