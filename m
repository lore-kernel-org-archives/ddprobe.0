Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27196BFAC
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710409097; cv=none; b=c4iKGbHUh8DB42nqqpSu1sQLTGH3QuOFj0GA8Nx7cGNY8/T2XQOCUKT3HavittYcca4ZqfjyAD4qGA8omu3kymzorfZK2F2dJAk8v6jlkdZxRyR7JMQXTcBjjxuO4fuzM9wGYodsyJ0c2AqCj6OELEec3TT/yS3XYXJ4aG95aL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710409097; c=relaxed/simple;
	bh=POcbBSKvZmC2N6ncuJ1AHomK2vTaEV5sC2LLDh8BHEQ=;
	h=To:Subject:From:Message-Id:Date; b=BHoypjL1JIIV7TElhR8QyapT1nLSI8jjGztCn4DqlRRncAESZgSHVUfQBNkuyqlin35LKNdSeZGL4+hu16IqTmuLmltUWho1qXJHEF9oq4d03eOhejdN3dCsKlWhCsYnbo0M9CAxRqGYnNuuFzK9KUI1CNuKwRI2P/k98WtBIHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MO4xCoem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MO4xCoem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6830EC433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710409096;
	bh=POcbBSKvZmC2N6ncuJ1AHomK2vTaEV5sC2LLDh8BHEQ=;
	h=To:Subject:From:Date:From;
	b=MO4xCoemGTiJJiBAi7zrVcPmOiwyYj+GdEsisxbkb73N5IhvL1fQlqr31YWDYvtIj
	 6QQFMvLzioYBTwp/N41/G8BOQx0DWGdghiILixa3CAXzOlTvj8adJ3Xty08M2sOwlk
	 dv0Dd42zB+2KlZJVefXpbzE2lN7hXPS/Q28FmDn8IAcftTlLH3Z7bl2vBuNC3RIjuu
	 RFeVvkwNMaJhGZDsZWkP3NreAwilg2ybmmRCWoHY6AcD/+f4nxFv57g9iu17g5ytK5
	 EaEimDGjKLQISW3BTZQ8eJBMPwVxCt9E+8ubfLnS6mtg9dJKde78R/5ZrSg4sTxB2G
	 mhQHMrAGcbtkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD95C54E67
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171040909637.15725.674292754142035648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77ac5c2e2f8db86174785b5b7f50859d0e52fb3a6be72bc73a809aa19f85d4c
Date: Thu, 14 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710409096
