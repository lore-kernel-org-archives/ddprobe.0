Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D355B674
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723131354; cv=none; b=QtFe6c4biuzE8s25Jiwuh4jn6FRhidu40wFd8laaLf2CZL71VrfxM8eS31JQ3tCZMxhzWz//L5uP4AsOcwIb1ADFTjTdBTN7vEtOQKw/B3vlMujvRTDEsytfUY4FXgcYPxzW6q4RL9NvXzrxIz9xsH8/NL+1nX7mVIbKNbKKSyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723131354; c=relaxed/simple;
	bh=ibSQ4WaiKERq4R0pL0X1X4Qv2esB5EG+bnx7Dj/3rBo=;
	h=To:Subject:From:Message-Id:Date; b=d79fqUaKf8sbQqhZuXZXUzAlRhagm3FXv3MyvZYjVnVJo1BgTEMNXvCJScPfyCvRqPuc4lXeDgdF/WPHV7Vzk6rY854+zuQAG2VNdQIHtO/GLSRa/89F4vUR47++sAN3ZMaTbwJLREDMAyb4Ke0K24b2Z4zChmBR3OAGDAsrIgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xzom/ghD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xzom/ghD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3571C32786
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723131353;
	bh=ibSQ4WaiKERq4R0pL0X1X4Qv2esB5EG+bnx7Dj/3rBo=;
	h=To:Subject:From:Date:From;
	b=Xzom/ghDhanRBshH9+ohVVA2GhnWF8T2S52uFoygBd6I2QK1H7HxQ4WJBO9+68/W4
	 yUMAuRkLhQxED28jWu6eJQNsSwteogMkWZA6++mINSB1VcsKvXZcOQzuhCCvRhtMhs
	 EzZV0/JZV5pirhC3+L3ATZGGZ1ygf+XrmlGIxQqQG352qu7DP8fdo0lc14KuBywFXr
	 sue4t8bpiU4xTVimaXwwgMlC3MdwVZmCDJM3XuJ+H+iy+4DTUyFPdiRQAVpOBFDN32
	 fX8XonMoebWcOKLi13f6xjF/G9x4jO8LIv3QhjbXyH+8DidjxuN0rp84EMIdkkBqnT
	 CEgiBiPPCs7og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E945C52D7B
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313135363.22199.1330161621964008084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4653a8b821b4c93d139039842f351d7916336498830d86bc07d9691fe5390f8f
Date: Thu, 08 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723131353
