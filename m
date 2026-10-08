Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF823A3E73
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791492034; cv=none; b=AkLAUMN2NIh2L8X8ac1nAnVWcVk+bo7P5N7jFkGMQh8oMF96bpSE+EMqSZ1WP1r/3R3p4eSo4bsE55hbKXgIlPHnpDEFSpyH/2xVlb8cPEuVSZ3sCrluolTvys83Fi2oNICwMRm9WmkaOl2H7tvRbO52hr4RLR0706e2MzC2HiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791492034; c=relaxed/simple;
	bh=VMtHAuZN68MqbAr6YyD/FVUHrTcjMj26Nnocjltc4a0=;
	h=To:Subject:From:Message-Id:Date; b=Uk8aX8V8MP5+0lYHZ3bFewygtDwdZjliht8Jzf7zt4HzlVw0FjSh0w/pBRoIUbxR5E/xhBgWd0q4dzgclzAfAp3zb1/NH5DTBWdTB+WHHCPsJlCe83SG3f6X5/xibyigJ0Q4zsajvfWE6AX01G+dqIthV2JCbW6Dn4k/RhM7xZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwIgT+/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwIgT+/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEADBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791492033;
	bh=VMtHAuZN68MqbAr6YyD/FVUHrTcjMj26Nnocjltc4a0=;
	h=To:Subject:From:Date:From;
	b=uwIgT+/tBrsUO6rm75cbNeGf7lqbpLtVfLYUaMl3bNPnyO/kzpujz2Kay3UbGw+LB
	 36gRfcVBKJ8CD2fMZQnTiH3VrFipEJZusGnQc+Nm7xh2IyqBe1fAIB0V+TCdrrGikk
	 HPdwELVkLU1YnO553HGyZ/A1kfNSdgeMJ0ByD78T+4CQUVe/VnHnmCyqL6Xd5qhGqB
	 X7YkbAzAJjpwTEa94zzMXhKbZ5RecKHwcZfNgWO9557x4J9XRnT/sotxTNpZL6FHG3
	 1T+FzANYO8H4kpdT/0C9GT4oM9X+TzpnQW1o2ReqdsxoeytbfVMu3F0qAvZvDZwEbP
	 1UULqt9C4waUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29C3CA600E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149203369.9429.5973598970326932930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b6fb5d27dacd110268c5144aa2b2d9f66d1f484be2be3baccc5f26d4e91582
Date: Thu, 08 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791492033
