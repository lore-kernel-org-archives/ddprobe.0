Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365861392
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726946154; cv=none; b=Mk+EubLV3cv4Y6eB5r9kOkHnhqm7XeWndoLrW7cOjJVfqs1ECi2yREOfGz8gDVC+Wfotm07iMCNKYQ0b01HeASfZSNaXY/QCkfoJ6wF5uinxB/ateceTktwY+zd52PDJozn77worjkGvY05ePgg9JM0bvoqLmkv6ELG6KBG0GCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726946154; c=relaxed/simple;
	bh=thiAaX+g4FHS3c+MIdY14sR1VbrwrjDwsBhTnDId5C4=;
	h=To:Subject:From:Message-Id:Date; b=hvpeiYMsAYr+BKh6pvCUd57SR5SRy2B59vr0DbqkLytxjh9LSuU5V0KZb8lTbHUqWhTCsccYWI0fxinoOg2VRu+uZr9t/psqnnW371OkUbEhOIqfp8JEydr2Xyq3GSryB/24QnLYUfsmoiDg8aFYuF0DqLct2g5PMo1m2bHO+jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRG+DWoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRG+DWoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FB1C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726946153;
	bh=thiAaX+g4FHS3c+MIdY14sR1VbrwrjDwsBhTnDId5C4=;
	h=To:Subject:From:Date:From;
	b=fRG+DWoeolu9d5ebFHE2joz8iBjHUb21exLwUEdJS3EPAuWfK595z0IGNpfSgklG3
	 SBpHx+oKSJPxMvq2Ig3TV6fGvLROT5xL6O8k1V3GJO64sbalhAJ+aniJkwO0aBUI5y
	 y4V2PvDrTFyiQh+fsie/zGmqn3ttRi8FlMX20/VqAlwKtjr7jJVe4yfk806JWudYQ8
	 oDmj3/rTHl9HkOJPk9LDHjjhLraikM8zQKsVPqRGN7YxtK5D4DchuWmND3xAC4U4ej
	 JALkOwZ4W7ASrQ821IUO5sjbH5OywG1YIVy26+O2Py2qnF+FCqvH/XGjcX7vs4MKsV
	 KSVCV+OsFRbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959A9CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694615358.7170.14154205923751573700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6a017c0f432a376c9ded6c20a11e4260d900c321d85ba47fb661ea7f096b91
Date: Sat, 21 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726946153
