Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4C942902E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789734034; cv=none; b=qt0USDh2UTCvIag1ll1VTDaFlhsETa5KpaxWX+H/4TeuDCerh7OD6o1KfCRqLHpg9BWCNXDcMvjpJACx1QGidOXy86+bzAoODApCn3i/9jzMspfaxRqX3NJONBWPG8hZ74V5+aFzxVAKKOTUct+8rY1sCAYFAD73pWfOkq+ktBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789734034; c=relaxed/simple;
	bh=r1J7vVUTl0aTINyheefUGyu6STgIv/7MMxbmxDVU+uI=;
	h=To:Subject:From:Message-Id:Date; b=Hxdzr7DZAN+V+TDNQ8+r5bOmvgxEMyGu0Dd3VpNHkilvQE91BPZfO2T3pqWpqPuZz/vd0EnBWSZDwggDBAwvnqYEGrxNFtJs5lm7Esxp1h92Emm5FBZBxLlibmzUUt+xcRRhE8EZofGhn9h+VyanXuWSD8Qd9xr4W1xrziiaRcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3jkpmQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3jkpmQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96AFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789734033;
	bh=r1J7vVUTl0aTINyheefUGyu6STgIv/7MMxbmxDVU+uI=;
	h=To:Subject:From:Date:From;
	b=H3jkpmQd0LZJxC8sT41Q7IesALzOZvhNhTDKStX60by2dU1eqhLBq1ZPecZzF9bIs
	 v7YWoO8gHo1jLSobapfuCWHoeO5JZvtMnFsY60JYSB5Yl3g9YEwnCv7K9zLihgOnXV
	 bnYfUzhtCzF2Yvaq+NpDUg0UUjdxMum8ABCAV5e9qOH2bc2f6/htrKh68/j4ALcY/1
	 6mLOxLCm/r3ORpZf4GZsmQyN0a4f3GbuZHjKgiIzgw6WTiHVqdjve5qe/JDiVxdhwo
	 ZROVhtVEzfl6FPEeSJX0qLN6e3uYGeHYEsS64H6zFZsEnGZGfaAgOpyzmdslHse7F/
	 p88jMcq9gPXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA474C982DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973403368.3893.6324246267450968640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02828bae1770ab8c7ec3140ddbc2cc0cd385ddf07f6b702ca7c725864fd88413
Date: Fri, 18 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789734033
