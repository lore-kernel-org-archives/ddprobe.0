Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1272F3C07
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763523714; cv=none; b=UX6t7RMa0ZzX2sR1Ye4OqrVgmWB+JHcJqFcocHxOtRrZbLB4drF7SwoA2hhdJPfZD3LZ2i8DbNbdshruBRVt4KOmskuNG6EF9zmXZHgWuNtlArikz2t+2tTOruCDsV/g5MGmbUZ1Q2pywMU2Wze/v0+2UNlkCmtDUy1LDyfVUjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763523714; c=relaxed/simple;
	bh=gn5J4JEC6QVC/olXF98Xzu4mpvyiDlT96No2T+Ci3G0=;
	h=To:Subject:From:Message-Id:Date; b=T98+xdmbglI/6JUz6uw8xAKD4qpMe/wqYgDNsrLF/INX64x9xVXkpUWuDa/73cRTJT3VVDWANHAZS46zpix8dh9LL6ZakA24q0s445ZdqQgk7HttXtRPHcxMQ9Um+Ue6rwU1XC7bBT9BX4mvjC/T4HSg4C6INCFsgzc2flse/6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QErFNgHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QErFNgHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF23C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763523713;
	bh=gn5J4JEC6QVC/olXF98Xzu4mpvyiDlT96No2T+Ci3G0=;
	h=To:Subject:From:Date:From;
	b=QErFNgHF5KjrQlrcC2R4bACA5zmxuviP6yb+fgNVo4AwU96f5621o/FaOAhYgbUwG
	 6Hy+sXtddEjNGo55TNpu1hjqdKZ0OkEIqPt/5OEI1KzIX94qowzlduin9LMFnbp4CV
	 Fjl/OZ9UaTKIGEDc+yW4m8ti5VLGo1MkrIUPIUQBt4jWaGForH1IApxFnBqDalwCB3
	 /IyIstWhOgXsDaG79GBWoFy74eqOvU8dsXergjfoXAz3cF/D4NEjfBlEIcmRrOQxbJ
	 QQYE6vLxa1eLlMnKetucPjsugQwyINHSJI9yy3yAyfEKh6clorskQk7ZlcKMuUHMOF
	 V8ncPK4BJ9ukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B98CF256F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352371358.11513.16034843367116923898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cc6142ee4482336455c538157a3a87a5f3e5138bf6319254a35052ca9bccd6
Date: Wed, 19 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763523713
