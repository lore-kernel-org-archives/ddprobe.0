Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B67D181
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718755763; cv=none; b=WAWiOhpM/26YHXK4QEIpJp01loPUIj93PnnQAh4dxsbzJimk+6KiWepq1msJXHMwN2chFOueZjhjpb760ohl17/WOtjE9k5ejille4tC4mxEg6jKFlSLbJ4VNdIam8vBEBe+TYqV36/X2QDEQdpRnML1IXMpv66jZQ9yETEx658=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718755763; c=relaxed/simple;
	bh=mO9YhI9O2B29GhZmPNoz0ryfI6qa5+p1qSCmit4Ea6c=;
	h=To:Subject:From:Message-Id:Date; b=EnvbKFlPrKVpPWiSTqv2MktaQhkuUFCemznPJmrydBDjHgQGJMG2GAk/6lzlLse25boY5ZD67eIesDIP4uMYQeQq505RC+nJTP8ctAmXI8Hwu1Pi9P15BI4K4fCDPL6+mzeS12bFdji2EaQ/QJKHmaOe9MIyCgrZo0RROOHvPUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFWogaYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFWogaYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77C8C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718755762;
	bh=mO9YhI9O2B29GhZmPNoz0ryfI6qa5+p1qSCmit4Ea6c=;
	h=To:Subject:From:Date:From;
	b=eFWogaYyZZVQ9193KIxwR3ARCCGIsnGKbsC9ayMX0X9sH3KTe6noXrpeyenaYl5rg
	 Y9uY8vwar1exCe0Iy4MmRgdgXpIHnl9fg27o9pVWxTjF+Wa/R2MH8ddhCY3yAgzwZI
	 o4BbSyJ0FqxjNJyoP8yZ5WhfFl05WXRmyJBJsPi+vNWo4Tqfm22U9t/HI2o28o2iQ0
	 hXPVCSB/Iay6wlWWNXmg14tvL609ekuIQNHMAiNHd/jQPR2Ow3f5x3I5D2pVPAUAtQ
	 YPNz6RWX9efimI+nXXnYzYBnJ0KYdlvwMEMx4e2j+2fEblIFYzl4vrEHFhLsLYfV/7
	 bFnQU8XgJZ7Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAE3C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875576277.5709.6658725131274013784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1009d5d9923bc28bf5747712ef59313a987c241d5c06fd6e8f47a060e061af27
Date: Wed, 19 Jun 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718755762
