Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F6F20FAAB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768570434; cv=none; b=FNa4GxygZAQ1xWk344Y5Dbn0WzC2D5keO7PEIF7RXYPyKguevjEldzRmUJhZFdgTTHqjgJsKy6HDvMJOStR6Ogf9BdVMuTnDVruhp9GxXzhgT1A76D9vV3lXa7xVIbYktUL78MxGu2G9/dJKNdqB+agcCv/UGSImIb9Z/eJDDxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768570434; c=relaxed/simple;
	bh=Pqje+g9oSz5iwS1HxAVcRZOFekQ0ZU0gjGASJ5vxhQI=;
	h=To:Subject:From:Message-Id:Date; b=OpjSsiNGoEwzj4qV6BHDdymJTpVU56Pm2yFqPlg6LNXkkoN94hvweqzdhmfUT2e7+KygpP68WktMs0CG8yzGmxtPbozb2HLeiszGVb586XC524EtGp91I2ppMXm80L7wO8drkNmBoUixZhE1GzQvk2+7OsPAim+p8p4oC2fOMA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJXJsjvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJXJsjvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEEC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768570433;
	bh=Pqje+g9oSz5iwS1HxAVcRZOFekQ0ZU0gjGASJ5vxhQI=;
	h=To:Subject:From:Date:From;
	b=EJXJsjvt6mEJgvcmEhdsRHfqlOStsAJYG0K2s4rq8YWypUJJYBFFpvld8dx8r5H20
	 Wol2JaHKKURYEQlSN0m9fcDH3TyFUnxlMweq3w4z5EwF2q28//maCBlDFoBQEHpXQc
	 8S/TLbCp9wjlU+/gmsH3u0vgFvGEYraLvoblUTnIpnkTA9slczCA+6vTGWkOLpwO8C
	 Nu8GAAwaLtU1tx2FqmB5C/F3D84MYi4fh8NfaJhHFduOFBxXNUnte08iEIvKzgUQ19
	 DIpWn8/UPzoycAnhCJvHv9mSQPCVRe//OrXkEIxxUlAhUI7wGRyxvJIJ19IMvg99qh
	 vFbhPbOy5o0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93274D489A3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857043359.2427.1305104531914294381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e355a8d6b95c1a4b63bea2f3cb2cddca85853d7794cff7b9d1354860879a17d6
Date: Fri, 16 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768570433
