Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A93810F1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778203054; cv=none; b=pAoPtDokGV1C/epeesxL4XU77XY0YO7onTMVn/ffUSN0qIADLkUPjSKF4PVKNUzxSCwSqwXinJ8tfAuxsXSTyaPa5eji89DkfML6eRFNGgqRg8hZB4wfNvpzGd9Wpr6jniE3hNAdrTSncVkU+dntB2pkshfeNLt+b7ESpMpu8zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778203054; c=relaxed/simple;
	bh=HPb2j7wP6SVNytOV1wbkrKbvHa3+4LCmvYv61wJEX5g=;
	h=To:Subject:From:Message-Id:Date; b=INjsDsv44a9D5PO/5KO0UpA/w+U4+GLiqwt+NTT4vDRh7UxA9V/At4s/W2f6BEy+sxHEzGmrzNQkq0JOTwSl7D4aGUVJxDY5shAayWNQrVUyA17mkh8Lahy70LQfndiAxQ6UX3pHvHKZoS1bBULQQDUA4O45fbT4t0rsAhLLv3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRTUx4hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRTUx4hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C149AC2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778203053;
	bh=HPb2j7wP6SVNytOV1wbkrKbvHa3+4LCmvYv61wJEX5g=;
	h=To:Subject:From:Date:From;
	b=LRTUx4hvhfPDlolGp3LIWYqAqxVvn7ZUZwXyawTGruN+mgSos4NT3yVZxG1bvkSuM
	 hQGQSqNu5pebUFCpWV+SjNs/FnnYaNav5YOQlLs1tlZyAyehfXQOPOAY8HkAkxahWX
	 1UVYtjjbBQ0gtR6y8FLUA7FNrJ3tuaUufjCB5LA9K9zt1ZRq1OALl2CQCnKF4xBsNC
	 70uD4xXxo7qSsNTz7KNHMrv+/gdFmY7tYmUAEZCBHKHOHilCZ/54UwS6xBkkw5BIeC
	 d5LzUBGWjeKzImbjE6oiiH5r3KGWy+K+x110te+oVScG4VYCveeMhrSFexkYfE4Dbx
	 vNTKEQ6Jf8mmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD954CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820305368.4964.9794975555467647894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ce80ce5684950e95b44bd4c6d4fd26d1cd4422e8975e24aed5bfdb95ee310d
Date: Fri, 08 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778203053
