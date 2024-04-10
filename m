Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA41F3E494
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712792296; cv=none; b=fL6Z8yZfr/HAUSxUNBIqS6Fm0WP7wk+Etyb1WkEMbumzbv65VckSnWzZMXi+4CclSlCow0tHMZTpqT5b+KFZPE5kyb+o1iIiFuSfsP5jovBipYYxuh40pSxdmfBXOwweBxVIWetZGVYrt5kqVkkWx5cjJGxpTMSS1qFHCMMJzGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712792296; c=relaxed/simple;
	bh=E06Pe7+Z6b/wVlU/ZWdTl8lXa5G+UBXr1ZsdyMtsn1s=;
	h=To:Subject:From:Message-Id:Date; b=HGQut3HToNw6EsqCOfZX1wWsh4exlqw06bjgH1EYHh5c4I4COFafs5tzrosb7mG9sLNAr1L/rULzq8a/lTeSVFOeC9bS6LRLXf3REy5JnZPdN08g2mhUh2uhhZAUqaJqKAezDdWWPdIVAAMbZP0409bVsPBLWzYrqE+p5BhcaA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTmY46XK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTmY46XK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7EBC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712792296;
	bh=E06Pe7+Z6b/wVlU/ZWdTl8lXa5G+UBXr1ZsdyMtsn1s=;
	h=To:Subject:From:Date:From;
	b=hTmY46XKXr41xbTnvwKk/PDZYzzdP1wayY2Wv0WI2sb4kkpIIdE6KwVtOB5BoyysB
	 aT9Thpwgx5XNuVhjpQd9M2D6Chha50OIg94B6fw/nvRA8LdKOyOTmNhpuK13Ydg/ng
	 NIzVAQKsfRChs4aNMUnELJO18tYk2AvlDtNJwemSKvuoJFAKz49MuR6QSJZiOuSOy1
	 72wPPLK0yxfxLIh3UpAYl6RSSwyyjgZjRTj42cytFaxAXuXyFvp0f+3b2Ma/P5oriY
	 aBCZVFPEfqcCPcXNroSr2gmDFBseGmSyqQV08mlVNa7/qEOnhsjcq61USHr/C2wbIN
	 4Q/ElAXJxTZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70433CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279229644.21741.9066401480049952402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6052539cd711d1ad320bae96a142b4f94f2e11b7d6f8e28d13758481e500a4d
Date: Wed, 10 Apr 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712792296
