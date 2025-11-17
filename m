Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151C6FBF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763362914; cv=none; b=lkzrLX/BRUtYrkZpxuXUmWdrjDoR10ChQp/zg2EARRxNTMULxlB9bLpMlTuIVH5igfv9oBbQTrDcVxqDEW+7he7a5cyeeSmjk2X99H+pjPRd9NFOyHq46SCIrB+bLEYnlOVNukUWIT/NVXeJ9oDmw80K9nygsrVshzs4tkBnHuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763362914; c=relaxed/simple;
	bh=rnJVy/uvi+2ZR1t1mSYHxRdxXmlkyOHhD38LxBlIVek=;
	h=To:Subject:From:Message-Id:Date; b=ZNIdzmn6VwtsyuJAxRucC3CR8HHie/GZv1tl5rExF2WRLnD3In96BpWL3az9LTeu3eGw1tN5/SWz9FEVxB7maip6hZrgJMeqaJIHoMigXbRfytopvrclhouksmXbLz9qe8W8HCEvu2cp48sBas6DbDYCncemVE9JWYPf54GEsYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK/PH0RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK/PH0RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763362913;
	bh=rnJVy/uvi+2ZR1t1mSYHxRdxXmlkyOHhD38LxBlIVek=;
	h=To:Subject:From:Date:From;
	b=mK/PH0RMEvAhSdI3OWLciR2vZ3Dy78r/8mh7ecIQxhZzQZcRo5xeaMmyRD1Mr10X+
	 vVFVDpAmHZ8t2wrqSQUvUEm29S8PZ/9zhrc+Zb16neAJdoHEY/96AjeXAJM8sRrgYY
	 qDyZORCVkgZERkaTubOXePGUrA4XrLR5Qi7Urn3TIjLUxHrGJppkG+zx/lHidLDegg
	 ErM37TXzxXkTIOECDte+C2G+3bwQC5ZEExJ5RJt6Rmr9SBWHtgWe9DslRR2AZGfr0m
	 Qz3rYe1bMpd6vCQjf3bjrMXLlMKAfz5bL3zA2fa/GGZK1UPQ9fFuoL5E3k5PX8M8Xx
	 ybsMdFXntTZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FBCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336291358.24810.13192459871644009552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec67866466cd0b09a846b4263ed3e526aea2f3937feb81a71058751ad6f6353
Date: Mon, 17 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763362913
