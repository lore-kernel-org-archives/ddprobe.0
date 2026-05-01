Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3013B19D065
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777599454; cv=none; b=DqPfp4EhkmJkkg+Ihafh/wnM4k31eAJI/nx1T3rjXGtvTKk+uY9vDb8rrOm2DjjSAA9pRVKdxVViXTEQqdm3MphA6MSvefCG1zBOPV+NXarnzLkDAG2GqC5m1oHvnKDto8Hyi+eDasns8D3PuX6kX8WLaw6VBOhUDKeKMKYaGCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777599454; c=relaxed/simple;
	bh=1GlsLTOrL/LzkKXfx2uS60FGTPG2GXh2bRZz9FnIsaE=;
	h=To:Subject:From:Message-Id:Date; b=TbSvnJxFyjQfYWaSiuAkMJJ2Y5gnllCY0Ot5AvXpPhCPkuNtlUb74tqtwqAADD/pjo4LfOE1A3+DBUH2E9FlMm2CgzRJYUL8lhh7LBnwyPf5IZ9r4OlXZPvqL27WVOX1gBxlHGHNOIOYHvASoMO3LQArXYKYQw6ON2WOW6Vpefc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTHs0DEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTHs0DEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF680C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777599453;
	bh=1GlsLTOrL/LzkKXfx2uS60FGTPG2GXh2bRZz9FnIsaE=;
	h=To:Subject:From:Date:From;
	b=pTHs0DEYHvHzTeKgzCwdJf2V22EBDFRg/qAdN1JWayCAAz9f8dJvjbL5WZIYDy/My
	 avZ2/BoSJLrBL/OtMJoJdJ0Su3ET7ffWgghLis8jZNrojxfFu5oQWBeEjkUPn3g0UJ
	 ArHC064GIhaS6Vnt61d+QtCHYNryZ8o088EiJ0ZykkbpS14rGEqHteG3hVwpzbFDY6
	 Hvkg99ZvWHTPbigDBmbIE6Ojkc9ij5O1OvlkZtVvXg2WZcEitX1RBXEM7FNAM26Ew3
	 G0IyLqrvTh0Lej5+EJhkycNUBZz9CVnssv4ESZXdao3Jj70a0ZwkALb6ZVbdAUIBpz
	 FD5vfp1jwT8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE44EFF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759945370.4152.16716615479041677361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fccdf71745a3df215d6be0051f1c54ca93ffc4a7539e7357dd33c66a56bc578a
Date: Fri, 01 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777599453
