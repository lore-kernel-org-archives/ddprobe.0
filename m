Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A42A37AA74
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782164794; cv=none; b=B5OXvmhrV3kTejS+lBt71gfn9/fYjHFRFV+zZKHLmM6m5M6vKKAuaANEE1ARGn9AtECVQqd7Lv/vQwKQVpAvLlETlPzomC/SmWoT3NR6chpUDZEbffpu3Ki7VaQl9GguPZGpWxY9itLalK9JShAbc/WC3M6zYMKFk6hUMfjATfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782164794; c=relaxed/simple;
	bh=r2+WZrFTRP9CM6ZTJAvfj8sY1iNcUBOOPL5v1YDNblA=;
	h=To:Subject:From:Message-Id:Date; b=MXw3KZlxGKOJoMoTU/HbaUUHDiCjSYWpbVmdlsFf+Ii5jzkH833eYCPPKsOHVtE87CJr9pD0n9yL+1NrInRJj4YJ/PASVqT0uJfaKeijY0eNfpw2zSvp94URI4zuOI2bllr4VXzK6hl3nPNJP5WVfoggplU9oi0K3aqyUCc5sB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu5hgy4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu5hgy4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D261EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782164793;
	bh=r2+WZrFTRP9CM6ZTJAvfj8sY1iNcUBOOPL5v1YDNblA=;
	h=To:Subject:From:Date:From;
	b=Vu5hgy4OdMp/alxZDU0QPMZC5Fv86rQxVNc66RXEOE6kJhbHXKhl/jALtMO5GVIp3
	 GRR7iJaEYm+pS0shSepkJ7Wx1Y16fqti2JnO2WqRaNZYLhMM9MMmiLKFwQbvB8RitM
	 WUokQnDTG+/OuJpoiduFDF8ulOEsM7c4epIDQNpy/KMpAUAQX6InTJ76hJqHkhkgje
	 IrbAXjxMM2m0GzwhSQ8EXuRMdiBtpTlgIwdNbJLfNiSYMDhvwZO3+4xAldEYSx2hw1
	 z1Swgm9MVUadHTLY98eJVEHKt7kjQedRGNLMani2Q7ZidyksMgCrAQT05+0MdGRNSe
	 XPoHMZXlz/JAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2484CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216479369.11044.895488060068141021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad394047166c5b5b0958b4f15fb5abf03d4d5e047e371e24fef6a37e350bf359
Date: Mon, 22 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782164793
