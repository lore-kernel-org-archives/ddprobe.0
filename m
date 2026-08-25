Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC8048822E
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787697634; cv=none; b=k2PRRsF1p5WAhRZaPhhTpFXbmvIWQPGS022G2mG6b5jfrEwpy+0BobbKeUy7Kw8eaUvk4PCnqxxsW9ZszyBTBeOac749Pzn4vmSXmwJSOCWWpwbkhH57gr6wrNaDvhpsqcgZpM6AkDDLhFH2TQhkEgDmN6TB5hkOoiB1XGvj/9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787697634; c=relaxed/simple;
	bh=3jNGgikUEEOGpB83130rnJ1sJHVGInB2ZNNEBtil6cM=;
	h=To:Subject:From:Message-Id:Date; b=F+XL8xiZpSldILtNU6bG+s+jIkGk1npON7GEcRZZljk8r3Cx/UFhpIl0keWU1ndAijivl6MgIQEgdoyQTKvFMKoiB97PyyDpZqdmnLH4M8AvwMxB/txCrg0MlsUA4kW0FlVIba037hGFhjJyxNUhRXhtfnZIGCQOkaJAVo3Dxes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr/puX/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr/puX/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D876BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787697633;
	bh=3jNGgikUEEOGpB83130rnJ1sJHVGInB2ZNNEBtil6cM=;
	h=To:Subject:From:Date:From;
	b=Gr/puX/+pt9gM+h77mHLl1oYUSxy5kVGzoMIn2lK7wnadWqyQjRyl6skM0Seflw56
	 5jFtL50Dpz9FXZQKfJ5PoFN1+JfBznZOnctkmxEIs2kWrqSsg9Q49yG6vVPKMPTbIH
	 TWDRTnqMsG9pv5JtZWxgIuJJrth+niR6/csBror2rlXBe7Zud1HUfnR0Os7N2Z6EgX
	 tvy2oL2LUkDiNMeK/cUA/Eu+Fd44CBxOZzgwXOIUfeJTPTbvEdeWqBpAsruFckFw1M
	 jmgqhtkUitk/iNmk8mKOdRD9KqmkW9r1eA8PiVTjz8FZ71a68E6/UMALRHH7B3AdJ8
	 Sh57AIUQiDrIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51D4C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769763369.11877.16523480076553879249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c37e2fa715fa0efbc8b1725720b451e4ae43e91c1eb06337c461fcf15c5e982
Date: Tue, 25 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787697633
