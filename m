Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7852877D4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751902194; cv=none; b=e3fVF51qX9q9fGw6rd0M871CTbXny3cT7ZgBKz7YD+0QOFn9acCyecnXgLJ/AZLgGd6b6v1jbYxaTdkdg2dQw8EKkRjdlM03IghoDPIAbPHHhUhhfa+IzL1vTtbLx7lv+kXhx7BS+knXq9mUYHp5SWXGWsepmga7/lFj6k2gC/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751902194; c=relaxed/simple;
	bh=1uhAwyCSgXYPieUxJvmbIKYFn53ZVCBfImPgqVPR1oc=;
	h=To:Subject:From:Message-Id:Date; b=YBtvdwDdOrlbOBNwb/xytP4c1h/JVXKRkNcrFm61zOgf/zLeauLYEJ8I4ZVUqOSowbdkO3Q/XcgxefNwaa2C45NAqCjzycu4WcbW+SPRTUI+uPLbWPErBd88FWixiO6a5qilazHKGpesjCon+fvTA7XvSFIlIIWUiaH96DP03fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Olz8k3Sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Olz8k3Sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A095FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751902193;
	bh=1uhAwyCSgXYPieUxJvmbIKYFn53ZVCBfImPgqVPR1oc=;
	h=To:Subject:From:Date:From;
	b=Olz8k3Sl4n56ovl6BXRCxbb1PVRAhKOFw52bHXWqldMb3aTbiE7j0xj3SmHy/2B73
	 bxgMgsLAkyAPpnATkTykecXmE1KWEhPkgOI9xBQun9A8p1Y9pspSk+9UDNu7lFWRpF
	 J8hyUYzK+KvQdkmTD3DwnDGf0Fz49PqjA4LqGz3EXPS7+t1APkzGyO12pRIdNWxmuj
	 mIqyhMJCRGCs6BZMV1mh8+Xp7RkEGB5uEqBEfhPhqbWUAOMaxiytgL/c/HfJe2Jrbv
	 PIzTo+Jbn0kN4JDnbuFceR72VyKM41J607yh7dzD8K+TB1L37iQYgEyLKPc6hqmWGi
	 Zs/O2Hs/pAquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76FC83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190219357.31593.4701431734415197341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3461bafffd033b591b2be16ac993f28da3a686f82d4a3ae7ad394e6555af4a37
Date: Mon, 07 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751902193
