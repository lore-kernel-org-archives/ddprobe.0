Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B883314B9A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786081834; cv=none; b=Jp/T7Uiv9+FylrksFOtrvPZJY9kGfYA6pWwdnObnff9kAdjwEmNsiohGUfOxM6nrNE6kvBAER3vE4UhGz38JbT+7OplEK71+Den7Jsaz8XR2Vt70oncSdhVL72In4eUV2LFnFBoGX/medkKaekg723oR64JQoLQvEq6sHEWdd7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786081834; c=relaxed/simple;
	bh=IMj8nhUnafss4CVWhRjmTqOXFrEomxqu25wpYizIIec=;
	h=To:Subject:From:Message-Id:Date; b=tBVuNBhjXqupqm+3kZ/mFe0J6ztZ5QWCb3FCjKqLLe4aIoAmWuILasfeNph+LxeDnnhPhqMBQod+rrXs1IiowI1UcZExqNBPZEeJwGeUG73i+4YLs1LHbfkHyqu68yt16+CvwRtj3i2suzH/dnvVwDbe1G06xQ1qfySxlZQvK0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXijZT8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXijZT8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D232EC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786081833;
	bh=IMj8nhUnafss4CVWhRjmTqOXFrEomxqu25wpYizIIec=;
	h=To:Subject:From:Date:From;
	b=MXijZT8c3zYwDoiuYZ6x2fsiYd6q3W3q4bmSBvWL5ICsYSNtYiJJ64NMN1XAgZxh/
	 OEAroQBkIO96XGVBLzQM7qjq06SO5DVy9PJ5wa3dgrLI4oty5v1sVD5dxqsvQPYpPQ
	 69tQb2PoogZFgcOYSirfnOYyEfkBH8EahxyZPKsF3vv/bk2BMnJ0Z5p4z3HgOgsX0s
	 QmIa+oFpkRBFPUsn2Efr5FvdE8CndkjUC/WMKERpkuFSE8FjCfBs5I8w3ZlgqETMSc
	 aECTJcY522A5PfGrpm7HZpC/gdpdis7yHrWcd3ugokkgYeKvchTJjWNsVPskEbtVI2
	 IkFsU0YbP5pJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD864C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608183370.11887.14465258788827272261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d1768af713b7ce28d3aa680390809ef94a61c6145f65f9491da1b1a3019ba1
Date: Fri, 07 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786081833
