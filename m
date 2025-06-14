Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF78175A5
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749867594; cv=none; b=UIXDxlBgj6HdF4usYZD+NmyTHUc2Z5O+Q4ZIwuemWkXooZoNHEoX5WyASw4ATy+rdutzJkrTFYO6nbcwLHqw754k5d+OPZmuZVW7pVWYPSI3hCIGA82WQkxVwaknhmh4uywTbTepr7IAbPk3j4JuXtdgbXF6pET6nvv9ts5Cazw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749867594; c=relaxed/simple;
	bh=IU+lFzmxnKzs8TJwjpzGqGeP37p4NjSRQ1/qwDuojVE=;
	h=To:Subject:From:Message-Id:Date; b=NS21sAvV9VlEFatrc5QXVG/IjoOV6S66qOM7oUjJv4EXtH6OVFxDl2IchHVzCEkF/Cr+dW4caGKLAU9eOBqHsM748OexZEfjt+FzlyJaXtyZllvPxstMwjShNEPQNvGMMVtub1eorDnwBwFB4MyOceod7xOE43dF0VbiNe696Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8bWLNnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8bWLNnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749867593;
	bh=IU+lFzmxnKzs8TJwjpzGqGeP37p4NjSRQ1/qwDuojVE=;
	h=To:Subject:From:Date:From;
	b=A8bWLNnWdSn4u8PdxAU4XKVmdrOiyN+s6AOcoZ9AQJ7jJd5oApBFxlQxOfQhkDH7P
	 62/K5taGEbVFWhORMZUTHQd3bq5WCpL9NaGbQBR5k4LngGXmEyBSYiLn3eMcI1qtEy
	 EO8EwMqaeIBW5yw7qbfh/c5NhkIH9r8QCv5LEG+bRYFyROr1weVBNlCzUlVxSt/4Ko
	 dV3g5JjElkIqL14CCAZXoIcSat1A1XqcHyVVAmd9+G9B6PZXO61vkly0UzXeN2uUUj
	 Aq3alQVnkmYA3LU6WdT4HMjPM626EDD8MxX8qXPLt0lLh2Hlt0+1jmhNy2Ja1dn2MN
	 lwJFm8MPf52uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA89C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986759357.20333.2257637643994588375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135e99f7f20efa9b244c4e99fb6f2b8afed659731eb77474f5652b6c4d0f5f66
Date: Sat, 14 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749867593
