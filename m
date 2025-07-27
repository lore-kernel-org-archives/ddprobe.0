Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DBC4A00
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753642794; cv=none; b=ect2rRuB2lrWz6jIXzTTwGvMA7kuhZTNQ4wW/hrEC1j/ZAuwGVH8wy4PrX9CeGopD4FrOXgUdkfexFmbo4MyVtggJZJ20AzizMzLuBhxA1CgubNh8c8eD92+KB/vQnlRjP9XEeIapgmXy4QpfJPKuHY65atHT3XOtRGVvu6Ofn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753642794; c=relaxed/simple;
	bh=PZyVuLKvbb9BBlRyz2556kV3AZdO/05YenV1Tdpxrp4=;
	h=To:Subject:From:Message-Id:Date; b=CmrvMH0XOmgH+g9BxPOapFr0jXwHzVqGRN+vBhrEsGMcdT2O3N0zmFrdjs5o1XRGU2i5H/BuRhVcH2i+NPAa6krVSvZtequKcy5zZakI9rsYzhb0Tkr9AC4YMoGWopQZ0RgcH/M/Nj/bpudIXE69544fE2qGm2vgZo+wIzXufrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLKPGasD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLKPGasD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C34C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753642793;
	bh=PZyVuLKvbb9BBlRyz2556kV3AZdO/05YenV1Tdpxrp4=;
	h=To:Subject:From:Date:From;
	b=LLKPGasDaNqmWpwzctMqBeoYJEoFJcjpAS7aX5Ytg0+4Li5NJoMZ6fEl0bLMfPQfC
	 paaQbzeeWiHCOSLLRZ7mUYvRYazCjAyD8os+0plcn14WEZdj7lRY07FWaw6MIWo6G8
	 xk4qklK+BOEw4fmqmVZScKyNo9UsCl8W4cXiWd38yzvq/hCIUJCzleBdokjtlUr2FV
	 G6FxYW5sNZl27aB4rYPEgy0O8oq1LCEZGopWLV6WsB+4iVkS6a5zbnUPrOSxsF1MQ9
	 UsJ/ct6JLLwEUd72vhASbzfEnv3Xs339Y/Pm6+fEYMkR81quRnzKupaPI+IXZOGp8p
	 Wo4Qk+5R5m6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD5C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364279357.26108.14392615433480296546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c015783b79b02a8bf6d689de0b3b53f8d3e6adeecc22854248d5f8294bd0c890
Date: Sun, 27 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753642793
