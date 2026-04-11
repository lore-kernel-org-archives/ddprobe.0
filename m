Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF5A1FC8
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775903254; cv=none; b=O+LH/0wjnDHgu+onJDJx8hVnf6E2BIG4zT73S1gIF3Tzqj844BFqj9yG7is4ZJBcx8+yCJRmvm/kypFSAMFLmKu2YDeXTw56ZlkaEDRcI4fUr5BtrLaFo6T0w6TTcWHpN9BEWdDTVP4Bdj5xsGOMj5XoZcgg6aPG/Ht0Qo2pUOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775903254; c=relaxed/simple;
	bh=RfB81Gf2a6q+3iKNIBEvOjnBc/cc9trnF/uTTtOf6xU=;
	h=To:Subject:From:Message-Id:Date; b=nlvdI149/pIq361OZ+S9n9GmnsUSA5B7MFcwRASN+Km3u0xxaiD25MJEDp+flL1qnjHomd0eycLNGIGxLYzTOMKwVH/bZXN5hCK3ErHxmCJpeQL1FtEFnetnd7BCtM3fRVqH4P1qbeaZe2Q99YBu4JyNbStuy9Bp+aTD4o6FHw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha3cacrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha3cacrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA974C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775903253;
	bh=RfB81Gf2a6q+3iKNIBEvOjnBc/cc9trnF/uTTtOf6xU=;
	h=To:Subject:From:Date:From;
	b=ha3cacrXDoUBehIiG0pCESyMD1pBGYYvJxFiUeYkmF5FJSJWt4SKZTZ5gF7hbtsev
	 jTnoqCzEs8WSFurLY8EfCQuYu6wzPvLkSoLHzwPW0A3xLv5MU7mwv5EX8ffVdIVDm+
	 8wOtrQ+27xLLWmDC+kmXmGayaK3cbyysJ/5D6hwji04J1GL1d55CmbId0kjsWElQZA
	 NHfGU09d/SxzwrN7XKUTfLQE2XS1t8oyiZd00HhBnrFsYfomXNbVhfkEf0ufYzzNsy
	 mPAZ6XSUpBvO8dAHosLma3MTswm5hfoNTYZ1IfITqpbYi3CM3v7j7BOYiO68M3RQpH
	 tbLaW+7RCOgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C01F3ED44
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590325368.6091.13844203413309755610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86928dfb96b85bc8eaa7846dbdd08e1eaab074df52a56d8e10122bd722e61202
Date: Sat, 11 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775903253
