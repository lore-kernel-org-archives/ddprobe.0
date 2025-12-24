Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CBF1DED5C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766549634; cv=none; b=Zi3K6k1JVjSJ9vihDuVMEtrNX6dgEEzXObmEZ4l6c9iB1cbNNmJaKkjFZsSUsLu+rJ+dKsY7/JNMvFEx95DbRuGflOfa6UfOhniVXmUce17JXgsPf4jNJpJr2lQvBmCj6hIWrKaaRT5yoeednOY7WYaPgVGBAwXnoXeZIP8l8ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766549634; c=relaxed/simple;
	bh=6cKvuqlh3f+8YaCuPi+cOGvLpoyUhxzwQTcsfA49tZ8=;
	h=To:Subject:From:Message-Id:Date; b=MHwA3MqFy10S2K3HvUtewSfkPwaSmcqkpfaaCQPJcMK+XBNj0LvinMm1DoEBI9n9G/uxMHudfNNFTLoreyq7ZiNm0jodHYLe7RH6pIS+WdnK1CvQc4c2FpNnFSXZKWab71tm9fLGX8iluNwsGRF2Ej4iwmhsPwc1h2D30xraBic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX4VK8vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX4VK8vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F68C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766549633;
	bh=6cKvuqlh3f+8YaCuPi+cOGvLpoyUhxzwQTcsfA49tZ8=;
	h=To:Subject:From:Date:From;
	b=QX4VK8vMsaLZFyIEM+qMSnfd2oqRRbz4dP17d8V4W81K4Jk4onrXHNrMKDV1trdeZ
	 FGauHUTYQvIyTVoo3seOG8hmCRVS0wnvQLayFBg0Th78A25yagjiKXYboaf9JbfcQE
	 OEaGeoOiQ3kGAi0SV8VBqxTorpwT3QjfkqO2iN8MbJgUGEVcD5Gd4YZ7tHhdqaHsDN
	 Z1Wh7ca5EmCsp+OVrCVCwwVq8NGzDayA0YE5rQl8cBO2IS668s7QojJgLD9wjOkcuD
	 UD4VCZd1QnkGK7gRWvD0RkL7hDR/+fcFJAOdj8gv+eX5UVXmTFb7mNV7rROrkomRxl
	 cOhhg9ABMmyGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B85E7490C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654963357.21823.1589681482381821086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c22cc485e193529beb9a26b6b9c1249ab3fea8bca1df1d758bed67b8b3ab23
Date: Wed, 24 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766549633
