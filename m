Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5472124336D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783660714; cv=none; b=bKRlofViEDAgsuoCzWpZfa7z4y40zRcE49GalHDa6+ZRJdasw8VoPNbPCpkYTs9yd+mHuGt7CFsg8wvXEBw9JQaiOvl/rGACC7uatAELgD11mxmq8JxvD4XBN0LJcXy/O6WEZTtnoDSumFPg2/Glxs2nkxSsBvxjWl0gur3BAJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783660714; c=relaxed/simple;
	bh=4deQnnqD277bxUKhoGNVUq0j+x+Jsz7QIkFlfa82V1g=;
	h=To:Subject:From:Message-Id:Date; b=rHkf3DeAj3Mp5MnQ6eeZczVP49puJfOXytJIzK+1vYZUh385vQYgV5Yi5vgxI2GCxou6DT7ywzAsgtKmcKF0c3vkVxmcLMJQLdb1sUN1Dn046gwrBU3ysUNF1J1Vfg+chuSrZX4Gr4lmU+W15p0yjKvZeGLNAcxrQBF/FYm4QfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze7tYQjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze7tYQjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E0DC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783660713;
	bh=4deQnnqD277bxUKhoGNVUq0j+x+Jsz7QIkFlfa82V1g=;
	h=To:Subject:From:Date:From;
	b=Ze7tYQjBs54/oOd3v4iWMoP702SvWnAFPhLyOHA5agAhQg4MVR6OznV2sSf8BR9BB
	 PBpC9nG+h2qjiEXZLy/aTumxx+cdit6n1eFjFzXxCtisMUrG0M/9AfdmI99T72OEqb
	 SX3UKEalJ9iyG6LlIS4s0ckPAZTRv/DkzAGWDK3v6ZY3PoF87RYYZXwJAtBtRAQCPg
	 f6HHz1VFTrbBcIPJweq7RTemgBxaHos174zPD40dcxjfDU73O/2rsVo83phE7b5Mu3
	 BzH7kddOu3bmH+ZdpgJ7mxy519XHYzX/wPH+02HINqGmaEHWrJe5QJLs6uxhbK5xlz
	 UMSmOr3+eVJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8465C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366071368.11553.2248372472950012799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a999af711de53a6aeb9b1e7a1179f158e506fd112fc54807282de84a1e73ee
Date: Fri, 10 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783660713
