Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197EC32E686
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765302774; cv=none; b=nH12kIOq68Sp3JxnFVqv+TdZVB+Ahu3umYAPu1llUKVupmwaxEKs28i0XnEmUpVOSi2ww+Bqe0ygLHyV3qpR/GvPT5VM5L+nhMlkgJS1FXNCdVhFYiqDuni2uSdTUtRjEdg/+zkB0HUeQgXxFKcbSM1VkzzKrH5f6wjZ3Vu8dpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765302774; c=relaxed/simple;
	bh=N0IOdPl8mubuTqYvxJidFsp3GW6yUMOtJ4GF/jAMCK0=;
	h=To:Subject:From:Message-Id:Date; b=Ay+ZOtJ55Z5dRHbKmeNe2IyJ327My4PixzVXOTOBVV9weX9VYHizeHvjhaI0SCrcnkysWaHv58y+JvGQY+tgkBrfNoCY1IGNlhh/dzz6+b/IpQovFXchIGfGXKnK4kuIHXcZxQEwQkWMDu/esTkEjbeM1c6QjvO8OK4VSpLA4Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdMbGqW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdMbGqW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CABC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765302773;
	bh=N0IOdPl8mubuTqYvxJidFsp3GW6yUMOtJ4GF/jAMCK0=;
	h=To:Subject:From:Date:From;
	b=cdMbGqW1l1uhx1C52B3bMv2C/qkvT1UtrC/veHhlL5e9OBYTPJTpPAhXy+zn+RCIB
	 DunaV5vczkg4FBvcKQgbb8cP9e9dN+58h1l/u6wWXrdYuW0tkxnWoAU/WkLjdomVaR
	 RdrAgybHYzUYwO2M24d+NFYKt6zbU5o2h4PuqCvdO7oCtQxHS043E4cB9lxxktBfrC
	 kfKSxd8+iM01dR3k2RFILUVA76HURqo3yhgDemevnzGGjiRRK8X0XVTt7+Nz+Qiy2/
	 zFLuPgAFUHMgRYTRwuIbjfDXpw8bDI84tKWOjFKRUJpPoSS+AvVOUKGrOeMBKsQYCO
	 Fny8t7/bZ84hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92813D3B98C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530277359.18758.17529191096097911775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08716f2e76645c645f8f528934cbc8ed421622a2b84a7841bb5d31f3827ec29f
Date: Tue, 09 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765302773
