Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF96949CF23
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790343036; cv=none; b=FKcz8zO9+tfivRG7k2VCb6mT2NQ2ZEbd6VpQe5NyzHNPvrau/MijKkvHGgGWmXr7KhUtmurgtlq7lpiIh1r3oNuDPol1hzZwBbNkrRxGwRiSj2cPYJaRBY139SHyj4Xr3MOCF4dtFea0HjZTeQjhubZ8cZTYJ+BLyJCzRACi1TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790343036; c=relaxed/simple;
	bh=wG16LdYVR5dY20JgN1ulGyKoHQQfbth5PZ5g8J3JUh0=;
	h=To:Subject:From:Message-Id:Date; b=owOmbXJycIGFhyDahTBvbwFT7XifOWpZ0tRkk/YpqAbQqho7Zui8ArwTXsYE/TQo5P2uBTUfnmgrJD+eRTHLg2rzSwGqBK38jSUuvNPMLXC2fy3pvw/fL465s04ckx6YYkT67yYZZ3VH1BCRg09oZsa//el1yJB7R/7jxzM7wks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyUBZAz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyUBZAz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790343033;
	bh=wG16LdYVR5dY20JgN1ulGyKoHQQfbth5PZ5g8J3JUh0=;
	h=To:Subject:From:Date:From;
	b=qyUBZAz9ItlQ+LYR33QmklHnkeM9EF8rr3kioCN2RVMmnUpmUlt2TE+1HUKyc+jr8
	 V7NBBItHnQzbfN7/ARI+aAC/l96aYxcVh3o3EeV78K6VcfjJvNhjius44ACX0C/L3X
	 Z7Tz+NLENqerXNAx0xezBt+8oNZp10cJCo+8uCRHxhZ6+d/CN5We7dNB3snpZrT9Lq
	 4bQpKwXsfOoiU1a5KxvahdpRkAp5wSjUm6bWZC8OBUkITRSDIwpMKfQvm2xPHtCCGP
	 xZ5gv3+UxXz1iNe7ePpvWBL+NY/SRLFnHyJwulCXSCcjuyv8bSVEBxA5So77zSTrXw
	 hlIrrwnOYkjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1AC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034303369.18089.8757253135202635725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ae11bc93c47108d810e4b6465cde22795134e90d47fbbcd810f7a06515f939
Date: Fri, 25 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790343033
