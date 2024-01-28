Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035526116
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706416697; cv=none; b=ZZhQ1d4e1tTc7rsNUn13FJN410LypnxljuBbbMFPPOc2n/181apjgfRuyth8UlLywiBfZmNC8qYvFqv84jkrw3klLnIBCipmYT/9+1O8OqMbq/WdTRGbOFxp2tI36yCcb3TKhJao1tjHnwdBeC2Hmv/5ibEdsBx8gjzLny7fPek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706416697; c=relaxed/simple;
	bh=5i9t8cdAM9y9cfXdhQOW1J68PpGNr8KW18lKc70WDDI=;
	h=To:Subject:From:Message-Id:Date; b=u+wR9nXSf92XMT0h58c+Aeh14bQJdKPI+aTgOmg7cOqGE97qVPKD9vWDp2+cfnTnxkdxf8svjT7dcSI5oeV2Lpc7Yy+qN4P4TOvAeQrlhpfB3pmclhClKwf12271Lpbf/ZMCb4ZAPYwGICx4Tzd9VXkdX6t+Ko9hDUWNHnejhXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUX/+PbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUX/+PbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82AC6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706416696;
	bh=5i9t8cdAM9y9cfXdhQOW1J68PpGNr8KW18lKc70WDDI=;
	h=To:Subject:From:Date:From;
	b=HUX/+PbH0BAGZpiSZcTEhMQJGM2zawNVO1q+/zSUw2q+f1uNCP3Qy3ZBLX8hYoJEp
	 ysLyR2pn/NWKKQaMbT9rZ2sonGC/jr+GBIgQW21bXa4Xi4vaTdwQlARjXynfo7g9d0
	 WXAYx5RjRHQpLizHlaW/mn8Nx0mgprgfbe220hofGPCWVLBiWj36K19XdVuHWvjxzy
	 Hdj7LRDPYy4Bj3Yh6KD5TKWN76u5Zp8HHxQtoKbWIEqm3N+fUxC1J2pT24TKmD2Mlt
	 jhc1qYvz4D7sjH31X3wDuf3wMuGlq3BvB4gbrwR8aeAHx0p7o8M7zqstS0iWQoiukY
	 DC7UCLjEF63eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6652DC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641669639.12600.15064187500805439229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88de21440fc1c52d41116bf35edfbae185b52096d8123824e228055dfd1cfc26
Date: Sun, 28 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706416696
