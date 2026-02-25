Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0478C274B2B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004894; cv=none; b=cbpri6liHoXjLce0o92RVKIZj9zaa6jvFmDl4eD+56TtNVUR4pPe9QYIxThqls4uqnPqnZX3d9rE6MuX4Z/dCikNsFGXByXoce3FXsdGzGRqAevXNPtBuGuAXkfivJHwGD1oK8ikGGtne0fTn1jL/rW+PJdIb1ul3d+IdNMMksU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004894; c=relaxed/simple;
	bh=9qnLkx4CquA4liWBgyQm+zAC4vjOvnXxoNFo6YgOAYU=;
	h=To:Subject:From:Message-Id:Date; b=RgOKPyUUhpViyxHpMQ4h2NqYRmmZzl7mk7qHF/WdCVamUDUO2yThLq4Sw0dMQHmfD5TTJ8PaZ/HsdfMdVyOCcnhchPM0RgKl9BzashaqpaWrnrTOsnpEUWl/unSxmFAtma+m+MlXgH9lkxSLIev6GKLH0kia6G4Ynz35iesAyJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMzoJQfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMzoJQfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426EC19425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772004893;
	bh=9qnLkx4CquA4liWBgyQm+zAC4vjOvnXxoNFo6YgOAYU=;
	h=To:Subject:From:Date:From;
	b=kMzoJQfwkX2u/JodVCOSGHlwUReo3JekL4Srfe7z6Af4BmgWT7mFkuK9RSAnRaG/z
	 gNTAorAfkITp0g+RYT7jZfHOnkreiLixcTQmW1V8V5hfpCoiwbWVLjMn3DBIxINacy
	 7A/jn2jflKEvZgzD7St3f3qDmVBiyQXKxw1Iq5bDEfbWuFmgoTugS6E/xuy047UaIu
	 hQNm2DLZIRHhCOM1KR+PO0ARXImqr7z73Mmn23LpGfD8T1MARNCAFTjlu7hGIyQ4kf
	 Sz7mVs0zrqVPI9qz1Ues7U8Emf/PN4e0DGRJYFYtRb+cIABqOrZvLc7J6fskOE9pwt
	 CtbTQdTJZt1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92189F357DA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200489358.10270.10288206463760123223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb819f983b214556cf383f8b1aa533e51d9ae8f6867237b739176e587c80c93b
Date: Wed, 25 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772004893
