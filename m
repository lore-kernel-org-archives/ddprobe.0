Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CD522333D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764274974; cv=none; b=G7MeUlXLM81smGM4C29PIPzS02nPvOsqXq7Ub7o7u8K1bAHfLKLEZYy885oZDbboDAzUEubrvGbjYtmcs630gi2t7mByku26L8k/VO85p5QlRT+zkRInF3cgNzBV6eHLJGqOnGBqL4gCEHWdxAGp1uVkjro0GXeXOSYgQ8y1u/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764274974; c=relaxed/simple;
	bh=TXYFYrGUnkV2Tf6xMOA4ekc4C75pE6dAm3Tsuh5cswE=;
	h=To:Subject:From:Message-Id:Date; b=e0F4WseRtS2oGe59swhYn+/W+2GGmY2lFmycIa+N2MWGnE3SmsONh0tP/xsHAPp/De3eZP3iRwkuWD/BgmSewqlOTuAdkc2mwyIO4J+Uy46ZTmIM3WbFXhhZlyBXAhOT2th78h/XrBM44uMU1IGIUEOh0QuIuWeJI54cg6gtFPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCjLBgvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCjLBgvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E4C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764274973;
	bh=TXYFYrGUnkV2Tf6xMOA4ekc4C75pE6dAm3Tsuh5cswE=;
	h=To:Subject:From:Date:From;
	b=kCjLBgvgQ83au3Kt74AFtiooF/Itl9S3QgA3m4oQ3hB7LrNAOIVsEphGj6zl2roHt
	 4nPGHNqCYflXGWxz7H8OmD41LeFMStRoUU9A272GAjtEvxny6mNwxcZRARtk2l9Prl
	 RzCnFqFUR0hr8yCcPfEWvfPchQCWeq0/6CFUclie6Xp4ZgaYdYbcCD1pF1UqEsQMjE
	 4TW33+cPINU59pQYSMYsIRmelxiCGKVy0BAyIx7vzdsDzKONJdBzSLjGdgZFV7rE1E
	 4uXRKqqDU+b20HBYvvarzr/xhX6tt2nLGT9UPxkcCfZfJw/gU0jCYW9mxweRPs9DvE
	 wEgtF3aaNsPEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B13CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427497358.19255.9155749695873789524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a32a7b0023418a839ec2c76beaa7856bf9e2cc4853b40e50e4347d6590c533
Date: Thu, 27 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764274973
