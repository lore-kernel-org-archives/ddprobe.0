Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F7C187326
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753863594; cv=none; b=nmHTiKZsc43i3sxsxxscMrNXtczOwWfRotPGBopKFZphyHyVqfQJxso8HONVy9bKfgFk01o7u8eHSMMwvu38Q0Vj9dVHtU1CZYnRuNEXXljc8FKhrEFM1eYeZMTVbSnyW5gXzVcp3W7g8hEEeghH9b3+v8rZdeHhgi2J6MuU6Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753863594; c=relaxed/simple;
	bh=UWDcw5RWA7v4uH+ODqbiLTHTZrbOPAeLvE0IRKu/jxE=;
	h=To:Subject:From:Message-Id:Date; b=gd4/DXcGTrJUWmzxidg9nB0tdv2ZRL3Mz9ZqAfA8w/5MjguBFsOvWtUNOOsFJIznGl99jlyG0NHvibfhNRbcfqRH7E9yNS3AArXHF9mWtDLoATXYwoYQ6akgvfnmajTDx5AIhif1HqkdSeW7pYm4wFwszHCVD8/Lf/Wqwr4U4po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMJLBf++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMJLBf++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6283C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753863593;
	bh=UWDcw5RWA7v4uH+ODqbiLTHTZrbOPAeLvE0IRKu/jxE=;
	h=To:Subject:From:Date:From;
	b=YMJLBf++WcC3qRFWHIep4O+vymoSleS6waGbGH99hTAX1q8+P5Zyxj9DwHi9np42X
	 /1sVTaiEeQ8e2qhrqtvFH89UDwbquDXbHm9Gps2E+eQfIlkphybdtj2Q/j4E8+LeWM
	 xyZ9SOGNN62d+K6YEbedF+hOJCBRXF33oz03OC7YIDSVjo014KDwl4gwvprLgaFuyr
	 uAKn+rYYdWrDstNT1n5fzYqDMH0nVE07XB/Y12O0lXTYqulw3Ue5LrvoMdPi43nAAI
	 3yxzTiGA4w+RYC1bqLU3wmXrlddNEln+mJmXFUJGKXA2DH3nPEiIoFLEI0+Mn37O0S
	 aoQCFv/1etxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92189C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386359358.6474.7395514862530093908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140ec5ad76e6218084ed7bae2a9921e6da555a2e34e0882295be477270666eae
Date: Wed, 30 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753863593
