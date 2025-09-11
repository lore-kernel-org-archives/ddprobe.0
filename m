Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EF4288D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757608794; cv=none; b=LfH9xHWrL2e7hM+zZpKXhX9l4Y7T13t57/fFROYLnX8kHz1oPcm72Z3xlRngw7PcCxbq0geT9gnfhzB1U7H89dXihCunE8j/PAoHtlv3GSIN3uuL+rLRqYciGWBuyBWd4LE7M18btwYQ+XCprLQhGBsfGAaDvNE64QNT/HptZAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757608794; c=relaxed/simple;
	bh=icB4UW1XMzcHwy9ksfWvfHZyehNov/6M6wleutBaA4s=;
	h=To:Subject:From:Message-Id:Date; b=YZ6btrRJIQJv4OO3OJtv5Yg0i/ojRB/2IvsC7szZ8Cau/XtomcIUf6XC4Ehw4+ZJpiIlmOC7jx5JOVl4iHsepVvEAGFaUwtvPjtMNX1IPMix5WAgNWmdCH2X/AXYDOLMQvT6vryWP+ypKBIJZ37us8cTSqUVpioV7+nDwib5keM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIrSUwQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIrSUwQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC59C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757608793;
	bh=icB4UW1XMzcHwy9ksfWvfHZyehNov/6M6wleutBaA4s=;
	h=To:Subject:From:Date:From;
	b=oIrSUwQbCHEPUHjOwsMYfFCvSSkTvdOgRfRDE1BsPMMm8WJWjrMdwYLHuC4RNDBo6
	 z9CS3hdoaHwNzpNWnNScqN9G45fQ5RbNAKVNt4S/ey5L3KNKl4xwDktvcIqjavG65E
	 NAvXZad5wadENd0vCA13RuIV4qoc/+j10lYZc8kaGLoKoZ6Xl1UOVWsschJt98JAhU
	 wKhQvkzObFR6LKgvDsJabP4xJO+hnGaR4w2IAscBO563zWmQ2d043v+cP+s8JeMVsP
	 I2YkpwKWLmqo/Qp+5I4gdOn9Ny/Budv3r0Sonygbsiu9SOaFWjOphHRSxrXH6mQMPW
	 9NPLy2PBPraqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D8CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760879357.2572.4742046491826153364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26b9449d2113a1261ad520354c652202fe5b87656efa6a7b212b808bd328752
Date: Thu, 11 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757608793
