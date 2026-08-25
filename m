Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF14357D08
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787693434; cv=none; b=QDRvuLxgacgqIIUrsmtl/CIOrqx+HiZ68vY1g+I/qVUwQhnUTUtgzWWVYflEfab+BjR53W0CPN9hon5NeBmCkYtyyo7OhAPRIt0ziYRQiMUz2Hyh4eYvzO61RaEdhbE8kX+K+n6LOrBw/fYpUtswY2ERXILn9lPxoN6hOAxmQok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787693434; c=relaxed/simple;
	bh=t7g2GPSdIngXKr5mu9f/xrmzE//o7gU4U39YHQMxPpA=;
	h=To:Subject:From:Message-Id:Date; b=ifEHP99SEvWpS6NcZaC1jI7qrigQdcEMMR4HYs1J6z3vEH+121O+YfJycuSqYq8gtMeiyQ3mUg47+3SVDGtArxMddfRqBbEaNLo94Y+Iu6iDSSrs1jyHkd1A9xCT5G9axp6R+hXVJi6zyY5TcWwFJryMESLiHqV/15J9FAqTVlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFi2eG5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFi2eG5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31FCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787693433;
	bh=t7g2GPSdIngXKr5mu9f/xrmzE//o7gU4U39YHQMxPpA=;
	h=To:Subject:From:Date:From;
	b=UFi2eG5sSaFaAD37QOLX8e2S8vjber+R20bF9jYSl7TUJeOSUdXBF182n9FTs0BVM
	 Rz7eJJNtspLbz7rJOSfQ5KDUx1rDsh8GsdXgDd1L7NcArecK/S0/46Kn5E4E2J5rOW
	 18G4pbR4PphToalZl1CALCrSmxXKcgWNKvZYCjaTA+tAuSqWaFK6tv4l06fAHejuW2
	 nsaXYLraZH6iKz2lnystvSlJbjDHTMyKx/ebGD39xCwCqOZDi2vKooexymzfLGulUk
	 8zgIjE6nQC0BHlBXLNupUxgHQpb0juHfwYb9V0foVIH1hUm5H7Yn6A0NJWyC2FehfE
	 zcdwP2oK0A+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0AAC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769343369.21505.3166819615286436243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d896a70cb3f4e9109aea1326933e52cb1e453b351114e5da93fcfa567fdf6a10
Date: Tue, 25 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787693433
