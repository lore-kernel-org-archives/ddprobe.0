Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE7118E20
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720854023; cv=none; b=ScXAigIuhLnj2mvSQjsq6PQqEmDrxju6v71nC9DaAaIdQQywrApj1NvfWGrEV5bnAJsNGbTDzIyzsI8J0dGbZfBJj50ZegzUfTp9xKlJs73zh+Q/cVTWF2LB64rMLjMKd0cNP8lmjFpOtsCNoRiaAx20tfQFa/Si49cLruFo4GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720854023; c=relaxed/simple;
	bh=/Eey0mQWwjdQ3FL+X6w6audEHeQJbgyD/QKzGu/mc4Q=;
	h=To:Subject:From:Message-Id:Date; b=lbfBKetaZS5Mabfd8l6VnBrDdHi+T6CeV8GvJ19RhzjCpM2OiuppyANJu/LvGt12tcejxHo2Lg7Wl5qf7/PQhsHpy9vCnbPBfOF93bEJ1cbOCjooD11SS/18CPvOtuKdTV0AWoF9Mr+RqpMi4/Hkr2Pqnhnu72py/AGQiNmGD/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlkkvocA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlkkvocA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ADEBC32786
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720854023;
	bh=/Eey0mQWwjdQ3FL+X6w6audEHeQJbgyD/QKzGu/mc4Q=;
	h=To:Subject:From:Date:From;
	b=MlkkvocAM7zNhHwcDEX/DbRgK+C6aBlmtT+YpHHHi39Qv2hGPAI4FupVDoaSyMok1
	 do+x+MmGN8mkwdfrSwShKeYmAqG6Qf1ECF/cQZkER0p2bIxbhcJLglG4kWnMYpvZGR
	 qpZbD0kW+lzhHM4F3sCNDyY+SbrIk54tvLetpysZwLR1eqsfJNEHKo1qFt6i+HZY2x
	 hJdpQKIE5DSQuHNUCh0FI8ZVnSiTsCtwBSJTF1d8VEP/7mMBNqcqCL0pVgiCdx3Emr
	 EZYV8am7OglxS6b99a4MyMc08tUHz1+wFpQmxmfowXOgRd+uPE/eHbev5htdTIVomZ
	 xyW8ZhhU/5gmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3208C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085402291.18913.13847184436509284220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2552aaf8854480b9e0bd387e31073391c76f2dd3b3f55948b3f68a42aad70b5
Date: Sat, 13 Jul 2024 07:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720854022
