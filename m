Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C9634F48A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773647094; cv=none; b=ADdfE8fDf+204ojTWr0+4jRLTkqRvmGCmzCOjVSi+b/bm/fsgIbkjKo+OQX3HBNh4ogXwB0eFuqtz8w5mTf5fxCsxEGT+ocnzw+1TAMuObIzZ8NOLRaYDaRPgcJ+c8qrqqeTbzCsupg2Pc55eeo55UJY6vIwCfbNR4ysedJIVGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773647094; c=relaxed/simple;
	bh=C/+gTXchP8Tu9DMeTNBsw6p4YBjrOXc9fMd6mTBY4bo=;
	h=To:Subject:From:Message-Id:Date; b=V4XxNvVP+qLm9z16rQsoriVXCIhZ6PzbSQpv9Yc1ZaFJyYvtNsnYolMBSIPWRtrA0HvIjJkqw/l9poK4XHE0dlX1uRRhiij+p70rMZqw+crEnY/rgmgw8vJCQ9S5gkdD62CN/vkhY7zAy0Ze8qzqmNXnuJhLikVb5QJZ6khN6Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyDZHz4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyDZHz4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0E7C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773647093;
	bh=C/+gTXchP8Tu9DMeTNBsw6p4YBjrOXc9fMd6mTBY4bo=;
	h=To:Subject:From:Date:From;
	b=IyDZHz4PvSFJxXUui5fJXwn6eSLCkvdzAXEvEzp+EOWy1ZbAtSF+PEpT/uchO2sMf
	 kvfJSXOGqIRr/gbZoUPQv0tMz4CwNH/j2g3lXdqNmp1leb9hoRaDV0E7o+z60nlGV4
	 VPlNY3PwosnHQl+xhs+rWsqFvWd1/PqyGg0AGs2Sbq9RV7AbWak53IVJBVosrdRuzM
	 iPGltcIbUyI8Vl0PuKVoWuWz7889R7kYnKTlXZeHc8Xt3/eUnEkyqieY8yF7u7R32R
	 9J99vIN5ugdiYfPT5MqAmew2t7tcbps/5Ea9KCe17+bnevgYLQoXsIlCgVxPtsKwOY
	 Z/1gdqtexEhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B3F013C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364709358.18290.13175323905739051987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5014ef0e83bfc0030d222bde6ec7f9802f4613024db39b3ba8ce513083d2d7
Date: Mon, 16 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773647093
