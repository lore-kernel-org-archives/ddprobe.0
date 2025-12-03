Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A53035977
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764723174; cv=none; b=W1oipPrfrgCPotvHI9nyX8Is2ESbHa7Y6KStzzNW1CcLMnvwlXUoou5D4Rc6DEpDNFX+CJQgQlYtISsU+KjsfDPxeZ1HHpsBhq4SxqkbES0VGvCOAnczNoyv56pa4epm5IR/d/+11d2lmc2pBQwa1LVyx1qo+tdYrhHqixrcQSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764723174; c=relaxed/simple;
	bh=XyKq03W8PxGTUdc7tKQRqh6dO/gMoG1157fK25FDgdI=;
	h=To:Subject:From:Message-Id:Date; b=X1kBe87yuj9lTFn+yLV+MvEzn0/EYzPJ/RVhM5kDAqpSp0xxe6tvc/zG9KEWbrp30We4kG+sHcSH5G7FYdfE7LQxFIxOQdO2q0ISUPiz3Cu5xVtupvXpzII5wLCANI6h+ocVax2Kd3nrUe/9oz0tjiS5N3gfJgoMspTGYxWv63c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVvsXIx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVvsXIx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66B7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764723173;
	bh=XyKq03W8PxGTUdc7tKQRqh6dO/gMoG1157fK25FDgdI=;
	h=To:Subject:From:Date:From;
	b=bVvsXIx9pJNsm0r0h1AagmpVVVnBo0LlNqc22Xvk4ipSxq+JFhG6EVaUd03UC7Q6+
	 djfFEcZ/x94v2sPRruKY5bsJ5Ddb+fXBZNNV2lQFifLcimPCUTI2R9Ls+p9uA7OTpi
	 U2AVoS3GVDMztt+fAjYgAl0ljHvDGv/UNXzNqzTz7+tjj/W21U7mcUzk0hdddea5OS
	 N9shL0GdDftgT3441rllajwzfxrRR3Sg/xAAu2kP6Feve+/tujGlZHFpgUZRBGRvOH
	 SyQSlMBqU7rLUkXucGYTEyn+Gecv4AaM9npZsghr/10TubQEpyULG4OSIXJQ5COUeV
	 qtGcIdACZYDxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19CED12688
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472317360.9983.17851805236894617728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657f33dfc434a7a5754eb1d4a2f6f09f5718db06d17351eaf17a645907f8f401
Date: Wed, 03 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764723173
