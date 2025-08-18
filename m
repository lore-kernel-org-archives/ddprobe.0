Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEC521C16A
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755553194; cv=none; b=LflokgX0X5SwjrRIbJynCemi3vDMcGZvtAU6ACQxzEWbobdLHI7Yar9bFUEze1Mq+TjWBt619WeMkUwBsy/PZTU2TydqiXqsL8t5AoQOUkFY//CKK7WsRe3AACM8kp+Nb3SZ4Fja2mOxNsh41xQsoQZleoGxdSI9qhM9u0eSEr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755553194; c=relaxed/simple;
	bh=BcFjRdhrzGifc5pf+ZB7oq56ZKB267gE9sfsuODyz9Y=;
	h=To:Subject:From:Message-Id:Date; b=dO7JTvTn+D+8rongRXlU2n9ByAIcL1qTGIUL+eDTHebG22PmS4Gq6dYGkEfsqZaDek82j/hc8494gESFeX/bYxkU1OiyRHPXCiZt372uKdlWbAHdarCwF7MTfmGc4dimZoxDrTgnna6stTlMaHDDR/u6dSncxmq5JV74YZKyAmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+ppH0h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+ppH0h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755553193;
	bh=BcFjRdhrzGifc5pf+ZB7oq56ZKB267gE9sfsuODyz9Y=;
	h=To:Subject:From:Date:From;
	b=d+ppH0h+QVBCs4+rEEv0c9HVC7mpUfn5FzfeFFSbrA3M8nzyMWISfa/viq9GJNxzh
	 48YKlLYcBYQ27o8/sE/wuxVaZtyheIvXTr5nI8lFTLwfflcGNptwUSUVn4c7NQ8rYG
	 H5XT/wi0juorE13HGFw65R+2nMDNANYoWxo5bfnStam7Ir9WKdKdQVps0M6iMot1sc
	 n7wJfikyKD/pTjsosumVx99eEYpfmB585vds0ktZ6CPOGJ6EHkFgFIYj62I79kp7n8
	 Xf87HOvlj7gxctdYtxO/K+r69e6mFGnSGjqsIqM9kj4tumzzmpbivG+0eZYFdOw838
	 cEIEZnSqBWclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CECA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555319358.4792.2721802370569810903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6042bfa20473736328784cd98bddfaa7a7caa4be31af7d212d52723cbd691d26
Date: Mon, 18 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755553193
