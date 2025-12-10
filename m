Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2854D23A9BD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765378974; cv=none; b=Rse7O8be30UI5BJ6n9u2CcNSsPyLwhs5QaTJVyNpWHhZwgVltwAiNsRcDYB6P3whlCymF6crx+oHv2/FOq+kW67so2Kl8LNj6JgTqDiKzLpPrnz6I9ee6xZPRJu5JnBZ/LoTTYgrolEJEybIlVtWRAx3nxmNBkCTosKGTsU8rkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765378974; c=relaxed/simple;
	bh=gWoTVysxl7YGDWSIMqmk5b0pox7zPFKnwoXiGHHh7WM=;
	h=To:Subject:From:Message-Id:Date; b=CmqWzrS6eIXM1OkPO7UIzJwYaaRGlRVEJWXBNsgIM1Bs98clPXhNQlj7AgR/Zq2vyZkRsBInTUJdNOz3DfUBwodwUDZRcDe7PGhzhxp+Eq22ani5UUSvSuuHMEU9LDi37lM7W10wh66UBvpnH7CLM3R6vAGchw6O4B0qiMQqIaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTp1dEdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTp1dEdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B365DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765378973;
	bh=gWoTVysxl7YGDWSIMqmk5b0pox7zPFKnwoXiGHHh7WM=;
	h=To:Subject:From:Date:From;
	b=qTp1dEdH8bAOkG6FCWkbmDGtxoLcqxBrqg+X7iworQJq8lViJOJmrRD7J1af45auJ
	 zdfBct+Yt8SGmcN7v4rWuMlbUBAc85R5snZO5lIMGcpcnZ4BJPwatO0QZ0D/PewaPu
	 4aV1IUKaJTa38m5WK5cS3pHx1pV6DnjuwgrPfBQyNhTDyzJvq3yfjsimLfB3AoaUDt
	 GWgHfr5TZAdKNUIA01l0FUPTg9wFQgQtbLtyIqpKV/U9dLpD/qSVbPb7XxWa0xTuhX
	 ibQer8THcmZ+Grz8iQiesNMFgOVzuA/uHpC57zYrBhLCfza/jftt5J2J+xdlDO7EVO
	 cfeQ6TuJpwpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B417D3C912
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537897360.21739.16757320320419579247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce932407fe24b40b18cc69a5ac5d83a6f76483769d52b4c9936eb9c61ba5212
Date: Wed, 10 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765378973
