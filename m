Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D9230FF08
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774988093; cv=none; b=Gy83X8/dwclyFabBPz13HYcx8I8BqPbLfsrJ0dcMoLJkcuGWgAgDV4TeVA7rDOA+O9GcqhAE5xiF7tT+m4G/IBd32Od050olHf6dCnE3yMvmW6NGuV/6dnXVKYYVw7l6Quu0mSGyuaOnF2d+9B0NLZzY8mIf3gokoPLOXJTv99s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774988093; c=relaxed/simple;
	bh=AMy0gaBJxxjmiJKWA/gGDMggFOej4Uehrj+T3CSLqIc=;
	h=To:Subject:From:Message-Id:Date; b=lsF2B/H/UGp87GJXhyVMFSIhuLmc53yT725LCJF+V8c1Hsb3PGXyBpuEQpUTrGgvo8MjMgW+VDy4u2rdTA1wrIzQlOWB5WNnoQjhkDGrdtPJr9zaoeMmV38tRcYmpHhEM+c9t6GlQ85iGkUTwWml3oICSYZ/ACr69LmP5CHUac4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLLrSFDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLLrSFDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78AEC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774988093;
	bh=AMy0gaBJxxjmiJKWA/gGDMggFOej4Uehrj+T3CSLqIc=;
	h=To:Subject:From:Date:From;
	b=mLLrSFDZoMNuPrd8yZgWxbws8CuxX7icx0KWyfc5t6Fs7KzAvoBpbqKe4kX29RSZY
	 mIwMpDIiKyVCioBjLscAsmg+ccvA7fPOFqCbmXAjcC8GEiodWixAomIXVnXsGHcULo
	 NwvdjV8D8zoQSUCu13huLC33xgLKkBGWxZtziFKgJbuef61dE5NmG9EOhMJXfcgEWh
	 lQAFRVXvBT5ucIp7TMoh1e0OJTez8ls3jeCPjLrzxMpG5uUu0cgB0q7j4UjWkgBl6U
	 ocz3kt/ATH05SR/QOCcHLD5PwPw/aQEZS7pvzgfVHsAkp0ceOZBv/VzyRQ9Fq28tFn
	 2nq9tctgYUTaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362F10F92FA
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498809358.17406.7899170942740961331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc500bdfecca381032874635276d21bf73d7f9d6ee1bfd6dad90b59a87a02bab
Date: Tue, 31 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774988093
