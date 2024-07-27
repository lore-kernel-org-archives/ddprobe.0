Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365001B86F7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722063354; cv=none; b=sMPxYGxnr0lOkstNgeZxU4oMNRkfWUTQY89ig3mz9CBAh9bOyCBXFmDuK2DqjCkplUA1nuUEPt5ZD9xDyWwY57kXsCgXt+eTnhW9aCkQrc+XCnBGpAMjTmnLGur9llwkq3YeThc4GHeVY0ROCL+DLvbHqb+pN2K5ccOIcvM1OS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722063354; c=relaxed/simple;
	bh=6lkH8ToTYGUeFc20+Skr5z00Z5AMuImEpBe3sg5fDRI=;
	h=To:Subject:From:Message-Id:Date; b=dFU0+bcc73GE9U4slIXYPIlYPg/lOjSXkKDOiH0ZUbV38mMT9EALp9vMIPpG6d7DH1E0bVhJCegygvlYL6RH98TJRRRPRF/txE084pFBC0QV/m1hgHDJ3KhVDSKhMbGM3Rpfjm7wMF1vmm/VYzgvTeLwAcXEbMd+YEF48GxojSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZuTuj8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZuTuj8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722063353;
	bh=6lkH8ToTYGUeFc20+Skr5z00Z5AMuImEpBe3sg5fDRI=;
	h=To:Subject:From:Date:From;
	b=pZuTuj8aVB/ftUqD8UsDoiY0Ex+YmutnZ0G96BzuZ6wWTM1WkN5/aN1i0KKmiXCYS
	 JL5Wf6oziX+oWUX9tXV2bFcCVE6tOeHbjWNxEjkpdZks2mVa8SzFrDNQ1XWk4qKtCh
	 okEiksT4UParYBx5gLI6oukkKbE7LStejblT7Q80hN7lxZb75xVgmvn/v2KN7xMd3Y
	 N6cIjsC7JB2sV5s3i0R0ZdFlWcdWm0c5CgRaVyOYfkosoFKyERnVeizcG8PZhoh/jK
	 sfUTJplliT+Wnhi9u54oQ5KDY7CCBkLx1I7WNqtkbF+SNOYjaNFwMpD9Jek6ugap5p
	 kPpRPTnvQve+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF1C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206335359.30728.678876870194594846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7275cb502c92daecee1c858e8b2c1a37d2c3638f05278673534b15680909af
Date: Sat, 27 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722063353
