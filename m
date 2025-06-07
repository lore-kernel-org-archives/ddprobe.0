Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131B54C81
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749268794; cv=none; b=MFe/2nEpMycst4UufO8ibKG6LTFF6vwXKqcS58W6VMGMH2G8dn4FEdQ277QFQ0G+WFk0hySFYArkZ9Lmz+GD+2U5xRdqJqVH8dcTYdDKL05HqlNAPmmqQzsCx6s8x2nplY6S6vn5w4giWgdM0xOtLZQey/OGnrsVZ3JmYsMv4PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749268794; c=relaxed/simple;
	bh=6OZw+iMN5rayud7Q6iQ4hNVebJTMIS+VbBWmip5yVdo=;
	h=To:Subject:From:Message-Id:Date; b=InMkUbwT8jOb83TuEtcCwdnmuLSKXqf/swuaLPAxC5GvVgOsY8Fo1F1n26JpXY7EinMzCPFCWufQPVzC6p7iRMZxc7YnmNmohjvojifGvtMHlG+kSa1dF6/fu6NayVD4xHXjRJby2fEnzTpIMSwH3++Ep7LT85abs8tEIUQ2RKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZV4a8Hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZV4a8Hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3200C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749268793;
	bh=6OZw+iMN5rayud7Q6iQ4hNVebJTMIS+VbBWmip5yVdo=;
	h=To:Subject:From:Date:From;
	b=UZV4a8Hui4mhQgwKZABvIpJtjdbk3r/tPDz4/LXAjXh+s3P8lUiik2vf78G8XGcqz
	 yLrL7+J3jGBq3+6TZEpqrres8gdMJntNCwyXtk9/TG7XW/TSulBNFCEuKWolefLPxs
	 wAXSS1JY0NMXqXTsFcMGamjfaBkrbcOMi07/52frDxs70UYD27ZrEh5tu95szbfQ/z
	 ljeQvD7EhlzPLL3HNPBM2ZGwYzWUOr/hAmBpTuLfstP5HHZEfVFS1CaobvhjtE6kPQ
	 az3l+/hb/PqCGaZnn+XUZCOIXzap+G2aNWcOpytbQIMq1aJZMJI1PC72+tmzz1otaS
	 Bsr+9iePddHOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D5C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926879358.25849.3174675138524291071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8cd663b9f1cd245e85b270358144765278035c625271b9c40bb0601e137d3c7
Date: Sat, 07 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749268793
