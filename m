Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A53D26159E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777233454; cv=none; b=DOI3MK53lBEfQSbSedB2BsJukTanxKQFxOqivGpt96VdboJZeWTGFojwQXn5rzqcT493KrKeD8LVIXDD6QcVgAScKj+t0zELdLR2GgsESMtlZq+wDcY2yxPuvekDS9NQz6U7twybNnox2/8CNe/NLE+742vlsDKdQcHALsEbt4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777233454; c=relaxed/simple;
	bh=LZ6RKnlHo4SktkNkychgYiAoqqrxjxdvJNFx4RvGGGo=;
	h=To:Subject:From:Message-Id:Date; b=gXNKdrSX/nUFdaKSjEwnTuAuu9Bsx+byx86qoHVw5xsy6U8bZRKPIkwyYPbvcjjfMBTtISeH9BdoD/fVmB48KxQslZYBa1TFzpHRyxufJgt6vAGqEmHmWSN0LA5ISyHgJr9FVc2bx6EzseijxNr6drdrUU1ryBoZJk0RcNfL4Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN1pZyZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN1pZyZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE23C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777233453;
	bh=LZ6RKnlHo4SktkNkychgYiAoqqrxjxdvJNFx4RvGGGo=;
	h=To:Subject:From:Date:From;
	b=bN1pZyZESJI18fo+1rS+UhTsJJyUMFHrh7z66lvJs6b3YxFiQVMv1VA3GDkyQ33A7
	 SP0whuDYnJOlpTMpvhR0qFFkMsGDZrk3lm30R5SKp1AqmLdkkjCM6jQDmVuK9mKbGc
	 8M039uI+5tz/rAxCpUtaHmatZcUlGsTTfgzIxg9cSlzwgho1/jW7cF/n9gOWzv+0kT
	 3NqHLHwqknfX667/cOHBgdGYulkId8h0lqmmWKTFJwbBBgAxLAHVOoRjSFGZ07dn8w
	 7qpmpQVFh3t19ZN7+NCE0ZG8tKhTsGQDza5jHiwvQTExM4s7Xb2521F0HSiWHstSZ5
	 on/fPXPs13e7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4EFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723345369.7493.3865955212996576535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2184380ee48720fd6419f0c6d6cf6dc899211534804d4ff16022d58509199432
Date: Sun, 26 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777233453
