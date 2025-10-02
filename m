Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8F138DD3
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759367393; cv=none; b=Ji1RHk+pgJThtrCX8S8qZLV9JecTfgXpga90u/vXn7xBe3JCFC8oCFmvPmuTW9QSTKBEAh/lqr/V1Yw369wpgw/BRakoInFxoBNUWrLQg2aDKDFC2R/jQqPj/isLbifbnyuwzTOQZIecNMplqoD9mveCheFBGvqhD6JX8LEiCrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759367393; c=relaxed/simple;
	bh=WT9QcAwZ3o4AfNqu2ET/3QXpmllhYOq5bvGktd6Wdr4=;
	h=To:Subject:From:Message-Id:Date; b=ksX5cyxh3piaFej9izBkKn587T0H6JT/brvtGUuDnVVWt2s1ucuC134BtKgYWZfEohm/mjnCSp6aTS54ZABgFE73BsAIogfapkZfxLmT48nUdrmXNGygrMr3o/XwZCXjpQxVZWSw8lAP6TNl3x22NrryRQNlYqcQoLtcCusb08Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHlxO177; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHlxO177"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA9C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759367393;
	bh=WT9QcAwZ3o4AfNqu2ET/3QXpmllhYOq5bvGktd6Wdr4=;
	h=To:Subject:From:Date:From;
	b=tHlxO177CG893HououqQ+WhdvUiqMw1/UwaGkaAsgiRJkQWbkqD+hzPigmkCIhy8+
	 WEHd928GO649xlCPBMa5yNZaFyiuOo2S04PWY8h4qQgYOtdNV6NwAwEULNrAxIr83n
	 mxaL3YHOI8VVI4ozanU+wHvTSnOQO7Uyc3mlCrpfc7SDCyjbe7UHjII2fgcegAptO3
	 be+JSV+YNHtlcK2aET5s0sYvOjxhw+QMs+W7iiSj6noXX07I22sP1xQTlpdUdrPPlt
	 7MIZUs7vFOjaIPCs3C5uEg2wC8rHx5t8TtSN0RjAYGuAMcq49zKFPt1ngxQNHpusia
	 AbaWys0h4/ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F942CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936739358.19904.5261555642473154802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0b0af4e25365680f32f38bb74056f6d32610c4afc022009a89afaa1c282e2f
Date: Thu, 02 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759367393
