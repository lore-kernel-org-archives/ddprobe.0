Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006A22D73B9
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774052694; cv=none; b=i9E4YxdlAQb+wmS0s7cS3cGWGEXPlZ2hnQLc2vcAGLRAyMPeLP4XFkuH0NvCGhF+JjWsO5c5U8dRyYJ+rIABpUIDDSt8D3+DwPRiQQ5EzZgFHOGVxvyEa6bT1/lMausxWRqASZjLbcYYJwf3XVkBFBddREh2MjgHbezu8fVkHOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774052694; c=relaxed/simple;
	bh=7FILwowdp6rHhzBK3s6hDY3JYcRuDNG3TuEqQBw3wKA=;
	h=To:Subject:From:Message-Id:Date; b=Yd9cGEHd5Rt3rwtFCrsa3w8b02L3qG5GcToX53L6eGl6ydIlL6ZVDvTTgqpxTfrcbZU5Zeb32PFmXXEyMrClS147v2WLV1JHFHR8PywvmzEK3WzahXpFGhWUynvmsiVeaTFshZeLwQOHnCG+ufDRXGQfW/Xuh6DppKDFoetQYYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHLxwUSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHLxwUSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D848C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774052693;
	bh=7FILwowdp6rHhzBK3s6hDY3JYcRuDNG3TuEqQBw3wKA=;
	h=To:Subject:From:Date:From;
	b=eHLxwUSiBHQ6HXAh0d4zbSwmTdOkYnesGbX6Mq4pROFUq75ca5gjDM8/rllfnIU70
	 ShvTZ3PnR7Ud94xiZ7ZiZhMhGxQcCO70LmMQiqVLh/w+icHRAu4JT4dFYiVEfgMm+M
	 tqR1shhYiOgiQD6pT9bb23VBqPKbg0NpnmkHlzZfQ4o2tjJIKws+Rc+a+T1wJgVRog
	 CcYK6tXrtNip+FWEAsUtDHi7QMeL1ErmzmUHMhIZDx6vZ6C74cGTu4e86gVA2FQ1xy
	 8/v3GHydW3bxKJg9NQ/+anBdBWhd9BrxfLQfLEPQdgYoyPC57ryj6k6YK+TyLfZTSp
	 5uebumVGV2aVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA171099B52
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405269357.23062.17676838939054414144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0287cfb69245d3af0a76e98c8937ab0d0a9e4d321421c8941a6132f7be6cf5
Date: Sat, 21 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774052693
