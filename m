Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C7A32AAA3
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774418094; cv=none; b=G8zlWjOQNnK8DvrmW5v9b/jVd8YmI3zQzvqNiAe1Jc1EWkC54Yvqsy1gxaGa9uC1eA94wV84nH9ho58tzRtRTWoGh27IlFJSx0eEKNHYI1pC1RBiEqQGNVMTfPF0s/LLj4MDmt3chJdgglZn5Lm3Dh9yee36wm1ZU3Hc/bJa8WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774418094; c=relaxed/simple;
	bh=Zb7Nf+9aYLCeTq91eZkFcfBekz7+7JiniNN3QfgMnq8=;
	h=To:Subject:From:Message-Id:Date; b=HLRuIHe+xrjKMOrkPLuyfFTrDlElrP66XIOPZKP++TaGZyTVmgNxTqtuQTkW9bAdQN/nFMPv2sVtKeuY/m2eV9/pxxaay2FsEEzZz8HhwBPz+EfFPhjCW8QtmlLB6z+1Rzu7SHe/8IRsh5g3S/XculTeGKqJAWX7Y57fxQZY2sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFRtz3SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFRtz3SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A057CC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774418093;
	bh=Zb7Nf+9aYLCeTq91eZkFcfBekz7+7JiniNN3QfgMnq8=;
	h=To:Subject:From:Date:From;
	b=XFRtz3SZckOMQnF1chw/FoFItHSNeg9ITmWlp7XUcSBBaPsn9orF5rI3z51jpB9Sb
	 ev/GENYaEPQ9CF/ClOjMVQi3wagmraUulY09qkxGhpetLlKikwt3U8QGV+35etjYx4
	 ijcfjoNlOYS+7FkB8QPAYY9pJYObrufdGJzwOyxD3JVMYZ1PwuTSrAQUmsO0SrZjdL
	 AKxvpK+emtWJwjksbTtwHXfp69thoUc/gNO73zH5R0g8SPuPYHiyzO0a0zuTKMUhYV
	 afe9fbwhk836baAz6Ab9AAReDSvZqFO6kE17xeMkDTB/yrUfxI1aLk18mpy7HVASh3
	 oLX27YE98gSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91323FEA806
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441809358.25823.1496419587420197726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9c0410473142119d4125df32e75b938afb7755369d6c5fb5e3dfc4004f797c
Date: Wed, 25 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774418093
