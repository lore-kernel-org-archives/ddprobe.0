Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4035399358
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775551534; cv=none; b=PoaxhNMo/bFbkJuZyDrnYK34GguthPPsblHNTQAAbwZ34K2vYjUk6YxPpSr+lL9sEDfQYaWD2PPoCpCfmH4puEzRFZhKuZcdawGsjmzyyk9icUvGqSj9QphKte3PPrp7pFDP72fuLeFvKUIzVwH6xuhVqfm1iWFoLoNpF/ut3hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775551534; c=relaxed/simple;
	bh=djmeuu23+IyAJodVTwHpZH/Q0s4R8nHcIlcQFsaB1G4=;
	h=To:Subject:From:Message-Id:Date; b=aHCuzHPZogJ1+wRU1Te8i2e8baqzdFOO9wAtbg5S7ukV2fKKK4A+7PN2Z7wP/aLWe3Y79hwrARxa4P8fCSLxTFhp3yzdeF7Ih0Nywg/2fYHDuyQj4Zh/x2hUVfWvDfbiUR8Kp3Je7cICiJnOR/zTSC0oDq85r2Sw7eIF/yucQAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrHvWcs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrHvWcs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8971C2BCB2
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775551533;
	bh=djmeuu23+IyAJodVTwHpZH/Q0s4R8nHcIlcQFsaB1G4=;
	h=To:Subject:From:Date:From;
	b=hrHvWcs+nWXZu1V486xcFmejL8YQQZoS/5EC0mZ0QCcBSQfz8jI3CqQQFW8Rq5ECK
	 HbVxzOihCW79u5pRI34bA29y9KhBXVB38LQlYj5U0utTtDtb3m4rvpZ5pkMVIrpKgL
	 5aJswJzZcKdyOZSvT+IDBipjnRFsmfpJ9iNDbaDIakrfd9bKNMXxbd9nJyjY7pUy13
	 Ua7pPJzlkAcWNOSTt3kIHfYZqe1eMFrXfR8dbyL8QRDQYg8H8OvT9K2UqN7UDehQ2J
	 /WW37R5mKrsRMhYxOz6ZurMq9GEBVNpRP2JVUlq4SBKHyf0+MdriBORF43A4Jm3cZX
	 fy2rx0U8uGSEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82BEEDB7CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555153374.14714.15375761158951720436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146d6f0a02ca4fc359f358ddce370b3677a9dc8539d4a68e5a2674dbc958a3a0
Date: Tue, 07 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775551533
