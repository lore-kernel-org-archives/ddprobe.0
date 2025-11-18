Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9A829C328
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763484114; cv=none; b=bKjzmMyogXYKMPVio5lEtstLTecRiX+xK2rIyDEC0sTvpJg5GzC9HymRLeVQZAqwnI6oR6Yk4vJIvcqcR1DyZApkqFpumbufC41usEOsmcvCJh7pf3p6weVpW4F412nWRYUFN6FvfX7bNgyFN1laZ2fVoUZgNtG2rlheDyKYAx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763484114; c=relaxed/simple;
	bh=uoMGfHDIxrYqYcNxYNLDpNrKU/kIrIoQoYMXlp5LAP0=;
	h=To:Subject:From:Message-Id:Date; b=HzDtJOv1lGKeV73V4hiIRtxwVrKRUOtPTdfC9fAqGEdWGXEuHcL4ymDxtGXC9idm5869q7kOtXhR+odEbGMXat+HUOgrgQ0OWb/2kfoI4KSOtGaUDaoLgDAaeuEHm20aBx8qX3xj6yvphvZRedB/iFuzdH+zravNRjnptni+7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLxCVSOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLxCVSOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E36C116B1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763484113;
	bh=uoMGfHDIxrYqYcNxYNLDpNrKU/kIrIoQoYMXlp5LAP0=;
	h=To:Subject:From:Date:From;
	b=VLxCVSOHMXoow5Eg5rsEEY1/uZ3tEJRQRRVZDgXMGZMcDrJ4n/ZWGSk13JP/B1iuf
	 8vPZLdIIWV+Fi6pEs+MFU8CgVhwXFzWpn0OX30pV1c7zdiaZDq8tW2WaqHnjGJeer8
	 C+ohDeQ4jt88Luju67oNLqdmbEOBF9WjhyjhQLYn+oy66Vpos17+JK2Q9a+H5QOyYN
	 1BO7BocUGjkfnpCSrEEIVbEUOEc6rDB865WIato2kWFJVxzt+njgQEq2LeVDarda2h
	 yOlzybuajoEzYvR6EKlVW+U+ebG6/0vfyZhnwYpqsMyqfKBzwI3X5uAtkt4d74T963
	 wUmrSSFIxIYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168DCEE33B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348411358.28091.2286362667966287023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39db5d99a8ac9f05b706fe379959d02ee213e7a45c1ed18447b37843dccaa295
Date: Tue, 18 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763484113
