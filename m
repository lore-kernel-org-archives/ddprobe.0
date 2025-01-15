Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04D11991B4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736969154; cv=none; b=ptqXs9Ybj2EC/z4VE7/jPht36pMj2YVpC5eKPYxeYCztYRWJykO01Lp5HHydXqo0/CLyBdMRcUdoXtPSVAy6UOzlhsYGUf2Gj5ymq6UiBJdAzRCvAxZbAoSOxlLLMO8E6v/6SBiqAoP/1iQpsmdHQ/NDpZV+hbpkKUSA2uEtuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736969154; c=relaxed/simple;
	bh=4X6/HWNdYWT9mI0wJwkpOHIqP06ctQwHFRDNHWulF2s=;
	h=To:Subject:From:Message-Id:Date; b=isQCVmx0P/eiaSYwFvSd7jFVe3whMpV+o6rEwo8QyftZYnROnMvwp1HL+rMHQ5kQVmU7HEvZnav0FnE1aIO12f7pVaXlwqj7saoO/A9Egt+0f/o+NGBgxMqzRFyCEmSi5MVNSxQ/8iLAypXkOjhUYYYWFA2NE0KavyjexT7yLZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzlMONAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzlMONAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B559FC4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736969153;
	bh=4X6/HWNdYWT9mI0wJwkpOHIqP06ctQwHFRDNHWulF2s=;
	h=To:Subject:From:Date:From;
	b=gzlMONABaVr9rJBnL3P0jgyvjji6jH3u0+C/nHmJLnCfY3+lDC5cWsPXCxS6p8YAt
	 PLOUhBVuLavBZeB9OQstVfMYv79PeQT6LOk5EG9kNBnaZZAgyUZWN/rU9x/u3GxIDa
	 L0ty1B6VMjX8YO24DCzR+KGVl+42HTf+NyisDwHOvc2EFlDr0/LvtL3dl55dwRTgfO
	 2O1T5HfqY4nRgyUWYJ9b2EqzG6DC57Jy2jEQRRwaXbPGvprVyYrQdKPUnv82X7olHP
	 T0WHj6J7Im4y97b8/dyK7JDaB/PBAgebzRmg4pn+NZbom40AQGQDR6RSTfHD+vNFHe
	 P8j9kf5FEHfbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D59C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696915364.29896.6287866409418828027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bbf8a574ec4b6a4bbab7ec9e8632f973aae194b3fa1db5f64d34de888fbbbc
Date: Wed, 15 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736969153
