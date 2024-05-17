Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2981A3E49C
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715946743; cv=none; b=NsqJmE7i4gqZIkuc4LoWbDDwIWzIM/0zDbV6uq2KMDTMXNIR00UiFLu459x+cEGq+BbE2M4uiog6/p+DPPI8L/CVdXPpQDtB3JJVmtiWOgxTcxa4JPnV8XKLZzgC+BEeZhw7Rk+/KgjMURl3AZd842tjL+tIab5FZ7yFikmCWoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715946743; c=relaxed/simple;
	bh=I2EMryARdXVUid+HnuIpCddQRqXk8Wnc3JJUlDPkskA=;
	h=To:Subject:From:Message-Id:Date; b=SJI5D6LOzn6NMICkddA7AfpR52MFJFhFGuZyWHl4flCf7TDiGokJcQ0ha1Yh5oTmTEZcNfGtRrVCN4Vy9bvC8s3nfQKUQGUn2oB3xVFzZ4ekijXHs65LhfX4K7hdwNWctBW/Sy5DEKajX4MoRnMKuNDaKfRKjBJpaOrcMrCT3XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ32Amw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ32Amw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715946742;
	bh=I2EMryARdXVUid+HnuIpCddQRqXk8Wnc3JJUlDPkskA=;
	h=To:Subject:From:Date:From;
	b=TQ32Amw/ZqeWyhKADTvmpereUW66CdrEzfKBHWqYN7huyDoVUeW7Q+JX9lBODlct1
	 noVo3uOE3AIcJAVlMkCrByso0a48QYN+3fT9r3KpnM0QHR4qwGN+OGBRQIK2O/AO4w
	 csb7Mn4NGUL2p9/tH/8q0xAxj4BJr0JNNA6IGzZq0Qvoi+OanjAm4GryFjpevzjkNA
	 0O0B+4Lcd0OrgFKmaXiyPC+bXUC1IV3tlQwlvzEzB/++A6ntSNkTjQ2eNS0ykgX66B
	 QZB4RaMSlVoNJPpy72TTm59VqjKB4pYFoz9msmNwCPxeaB7S8x4jR7o15ssdGgTCCF
	 //ekjsdL3mw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74BCC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594674276.30434.6244185512126763515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5335a6c43b03983209a52f3a363c7544dfc73f72b043612e4a5965ed7851558
Date: Fri, 17 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715946742
