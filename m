Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248E272621
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772681694; cv=none; b=Vu74E2RwEUlHpNqlinCBRPH62F3NdHJd8j9vx3lM1Mw5LvYuO5LKzjP9ei1+eCu6cuSZM6IqB2fTxW45vi9elTUsHNpA4f2VUDT77ofW9D7f5k0kwkNOqaK07wvqp1GKKL7wi71FCC0aqkhKBjm32HdppTsZ2v8gdVp7zSw/Ihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772681694; c=relaxed/simple;
	bh=9HohX2ECt/U3iebXub/L5qjStTAT/vwzBOLC6DmWEAU=;
	h=To:Subject:From:Message-Id:Date; b=oXkhVFI+ZYIXxNhBHTfJG9xdNpFsmnGw0tI3fc9SfnDnlJHA0KytFikBElhgV6pk3aWd4U90UzPANzf9DDb+RfosuJ3O5jpVCRbKMQmapc12OBQGnCblPf8uwuYODwIOjnSg8Dti6PCS342LfIWC8AwtavFrzLldk+LwST8HOH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV8AcQTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WV8AcQTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F8C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772681693;
	bh=9HohX2ECt/U3iebXub/L5qjStTAT/vwzBOLC6DmWEAU=;
	h=To:Subject:From:Date:From;
	b=WV8AcQTbB00dtwT1gKSIfG5Jf56i/wSKcOiB4LXTWrB0vPV167iaLWSSB4hYU24X9
	 xldbDVq9Yzq4Ek/+xUAgcgopzciRE1njGweCv679P+hRwOc22qvb62mpIY5hME4AXI
	 lSczxZM40HIVlsnvEFsnILO7EwPP1oB17lL13dY0uz/bJDoK1rV3M49JlpO+D5HSnm
	 SLI2kbHyHlMcO3NpBslMHrIWe8Lcirn6hnhyX1X1H/BhUIlrA9RFVfKyihaJ+Txu/b
	 b3VSQw5XwiRqecPESPAtgafPeRHcPJ1uJvBvPo7aZi31QnqZdw3PrKkntdBlG09AsZ
	 Zgg7MAK1ktt0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93798EFCE5E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268169359.16212.2920554645738425038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad65f3b8887732717399aa48350008fc9127430457dc6c0a884008bc25810d99
Date: Thu, 05 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772681693
