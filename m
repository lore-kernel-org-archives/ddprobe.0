Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA27535C694
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788939635; cv=none; b=mHeLqd94CYq+3eNlBLgZOb+JhEc7Lm1p2Iuzl9pHbIlTo4rUOCKVqrx8IHA2rx29gFRx4jahFmyDsSvCw/IAPyMrZCx3IgM9qyYZUmlJxMfS55tfGO/A70ac5+nC7UsTxW8JHI7PCpZTRJnIUtx5/gSpdtQodjvTtx5/WTDTqYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788939635; c=relaxed/simple;
	bh=vgbyG0i5mOcSw6kIhJ2cstIPY+7eQOCP8KgOhaCC0vA=;
	h=To:Subject:From:Message-Id:Date; b=E9LdgihERPM+Jmd6m/Tgy+ghToKGfGGJ6ra+OhaJY2VYiyMDhN6KYzGYdeaYFGx/F538bxqCcCINbwcZRHhZV0JOlvhDBNFfu7QmxT8iWXKXXRwlooLT7xBY7gVpH6eRohom6DZZ0BEV2txh4252nP4EXp/5I6Ga/iGVsY3KlvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQZXwv+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQZXwv+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC335C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788939633;
	bh=vgbyG0i5mOcSw6kIhJ2cstIPY+7eQOCP8KgOhaCC0vA=;
	h=To:Subject:From:Date:From;
	b=GQZXwv+dlgecXHm53BXW8N9afNhragZH3wh0Np/8SyU3sV6pfA7msxy0kduzo60zZ
	 lGhUw1z7yq+fXJZ2AneUq88MsBkAseac9p9RiMVOXZL4BrqhG/GxiFsnNJeP2aefX4
	 jO20m0310/Puh48XuHInVcKy5qkGKxGisGx4kUhNEY/gIAiGn2mBXS4bw6YJyyvmMi
	 XMBfZLy381cBeNKnzmLXwR8+N0XYnGrS/Ebu0uT+JPd46aoQUohgRRk4z+G2vVjvuK
	 BxkoSiYEj2ga60cp1LAC/u0+U3Wwz2hWTWkyx4TWtjhLIX3U/iO1J70iIJ/UqShhlT
	 w6G5i9CxXsIvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F4C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893963368.30822.12475863100201319955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239ce4fa01d5f5d210afe30752530a856f72d81ba239f6a226f4a35173ff5cad
Date: Wed, 09 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788939633
