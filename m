Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297F42594AE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734780954; cv=none; b=VKmTSjSsNqwWfKsZgTlI/LqZljOidATrdEW3OpEZbgiYy/MhYB2oar1tQQ+mqhjbjwOvLQtsRJVSXumaxMRhglgRL2c8EnJSBBNwgyzc6g9aSRVpMz9Wl8BjzWJl7IcolaUpFe+XyYefOvYlzbuqHXIvhAq9qcpvB9HnJjL36SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734780954; c=relaxed/simple;
	bh=n9cd2EuxJBC8KTLg5dvqnLfqZ8ITKrOD7zJ8BsDEcQk=;
	h=To:Subject:From:Message-Id:Date; b=W0S1UIuR0sO+pfwl90tSRbFAPUnByLJFZO3QRiwq/23Ap8WxpJBSBcHI5BBaDOZv3R9K1wP9f/ogrsq0vvJxK64kQBoAFUAn/YmL0GlSQaJrGft9l1krA3lb0d1CuibfP/sCgabzabrJn/zkN+ZpFY92bEsw7P/cEwY/h1nuIHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKYECI2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKYECI2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5282C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734780953;
	bh=n9cd2EuxJBC8KTLg5dvqnLfqZ8ITKrOD7zJ8BsDEcQk=;
	h=To:Subject:From:Date:From;
	b=PKYECI2X8BOC21NKQV4Yy5gxisayBpTN3u1OQSRrBuYa689j6GncuuT7lXVDmx0Yk
	 FGWuHc/LE93IgClegv00x3VHXnaVe5SMPutY43u0pVsOq9wkGvy5ebVuxBKd3l3MW9
	 zCw3OswRVYU+jKQD+DKYzzeipBF3ca7S/AKOIp/fKmzkRYrUNwL1XbsJodK3mEi6dZ
	 DojAynvKnhrHKlk7i0R4Jm9cYiRiyCByAfO9+gl5lu7eLvQNwMiZeayeheLlSo1Aeo
	 9gDQUw5yoSCe3owaJPRpwDEsRNsoxWG+fnJj2FcseX6ein3aOg4Ax/zTyb6L+2o3CJ
	 b+FLfr1EjZbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0595E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478095362.26806.5042241776964773455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a073b7f39d4256625e44ec616e8e68c88641bbac5154802f6805993ef93e378b
Date: Sat, 21 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734780953
