Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA95171655
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718965343; cv=none; b=s4vTZCPBbsmB5Tzy5skK18mBKpuruShJv+gQpy26Y/7OYP0qpSpOZMT5UL3L2n8iXB1jvT4XhVzqXfRXgzBBZXChBlc73e7PNmW0RGjHah7VtD4AUNa6Gvn+Dir7Nspu7ndqNrbkNYlgd8yqDm5w9+qzm1UEqxq0xmw0t/v+iZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718965343; c=relaxed/simple;
	bh=r3tFj/jnmqR99HK0k0Z+TBQMDAN5msdnq5UB3DkrBzk=;
	h=To:Subject:From:Message-Id:Date; b=iCsDkNgXFnJ9nFLzOeeiS/RoxMY90Hl4MALnu7ehkSVDtwS7sin1c58vuse2dxzod/3w9e5tZvgCWoNczWFTrq5u7Hn9lBlIvup26MpOLnbtQbs6PglPTSQIZy5yaSqYLudQwHn25I3LwcyA0rsExT/J8KHvszjnB++Qa7veVFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBwzM95+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBwzM95+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1774C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718965342;
	bh=r3tFj/jnmqR99HK0k0Z+TBQMDAN5msdnq5UB3DkrBzk=;
	h=To:Subject:From:Date:From;
	b=IBwzM95+DKfTAAD//giFHUsherEWVgEiscOP6YYq8WzNFY57q9CYiqH+pCTTRYydE
	 upHPbXlhlYTpZcgOUh08Of0+8yN5520PcnDYRVOgdUwc909v7V7FA9Ud2XPrl4YC1z
	 IhSGWDeAuqYdZt7LCVWMa4TT38Z+964BOYpTcWdEHppyZj+mXMWt+DterPZQQQEKod
	 qTxLi7Gw8Z/sxS0rfGEdQIU7xdFQerF5cjAJhijwRpcg19dFwmA0XaPiqnAz0foJ1K
	 8XOiRqpjXGcvQuDH6qdxQguvOnCYekQBneTQ6gGjt8MUneYoJx88JISFwcqqiN4Doy
	 vkC0iTgYDLNKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD5E0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896534280.16233.9608818665535223353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31f7fc9dcd4f23ce9e454e5bde677d56e52e4108ce8555fd1321049151f5236
Date: Fri, 21 Jun 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718965342
