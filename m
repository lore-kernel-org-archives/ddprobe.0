Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110893770B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764078174; cv=none; b=oDSHLe84pC3fmO5ZHRYyWErFR4kXhSLvlNHywzOT14gVJwcCv6XTM48sCdhfHTfLED/u752TLbhM3oUWMQZam+Sy7XgJ/tar+UwqJ8KVikeVOGUGzmVCMKxPPjbclSJxSxC0Iywq0C4kRWHv34C6i2fZmeuRT7YzuDurcdGNoGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764078174; c=relaxed/simple;
	bh=s/PFeSTx2GOp72SiWSZZtwdblAKqxzmCgqCHSuy3dSA=;
	h=To:Subject:From:Message-Id:Date; b=GcFRWoWK2hHQLujddc6/yiGcRryT0pJ89h61Q6AfOfwGB/mq2e3eoRWhWKh7/fAZfFE7n+rxOqYh6TWqOESjy/2Q1DN4BoAJR8WKFWqw0T8cKi4Ma2WicI8Ksln0qlczr2foCgctpSpQxyqahCtiQULqKMHtH/+eHuj8GIiMcbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+2p+eme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+2p+eme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58ACC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764078173;
	bh=s/PFeSTx2GOp72SiWSZZtwdblAKqxzmCgqCHSuy3dSA=;
	h=To:Subject:From:Date:From;
	b=g+2p+emeGdWnmS27dINDAU10bZK2YqCmZkFrIAeqMIhEDSIAPJGU8cjTOnLXwR0ab
	 zDzXgb/4o/R1E+9YAgqY6Igk2cyxNFRvXni33OVkenY9G5R1rpSw2v1ub1onvbnDVK
	 EghMovwUDu4oiT8arYXPWqIoj0PZ0isHFfhCOFZcocSLunAlW1r2LwefYOJ5JfYAB2
	 GMXkehzsqMIaGVRAV/eeSFKo34sGkid2oPmhnVX3/elWVz+xEjE6XIu/cZjm2anvdH
	 vMY3CY6PLoDGlYmnzcKbzBv7G1x4Dyv5N4yrSuIzx0KiWoMXKiJaiZoxSYP6StztNX
	 QqzweGIs5FYjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F75D0E6E5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407817360.26815.6052340441665582616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3692bfb6cbbfdea79a0a47e2f4bb48e6953519c86cd9248ab233698969b6ec
Date: Tue, 25 Nov 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764078173
