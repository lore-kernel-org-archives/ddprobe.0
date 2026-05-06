Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B1C303CAE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778099854; cv=none; b=ae17G9wvMR02j1fLlGUeX1AGzp/KlRbuqfNsMx+GZiWaYy0Q4J7ueLIJcKLzPnp7YckXMuA416sSAtiQakVAMr4qvNssjWkviEZHpBIXXJcka+CfOIq35pzWY0yyrLLNroIATzJyhelOdjNCtFtrMgd/hcqUe1Lz8TiSC0NifDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778099854; c=relaxed/simple;
	bh=rFabfyrfoq2yRLW7i63BOvpgJfFauH8a0ZiogvLrIU0=;
	h=To:Subject:From:Message-Id:Date; b=uPkvfrvhn5ZQwCIuoQdrNaQZrG5ayXAt6Rxzh0KEuqndj/oCPITpVM6E3/foaxJHy6tiNVPP1kXhMg+oM8vzBSYUHT7ugCOYjb8SBSY4BcUPCFNDUQwYnagb4O4jXRW6AyIMI3JsGli479wOo0yoRsFqzBzjUX2cp+z5rSSgOeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNJltEXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNJltEXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD657C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778099853;
	bh=rFabfyrfoq2yRLW7i63BOvpgJfFauH8a0ZiogvLrIU0=;
	h=To:Subject:From:Date:From;
	b=CNJltEXlEHp+exlDkWCopXtVHrz8OMeiGYBXPRF6ze/D7AgPibhnRiwE3ZLKbfNtg
	 BVF8R70TSuDmyzU5tSFp2SxfOzr2rN5LnpkCAPl8anl/hSzUCM6wLUTjP0x9MbERLi
	 5O8b2CutfysZHanUVD7r0c7BwrmLcMMMA/VFIRPMh6LyhQkkmeEgUWsMcrqe1Fpxd5
	 ozOeRsT34NteSNZeuOWlaxt5zjgWHZZqYht+GfMKWMz5n3nQidJgrQjF7RVQ3W9rUo
	 4eUewwUbGYNxel+bPZyRlE44tuQ1RwUdajHY22bpMBllB6Ys6+Bk2nqrdZDtFrqnj3
	 /zxGpDvYyVV4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF68CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809985369.13852.524952151321256153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52208ed6cf35011623964a640da9887b6075d57068f64f462b91043c0548163a
Date: Wed, 06 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778099853
