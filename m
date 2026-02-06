Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0888031354F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770363234; cv=none; b=d9Fc7PRejf70vtT8r/B5kf2nkwOTrZPYGDPgmfNuo5WlRYz76FxX/EDW4mHRAFjLGKVv/zFH9XXYcrTlLqyRsZJ9WZeJPB8czkLtK8m/w9YYkHBDS5PcXgnTTlxDtqHWb7zkBcg31zmM2xYv9WFAzesou4Urh1zGN53KWu/bmxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770363234; c=relaxed/simple;
	bh=dfjU8Rwdqzb7Hflbovfwd+Y5LkX4aGPEPrndKvu0DHA=;
	h=To:Subject:From:Message-Id:Date; b=gXm5i1qDI4BbssW3Jid3oiPeobYKrRuIA/ScUi29cA4uU0DO8dbXKpT+vP1qw++eto3KteOH/Hk1QLKyEWLeR0/j79mblERzgvh83+88PETJ+dQtk1F55dkf3+PWr46CBoqKmeXuJgf0Nv2d9O5ew12IvEbzu3KJ1DQpU45hQlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnwHAvnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnwHAvnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770363233;
	bh=dfjU8Rwdqzb7Hflbovfwd+Y5LkX4aGPEPrndKvu0DHA=;
	h=To:Subject:From:Date:From;
	b=VnwHAvnD+SeDb4AFUN1dP99hfyFMOCqE13So/vKDBrICRzNqGQySJFMbrBd1nBEen
	 zZLK302MdU9RSNKiFEzQQEnRYq3DAR4+G2O3EXaFTL9a6JfwwQEhtlQSlx9nNlOdHW
	 BtUnx+ZQy85zc8eAm0hurl5gW3fh5ZveNCNj2oA1OORYWjMSMBRheqT7M/MspKdo7R
	 PoL2dcQDPx2eFdWwuxdp2pPRirzXo6H7BL11l3yo//XsBjUp5CMRn1xhd/D6o4hJbW
	 0ny5dJHApMrRaEZwnt8fl74yVywgSQrfRLBynWZVPGzPO1TKpC2bJJoOFsQTPf5VUc
	 f7zwD58qzZi7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA1EB28DB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036323359.20036.9333135382697856776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c910a21d40cad3d348d2bcac7615585a621b774fef25ec0ed9af7a68d1985ba1
Date: Fri, 06 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770363233
