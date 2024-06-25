Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0D0148838
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719305003; cv=none; b=S/wIJI/qy7HUGImujVe7VbyYV8fyfesbC4cNj8FmqGOlIxRRSS0xri2MQPZXZu3SDIAn1CHsw6GD2mIfKeUpk/htSZkhA+9R+1ZEEEVU2tGx2Xa4bN6LyTEJqn0J5jAFrsLa0ERYHLOHwtYksUv1w7ifm99H9hISdVmWS4RzPh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719305003; c=relaxed/simple;
	bh=x8WGPv/sG3CC+mVPVwAdpdkJYOUf0AFuALF2BQbIW3o=;
	h=To:Subject:From:Message-Id:Date; b=XCJC+TquFxFeRONVqiJB7pgcl0ok/4ucnpDaDLyHhmZmhnISZii2mw2/4UZZlIKP6o0rjFUtIdPskgI33iYrVAKRv20rYX7q2/9KFAWGverPTfukHNmSXJ7a+QRJornaswfyk1DJl/yEOr2E1fbHD1ShBwKvizaOG+NfMm1LLR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeHg66rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeHg66rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A0BC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719305002;
	bh=x8WGPv/sG3CC+mVPVwAdpdkJYOUf0AFuALF2BQbIW3o=;
	h=To:Subject:From:Date:From;
	b=UeHg66rwnfT8GBU3H/PycfuJSIBxzzVdajGU6KjQAMWor8pGlJWeTo9RGfxK74LMk
	 df2KNg/L8yMmKYkdMUh63YLg7Pwa+ufcMzRCbZV7vPBqYgNNTQTaW13No5Gz7Sp/5T
	 q3loCMnYr/eNhJlPU3ZAwwlkYIX+cJllBgERW/+7tb5RuAT4aixgFqgv8bleVAo02w
	 nlJ/o4icP6tKKivA5y+5EU0GVWVHzSwdq3aQgXCpp+e48mIC5FwispktcV+5SR8xxK
	 OWGKMxjhah7P1AoYNBvE2WZXCuN0AoX3N3wVCjKQiWnlQojlIWIo+kG1xh3WdeqzjW
	 4WY46cuIz0RAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7464C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930500275.17164.7133643271703957258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d6326c4c4dc8b7f71f4298a656c6339a8986775af375e80907c5dbb3ce71be
Date: Tue, 25 Jun 2024 08:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719305002
