Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A804A1E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737338754; cv=none; b=JyKdEH4TQd3rGJXumO5jkZhZdcronf2ZDqBgJ5dfe2MnxymvalkPYiQXI2mnY5Hh5nL4Y7u4bj53NL6YaLljQrcMduBvg42zLtcThuyN4kp3lLzzihOI44YtyD5hCB1q2iFiEjaRNLZc8A3n4i5h2s+gYYX2rk0rO4IPrTNpXbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737338754; c=relaxed/simple;
	bh=+Lm+prO/cWtenwzoTU3pYdVNQeAaUhDf+HOjJvnjVOU=;
	h=To:Subject:From:Message-Id:Date; b=gzonnp2z9RAQrMdqNectUwZRVj0rCfgWWfiJgWcJpyS48xQlVRV4n6PDwyPIrsaSdUjYGPiDEOE22m+c9n5w/3UUNwm94ngBNEbns+8TICOL5UrMpR9pNteX1M8FssVN0oNsz8qcqSrY9sPu6dk+VitFU7P7uYqTpuBshgH/9eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP4MVAFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP4MVAFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20D4C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737338753;
	bh=+Lm+prO/cWtenwzoTU3pYdVNQeAaUhDf+HOjJvnjVOU=;
	h=To:Subject:From:Date:From;
	b=CP4MVAFVInzhBTqt4uF/tVCvSv4JL05Mz7RaHqW2v3gyFT/ZlFH/qmGktmiNknJkN
	 hJR3YAaNmYiX4pl5xEw0ebAeOsjdoxb5kWOO2fviuW0kLjIx1LCNY7NVX6a7Atc4fw
	 RrxZHQLYi9WdtrSfiJ7nVyGMur7ymd2S59xIxkhiSaDBKVT3f7WWmg8T9ljoZGJFkg
	 4wFYnEETjR4MYaPk9+HYqo4Wbx8xUEOHaS7F1ium2a9IX6uTZuC605n4+LAYTFzQX7
	 E2Qe9qjPzAD0lTBS/m2sQ6IYLsK2qgv8VvLzITKet34SXjAQ7w+9l711mJAxoCVgyn
	 qsX5sdIpNRnFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3718C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733875357.28290.11927516085949740827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4add9655af432bcdea1d478455897723b47e0f6182ff2dbda80e20504930344
Date: Mon, 20 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737338753
