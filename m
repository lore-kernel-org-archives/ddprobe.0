Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095E92744F
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765342374; cv=none; b=ltuuKuYmJbRvoVIA8Ym12kG2/wlHnePcw+OqEVuUC5XdD8A8mJM0wm9FIBJXofNJ//QtA0UwLg/F+KSgLjw0l69CpemwEGEvOE/vCAa6fWYAjA08dzNbmMcFtMjqcSugvuDE+j31BvCzjV5QNm8RXxQkxDE9wtVEJqafmTdb8ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765342374; c=relaxed/simple;
	bh=Iv0+b4zt35ZWoBvULXyhNB/wdi6YoxusxyHsTyO3gAA=;
	h=To:Subject:From:Message-Id:Date; b=Du9Vx5OreoB+vknP5uorf0VhrSzYDt2GLLxFI2242gOx7rO0PYsRRBiXzIXMN05RH5StbL82jyjUbKp7h7l7o7d8etwG69RLrQSOgwJh8VhnEEEqnDrE7XxFgJ6rLs6hQ1UtggvqHySLv0kVT9nXIR2q2alRAVLOPDo3zdmZmUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2kWf8eR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2kWf8eR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765342373;
	bh=Iv0+b4zt35ZWoBvULXyhNB/wdi6YoxusxyHsTyO3gAA=;
	h=To:Subject:From:Date:From;
	b=e2kWf8eRxXTupsJuTwxPZhCSPNKsmz2UOJQIWnpScLSXwL6BftMqYCYi+91g+dwY6
	 bWGzWxFYQqRilCD+i17YFABVDTDy8c9C7lun9dz07WoLk2mjXRpWIFEbIRhBrhBO3C
	 YoXdCuhmRLMGXv9o4ZXvtkUbQWNdDAOZ70NARLk8LYTcLMkmzMUJ6PPEYHmz1aad5P
	 i7gBQNKc7hm4KSOydsoXZizpwuDC8Ie3amqINdWiaoZkaUhv8moraoy8o/84w8fhjc
	 X2DrJb8VyW8JTplcqoLlA0uWBWiNngRJ+H2LTMujpBWcMa00UU4FWA0FoBaL5K8igY
	 tm89mpO63r5Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009DD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534237358.12146.9860793281454632619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0021695f9671d28695fcba4f2e12bb8cd92126e574c900b1ca313f2a3d7378
Date: Wed, 10 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765342373
