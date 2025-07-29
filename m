Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DF14A01
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753766994; cv=none; b=mH2+vQRmKRlRVUZy5uDvosN8X2qv47OtnBdPsTvIJqQ6352YqAQkl32pjZnhB8oc4x7HcqU4A2bthHW7TJ9LvGixdo6wWhhkgp75iHHvlGJbMIMkoypQwCFg3pTj1KnY33KsblGYxLDb2EKSbGJ7b9cD/rJV1/SWsmpL1YFSLi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753766994; c=relaxed/simple;
	bh=CpiolE3sFW6h9uzNHC5xz5yheOxj6/RaSxqrndCVrHw=;
	h=To:Subject:From:Message-Id:Date; b=edP9bsAe0MFCUkqmZde99yKRJT0pFPhqy2TnRei9KSJ0D4EFlWE/v7NzSFyuVdt65zA3nyvgNqrXlUWk7YiOfLaU6rfFAl204BAxy5lTThnVpqvKogiwykNV5vTmIXEABCRzIolmBmbOotAJI8J/DN3sgkfkFC9FSd2sFgK4Ca8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaX52CB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaX52CB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753766993;
	bh=CpiolE3sFW6h9uzNHC5xz5yheOxj6/RaSxqrndCVrHw=;
	h=To:Subject:From:Date:From;
	b=PaX52CB7hVKvcHr6ntshozJ2kGNZGNA9etPQ43zy3I1h4ipuOMFaRnbUc3fUG+DrW
	 6AsOkckC3Gi5C0gRee/U4lDf94b0o/10nScbgD5OcA3mnn4ngnOzHLFkSa7DwAvGxn
	 mJLzxrSWBiZ5SzVxbJHaWGs4SpM6WLWD4KB+eDHn71QKV9jP8sxzs4wyQ0Zfk6S69X
	 QkEGYDDwasIxzYBsHwbnkLGgNQf+avs9PEXajXiti3wmI7XQxtHnT2SeSg+fMDmuNk
	 l2KQh+4JOrK5IDBfuBCH2YQdnU8t2XX5yt7O5P7aseyczhGqYNbZIzPiNOKjk6jfwU
	 1thQOVnfTG02g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2D2C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376699357.32531.4174861668490818116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f14a0e80ca60739f437b08affdc4576f2e3802cf4693f3fd723a65105e53056
Date: Tue, 29 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753766993
