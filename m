Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E5335BA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776054454; cv=none; b=luy2+U1s1W+5MgQzmwkXj3p4NrZ5567z7fYpSF9WIGds2LpWrvpjgfKvHk5EgMs7e1j2nr3xYNbgNea61+sfmj1bsQvozr4veskcgxk0qTTNJHziJCM/Fbn8e+X+aTHY52No2MOlKvQwREwRO046E/cVELumSh8fhFifaqDguaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776054454; c=relaxed/simple;
	bh=hH8+ymC0a8Gv/Jwrx39/lN78+o2r1FQcCXc0e7FAgOI=;
	h=To:Subject:From:Message-Id:Date; b=MtPPBDIsTP9wkJYn2dFL27XrYywAsECsfPgxhJvrUDMnTGAcdL0fqjez9UQYiUnFyzM8m3DJKj3Jt+8ZTlvDvQ1KEjDPgxWg8+PaI9pSiwJ2Zt6nVsV1Stu9z63WAR65xzenfmQ3a9APMkZNUJzTXhzZtPGVj12wYwgPG9uxOrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9i2WVHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9i2WVHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDBDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776054453;
	bh=hH8+ymC0a8Gv/Jwrx39/lN78+o2r1FQcCXc0e7FAgOI=;
	h=To:Subject:From:Date:From;
	b=B9i2WVHQYZUJb0EsrYVVBojwRK5MKBALVasiWzStpYvjndSsFHFHpzdE7G9TYXmXb
	 Ku1yWYd+3zYY+8R6qaFB+bfFGVOdAHhXK79khYP9jmyzsBGqk9Zzyvm328fEg9fNHW
	 UkYoXGRfKYLjVmysJ+wgltF84DqDWCsAvLYSW7hWN6W+aiaLwB0X4cSHxMUGKdrPNJ
	 9Iz74suPEPD/hqnDEFXJ/Z8tVNI763eLLv4QkMjER2cVR4BDSkCUhEP7dxWHYvCinO
	 aUiSavRDmL3lRpdhT79ttmq4cq4pTJpr/X/u3k/VH/sp82HDqGdsOvrcwUqni1M9rS
	 6hPpURAZSI3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F22E93817
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605445369.1488.17968861127242143077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620c4e766f49aea3cd29ef9b53f1fe1f9652f85a288e274e0f40f23e6681b09d
Date: Mon, 13 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776054453
