Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355CB13B29B
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742751594; cv=none; b=cOjYcZnSQLcN4cU+cdlNn4I2bGG0Lo/26lqFkoO9pwEJ4Hg/FQjneQHKWs9N/oN+XZ634GMXtj2kGSe9elsbw/alo8txnP2YVGx5TrjPSkQJDX29f7eilw4KF75MdKY+T3lY/eUxsuQuk1ZUwT+o6mzEio/dphkEJSXxSBb0By4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742751594; c=relaxed/simple;
	bh=JumK4gWUDKpg26SCC+RjHipR6B30BddSf/s2LGCz63M=;
	h=To:Subject:From:Message-Id:Date; b=jGyp2K6tL7/WLbVmruVTQFg2C1/brXPs1ebhPLm15RPZGEU210v8Tj+VxM4iW+jzFSG8lsrjGpk2dz2CXdk67lLUHbIQusg5zCI4E6rKf82r3md0yRVd6rVvOnib/oBrAs/4HhL0P58zulFWquBXLcecsCXNF2XliaBOBzSymyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbqx8H6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbqx8H6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC09CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742751593;
	bh=JumK4gWUDKpg26SCC+RjHipR6B30BddSf/s2LGCz63M=;
	h=To:Subject:From:Date:From;
	b=gbqx8H6xpCYNt3hmcLAB4bJ92Cww+uJuM+9GHBIPq3fVXMaqG18cG77to23hUEqi9
	 aADQJ8BuRjiDOHxLPHKfge1dYQwYEPo6tXtBwuYvnzrTUnVXUM+Q9CD4ClagRY2ucd
	 4H1taOTvvHKWdGiyxsBukzyGjJREFNSITlvZdGIvdiO2NbsyoGIfMC/WEhZ6Te27XY
	 Jn1U74vyJE2O5K/D4a/n4GS3L3PGr2R3N6Y6pAkf1ARzm9lZbIXSEb8wSB0+9o1ClI
	 mKtvLpo6EtBJkQvFSsvthrkj5Y72+upKh6aT3HBnEzdwqHJR9u1VZhIxycUATHs9/+
	 r+CjYhXEc0vQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3EC36005
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275159360.3428.13028085683530027037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57370d9acc63d32c83e3f117a6a25ed7ad46becdb85a42ba76a133f6ab307cbc
Date: Sun, 23 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742751593
