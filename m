Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACA222A4D6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756530594; cv=none; b=BJzY1MIQRch86UNFKXYuHgEHXyfnb1UGVUMSv5BVpF5XAbneGUlY83hpFmSGYkGn6XtTZPOaMbN+gYwc2cuUHYS3kBKOCjsuharVTkc8+YJwJxHDNyyEO299Z2IDFVPG4Ws384SIRr3BPWbk3e/fJp8dVISNg6Yt5YXRTv+AEA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756530594; c=relaxed/simple;
	bh=UVlpRmbam3uDQwXvDnwctshNwn0UZ7lkfvWyb4haFXE=;
	h=To:Subject:From:Message-Id:Date; b=Vm0uiJYPxCIaFFLyjQZT4YYgPpIYr+DGpSUDsw1qptpjYf6rsiMZILPvmlzij6ve937IF3FtqXP/5UwIuHY4hOon+gPmM2wuFleeNArmWz3maTLO9ycTYW81h4SMxpZISaAQvC3VnwErxI/qVPy6siWiNnfqvluDNLxkLxN4Rt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPoOkUAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPoOkUAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756530593;
	bh=UVlpRmbam3uDQwXvDnwctshNwn0UZ7lkfvWyb4haFXE=;
	h=To:Subject:From:Date:From;
	b=EPoOkUAnXYa9b1idJsqzPkvK3sIFVjSrjGho1+YMg4+UCEKb3Jd+XltvuEMNYwbqL
	 vJsj/yu3PDrCvyl/rhqh2AfpjDWARaooWJeyayybHQqFjjTMOeeVEmm4Y6oDVU9OxK
	 Jo+7LAL3WQ2ti+6SEQyPeyTKJURzJSpevH8RNFQiuGAhokoHieCiHq3ejXDS5WpltP
	 dVmnvjyQkt3rFOiKnxuaJ1UzvKjtweAim3TWTkcgjaF5+mcc/gKpy114cvlJ6V7i/X
	 dkF76dUM+I+Ts8l6ndP4ucpq3vcVBOlTOcKnlv71zvl7o5D9DETZvqFQndlhxEd7it
	 V0rBpdlCzwytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F5CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653059357.2272.9739065829950338201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aed6bc4a793e49cd7111ddc4f0b13799201aec7174986a492f69dfaba6848c8
Date: Sat, 30 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756530593
