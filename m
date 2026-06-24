Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6155A3CBE9C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782312454; cv=none; b=Ezwv65BEdRxugc+Tkp4VIc7OQTq6kj0CKwVCc//v01bdnCW6Z59PvJTYs6QJVYxAd/MsTbrYcRCF3q2ILl8MlZAAFOygvDkJecUQg02hbBvdFsQwhnQTxETQ8+Jd9qyWyLPJRnFCphvbZaIUCFFA6mPUIsaIU0sycqxymnxslyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782312454; c=relaxed/simple;
	bh=v8OfjvwF0wGruwSujX2A36Akrb9FdF6x4YqwrUWRIZo=;
	h=To:Subject:From:Message-Id:Date; b=q6sEBl8AGIMWIXjj/aLCxGqQuj3RTl1LZSfIHpdg4L4UnW7LSP9EGGlbcn7vsAmDkhU86Fvb+PYcXZsJ/5YSTXYR+gvSNb1dfz6L8QwySt8TKfu0Jn8enUVr2FFL9igfaF3FCwHaEYLKjmeR8JUZfgJYCxX104UdzrU7nMGOoz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoQCE64p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoQCE64p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2614C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782312453;
	bh=v8OfjvwF0wGruwSujX2A36Akrb9FdF6x4YqwrUWRIZo=;
	h=To:Subject:From:Date:From;
	b=GoQCE64pzRTBhOsTIih+6428kId0w0zf3n/BOxUHENIN5wcjuBMVFehmn9xpBk7y+
	 22wEoOeG+1RkYlWw/zwDlVpQNOlBQdx2HAtxlbvlYbLLrB52/cxVxm1qH4GUGDrGtj
	 mUo+Vnu/DmXUBuapV9We+kTw5oz4/Ixo0E6orIwPaOfp+kH/XxKd3VwO4uEn5J7WYk
	 cKNePMGV9rPBKCAdjXJEtVrFq4EE/IflXz11Pot1gNLWfKVLAhxM43cN3fP0wxuaji
	 BHGXGADHOkGpsHVaZHOJ4FQyK1jF/+jk4tI+gJ+78f798K2DqVy6b6aVAa1xNBFLN+
	 +FeG4PoK5jS9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3075CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231245372.16204.15225665436876074942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ea7c54c40f1a1e39a7def87f23e2e09c9fae51c17bb263649cba060cb7fd51
Date: Wed, 24 Jun 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782312453
