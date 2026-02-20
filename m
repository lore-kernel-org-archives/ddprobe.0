Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F732AAC9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771564494; cv=none; b=AUh/bpNeO6aTdhObPXBw2hmX+6XRtsuuW1qylIPelHJf1ddrfq77tdcJONIcreLHXgQcsl1KjKPTKHMf+R4fKuoIT6UvZhWOTHKj5prAIMnqMcpVz9JxBLxw9G5kRdGO9lArWMVEoXCBTdBo2mSzgDFUHpAt0SrhhoiUGP/i0Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771564494; c=relaxed/simple;
	bh=nQV1h1L5JFbazArRLAQFV4dRS0jqqrx/m9dTORRBTb0=;
	h=To:Subject:From:Message-Id:Date; b=kTYRdYdfgFSZ9eJFTBaTiXOM6Hfoj5KoVZPlAqh/OvV4ilS5S60EIpN7ajgapHVGjD9L04C7cI0C296vV4xP8F9R44rnisEWI4DQ4Z+r2gFHSub2Xd55I5wmcgrX0xAEz2LpiDv3fb/4ba/1Vt4iP5DGO4vUJYNTj2Yc+uMvS1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7zxHDUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7zxHDUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0799C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771564493;
	bh=nQV1h1L5JFbazArRLAQFV4dRS0jqqrx/m9dTORRBTb0=;
	h=To:Subject:From:Date:From;
	b=p7zxHDUGvdjvtsu+RG4QUPIhiZckFRXSyAueYPjc+G3/5OztKIpfNkIdw8B/FlAqn
	 c/OxDGaouq4ZwEUIdfWjBMAzvPQN0OxiaYUvsJTUWILPpUgmTtAteu6LWKO/jBGTfi
	 V93RqRC2Se+9e8ckovxAB3xLyd+52B8YSv/Kl0eF8A8SjlW/yd8Tq6bh2/Z6Rat1Au
	 hL/GpDfrpNpFYeluvnbjtQ7T4D9/mYEfZHhnm7fubFpnG+HCemwEaaR+ZCpJN/N4Bp
	 Uuk0mBxFKJV5hxzN0mjksKgwDtyXl0S9F4C65cBnoSO3xJlNoxCqonGI5SCPBbP0Fq
	 qxF23G8n2AijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7E5C53215
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156449360.19677.8445827900419714999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc18634754e6cd702b16d31eb3eb9f33264dede605a176d264085a1ae924f7b9
Date: Fri, 20 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771564493
