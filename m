Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D02D1CEAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766730834; cv=none; b=Hrpd3l4Ok1lEHvxUJzrBXDuL6I1Tyr7pznvgLju313qsvVuQgO0w0jQrnhP4NzdCgp/TY3Po0CG3Qz/WMpgyByb+c9q/vMlc70ed3QYXWWuHFwGHwwjPzRwHfU68PwoTcuOLQgPl7kFcPAuoIpGMlQPEJhk3WMBNAAZ8tjbnCbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766730834; c=relaxed/simple;
	bh=CrwDh2bzYgS8kqBWzaISZJbEIXBKr+cCsMsKNMYs4bA=;
	h=To:Subject:From:Message-Id:Date; b=FuB9KAIY2HqrAWNjm/2PVbEvty//yG+NV2bcFA9V1dn9afqvPrWF0NW/TOkENDhc/s6796BYxkFUPnXYHaA5puPlLTxqw2AB3qI++qo6ejaW80eDs1FzAXsyfBA9z/cAO6/JqnmnZwk/3zMZimMwUILSWpz0szVIxIWAWar9ZwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNiQTAHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNiQTAHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB520C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766730833;
	bh=CrwDh2bzYgS8kqBWzaISZJbEIXBKr+cCsMsKNMYs4bA=;
	h=To:Subject:From:Date:From;
	b=uNiQTAHUwi3xCh55pnumAyrVUHqHkTChvtSrxbUJvEg7X+rdDzD08RzfErViTd147
	 rQ3gpFDAg5crJBL8+iCVfpKr4wtXnqxVQdi5Su5m8R+5J/aQL+0WhPH0O//PT5bxCn
	 ESGXsG6/C6G4AdMyQwsKjYY/yIUSNDfeqIFeeFN6IXcykmS7DXp8dssS8uqpRQO+Dv
	 kEnVPtbgDcVApaSLR7p1Ow0M8ZFOm31kOvSqZY+8bjWuRDNoEubltlcGTvAYUVUgFt
	 nv9QJUBxoZ2+fNZDvNkpVBEn7HF2ypSPPMDBjMp3aGcXhL+q/y/FjsMmO/R/MHAL8h
	 bvXigSxhAtBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C6FE7AD74
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673083359.31275.11118428821387618608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6220b4c14cdb89ff3bc402adf20cf480a5a42c564bbec2018e6c0b852d25126f
Date: Fri, 26 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766730833
