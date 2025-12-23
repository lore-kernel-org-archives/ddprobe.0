Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2605C2BF3D7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766507634; cv=none; b=o8iESkXPlidjmlDH7TtHdwUSUSCp1hgv0MyrmN82qZjyEXd1b7NcppQm6ckGxfcYYgTGR87jkfIThL12tFtVSkuomsplkIU4jE3Y6XqIGm0xs44vU5C8V8tBvNF8JwbN4gCTJs+6GHpGAcy3TmRhnSFM1vNj6VVhyE26gzhC7po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766507634; c=relaxed/simple;
	bh=jIBcBByFQh7zjGpOarqT+De6lFD4j6aO/HbNfYzKpJg=;
	h=To:Subject:From:Message-Id:Date; b=ex67+iZHFj+3KDnGFy8Bu/kFihzJf7UHLmOg61iee39J2CDWW6p7ndzvEG49eh/ESMpVeg5tinlkOdYQ53VLr9DccJNllq1gEGvpJwnwmGEZa5iZTGz7oE42TD4fOGykd6uzj7P2VKZyUoj3+lF4C9KWU8XWsOxatPNmbFaLwwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd+h1hgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd+h1hgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAA9C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766507633;
	bh=jIBcBByFQh7zjGpOarqT+De6lFD4j6aO/HbNfYzKpJg=;
	h=To:Subject:From:Date:From;
	b=sd+h1hgRyrZj6zuHkOQbij7YMHRRsc3OLcbZojxLg4mCGzxOTCP51mw2CF8YirQgE
	 Mq/IH51hRpK4FeXcIbbQDRvlH0C1/jCYr+z9fBN+NU+8INWvN9x7PeXmWUC0qIQMwq
	 kFYGkU9rB9oFsSPzNl5uC5KoCa4xgSDrRltw02jtp+T4IcwP0DUQA9y51TpdQuPURi
	 dJbDnDlMo0GCyqCUubWz4rsqUf9aUBJx6qpbQZr8YaaHcrDz+gRrQQYR3YRiAUwLbi
	 sav4cyS6bOE3pmaVjIg5ialaHUSmnsF2bJkvjFkFWNLF/J/xEs6nOs2g/Kh9d8VFF0
	 /fG25/d/BeMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996D9E6F09F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650763359.20260.7970966006046296380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7015a17762b8baa1ee6e526804e1f3806abb48414f46b3aada6f304604611a9a
Date: Tue, 23 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766507633
