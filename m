Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D347221FB4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785555034; cv=none; b=lwNkiv2WBjHauqWJXEVfCIMJJSCOdL8h8A2pGXP41i9vY3fRc4ivNBJh/K54P0YS+4Olp3/et6RkLoHEK0sP23YBB7WEOTS+KfF/pTHcxJ6SCQIIjEEYN+Wkxd/WvGvinh45NpHJY4d1gmq8rDEt8g+dC6as8bB5dgGI+Gqz0CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785555034; c=relaxed/simple;
	bh=875jgheH+4aqCBhZ481RZqhsNa4sIAw8ts7T8hUQx98=;
	h=To:Subject:From:Message-Id:Date; b=qY9TEYU3o7KV3dWc4dTbuOmqRkLhhV+v7UNMbiLf6qFu138GoaOvh1xpd8tlvb1R3Y/4J4AoSnCMGT9uOtyAXv/PXv+jvUoSCx5vRmY43RJFATSHo5utSk+/BZmsSvn2t8Q0Kydb7JfyRUA0OZJz8hsHNYaoGxBRGz+8MB+rWew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDdhXuzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDdhXuzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC62C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785555033;
	bh=875jgheH+4aqCBhZ481RZqhsNa4sIAw8ts7T8hUQx98=;
	h=To:Subject:From:Date:From;
	b=kDdhXuzAbISAyVJWSI72Mn/Wf7Cerkkuq72JeKZPAkAA4KAtCtpXtb+u36eTRbOrX
	 B98l254+map8pP0z2VV08vZ3OuQvepQ/buimdqopgYhffaUcgqrOUr6J6UDD27ByQ4
	 bJxNDjb0h4bnmlPUt8z9kEi+xJLwW6aoGWdIiSeVF6oUdlRPYdzJfVjdN8X6oaSnQJ
	 aJCI/ARYC6SZJRip/4UOn6csd1OglcTk7SV7lfrVXGwNCjOgFkuupPd4Nga9d90M6l
	 YumaspllnbE9/i497w77YIqoH6K5G74f/rnJ3ItWUketmw017DUL4/HNhYy6NZTg/U
	 MrQJY+0JiVJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A876FC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555503368.30578.2949665982326725376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a274563fffd4292e2f4e937a061021c7cf8242d3c1084e55cb0defff0113ba2
Date: Sat, 01 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785555033
