Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074E4071C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780788274; cv=none; b=RH/NLxFUzh83BHUrqHlsjFs7n19jSAwPoWjY2UZpA3eM18MF1vkHgBV7UFOq3m5s1HISPuh1HPsCdjMFmL+sC1QbKdajuosNj6AtgmZ/ENr3UDuGHpNFTC+aomqQ6AdkrlsHoq0qQ/Bw1133mqx+m3R8TeXyVoOkNs4lg9jFBXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780788274; c=relaxed/simple;
	bh=2YD8BQ8t+8ZMGEyBH/8IuTDDK8Ddy/r8VVKm92mhjYM=;
	h=To:Subject:From:Message-Id:Date; b=MD/A3KXUmpWxqlaDwhqZw8l+Org54Z4fHOTA9t11IxYFjhVfOXOCrOpagPZr1rikKmeQN1zhTLJj3rsOn0JyfUmz3a1CT42+r4n/yajh0nkVPItVpnDiWbvhbpKGcqNdJSXNXBpA7XUwRu9z3UQXkcrpacLrYa3NGhffIUuleRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tswNZy13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tswNZy13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DDBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780788273;
	bh=2YD8BQ8t+8ZMGEyBH/8IuTDDK8Ddy/r8VVKm92mhjYM=;
	h=To:Subject:From:Date:From;
	b=tswNZy13+mtW4S3yMw0GkgiwPwfTSAR7unhb/GlFO2K3enP+a02UxlIENETyBl9UK
	 8k/PO+nrr4DIE8A/ggqbSrDrS3SkxiwhvU6GmE3sOaSrPgKZhrF2OXijS9ZJdoC7z8
	 xAvzDfP+4Eiy6bvCWWKRq8d6+HyAl+ueDaEiFK3kNepIs+T4CdXckOd0tKOhME81OR
	 eNRXKzNJPPTfeHT23R6w+NctvfvKK0+c+mtTMQBEgDGu8AlL8CVwOyoteTGSh3OckQ
	 N4wxxuQYjRU4UV7XxiUPJfvLkq14IQWSOaYzeU6X25gje+UN9UVnQny3tdiUAKKZo6
	 SINk/zbUuTTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0718CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078827369.32441.17319912739861977051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3012641a675a3698094176a8553b63f2f56adbcd9afd97dcbeae69aeefbda8ce
Date: Sat, 06 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780788273
