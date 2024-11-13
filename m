Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A64420124C
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731519954; cv=none; b=hZZWIGMntzL+GQdaccxEqAlhLw/y+ARsVSqc6O8NeiEnZ1qT0fj4nbDO3NM2Zld6fSwZrfR6byBvbCU+as4wJGLmFqViabfOM4DDyFt52P7kb/Xg4255pCzFDSjPDVq2vOn2JMstM2nXN+P7HCdrQ0hm3FcOBJmpjHODwvXK/ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731519954; c=relaxed/simple;
	bh=4LdMGYuskKOot24WiNPGjINAxDK1zooq1esYLx9dcaQ=;
	h=To:Subject:From:Message-Id:Date; b=M7M5COL5hXHcKGwVYEfPBdNqir+1G2cdUlSKkWcyYmydplaiGocGb5fq7HhaoA2sPhA36G9N2lCsLVz3kPgV8uHSOQ4Q1OEvNN/Fi8W4QkDPafD5janxYsOrXab1NUu8GRPQwPFTGeSJDuQ27CV8hmCDmNPjUMVAXS9x0pfs2KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBkIZVZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBkIZVZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DC3C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731519953;
	bh=4LdMGYuskKOot24WiNPGjINAxDK1zooq1esYLx9dcaQ=;
	h=To:Subject:From:Date:From;
	b=RBkIZVZFtw5oXsuUl+F5McQHq0CGtgMjzn08FasZ/cyjYjoepOGwQvj8YVd78Kvsl
	 8YIqy84VEoGNc7N+jT2hH9tDu2+ZSL6kEzndyLOb8wH9/P9Krrgw3XNhq3laQi95+P
	 +lEDmnqUOcdXLRLg3vCZqI/K7zrydv2WFtJXDW4zHTT1Ek1Vpk6/tyrY9MeclWKWE1
	 bkPbDPGLZAmtJzSXbE8hnjOrYksRgad5hQ0XfjjyQLKj1ifFPla1V3w7Y8xF1npROC
	 RlHKGTF0aMnO/7WjmCmgX86QxfFQOs9t0/W/j+rLhK/rPapG16s/U2XbFFBzeJbBIy
	 XrKdk7qoV56DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B9D637A3
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173151995362.15379.12916954788575453602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ff9c477ac8a76934a025f74c6ae8cd41970736dc749a2f240d92dc46dd7197
Date: Wed, 13 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731519953
