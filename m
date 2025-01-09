Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A06742070
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736446554; cv=none; b=Uyy03qrCd+tG9kGgy7+uwQeUmb2wVzJfKk50yVOQFCYH5sUkNvBcCfe66YWjqX0jLW8LWcyMys3pBmte5km2VBv2FxmeK/gzdmtrh+EEDLhmgGxLwjJuh2o0HKB9xitCQ3CfaANaGdGBQyDeXH4FO0++gYTVPdpTNzJK37/iWuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736446554; c=relaxed/simple;
	bh=MC9k7sUfN/REZzwQKOG9YRxEMZtbgTLjCbKswtTnCDA=;
	h=To:Subject:From:Message-Id:Date; b=ibPPJLsYiScenyH387Gte7XikP8R6EJilKuXvk0xkWXJQLVsCS3JVRKg5zqIGfqL/iUoT9uJyP4IQhI+EZ6c84OJYm4Gw/3vygkavDbBQ/o2od9KY4SwIL+pzzxpr62OKKfHfcYXaWIIbZzl3geDe64liTBsmmObP2URfjAbIY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4Lhk9Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4Lhk9Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B9C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736446553;
	bh=MC9k7sUfN/REZzwQKOG9YRxEMZtbgTLjCbKswtTnCDA=;
	h=To:Subject:From:Date:From;
	b=A4Lhk9XjL+roTY/M0WLr025nKvDpFu46+P1oOTfIMhg8s2Jlf5JfgjGdcL2I2MswW
	 9mZxOl8XGfavm1urHm6I2gVFnRInO9ntP1Nc86PWatLReJwWVLY5oIBiG3r7vUJK43
	 JTLgi96ym/TZm2XkJk91WTXAVmFvXRz2KC+5944ysALcpd6Lbz2oNywH7is66Z8cT0
	 phjXV6FptWaAYyJyXmpgEfKE/AUfNT9lngLAvEpjG1qeawAB3Ru+8p1o4AMwqQ/qG8
	 +zJ7PLe97BFRyokj0CncrWjXGbdlnJ5X0tOLTpKnIFMJ5r1b429pIkUZwyCThy/tNX
	 LSJu6ZHnpaIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92569E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644655359.7803.13631265680194412463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e78a4dc3fc23482f1cc06c0a2ba9a1c7e6104ea6dd0a1813a3d19f279a5b35e
Date: Thu, 09 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736446553
