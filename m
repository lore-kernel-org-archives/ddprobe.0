Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F20823D7FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772882094; cv=none; b=K4wBLYXiniOvDtjQ04mVT01fAvp/5pk/plmFcWSojCt3M9jrCBSYjpOqLxLt/i+skacNM28Lhqk/anNAlNMkLmCLuIyos2vxZpVc/LvkwzmBfX/iCq1IZ6ptrlobiqMhGLmMVzZbddZgzwXzkwAVZdQuKXtVYMLlSdW4wiwlwTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772882094; c=relaxed/simple;
	bh=Xkvu/bEpvMa49zr24lQQFkeSAawTvvzuDCKKvHArHcE=;
	h=To:Subject:From:Message-Id:Date; b=MMdEhXFM9LjuieV642GagM1/E57b6FEmHSOD5uHAzzN3aX0wYPRDd8vn5h0Aaxz8eL8ZVe4/qlCyn5QJDx3OI2EhqNTTTmIeF4jUh1LrmkpLIm/liQA6r4z8g4zXiI8N2KpFACTgmCupLW1wBO/+MvztUi3u0dZfOz9GhiGcjQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwCFqISs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwCFqISs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2120C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772882093;
	bh=Xkvu/bEpvMa49zr24lQQFkeSAawTvvzuDCKKvHArHcE=;
	h=To:Subject:From:Date:From;
	b=DwCFqISsYFyyH8XkonvkD92u1ZoadERCB53tKmvy3FaOUI3xx6a+uBtz1KiJc8Lyv
	 xv+b/uwzc04my8/xApm3xdzR0FFB5wKDVCT6c4mkP2kyjrvuGzVC1v1lAKGcfNFqHc
	 y6PV+4XCQXsPbOQDB5w6dpccmn3DFX6dJ7Y18xHLOWqIY8BCLXs4o6GPG1OfyGSIlL
	 PWuHGcKMYLWbHkUzFaNnKg9L7jaAmuj/BpwdvfjoU6QgsF/pzYLT4YVRtubAhYwfwB
	 oghHakiEvHdV3AB4rwIA2Wyld8W5uNxQJbzf5e7kBT/ABxfvl2PxR8HIY3grLl87/t
	 d0EJsBnfBWpUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B3AFC9EF4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288209360.18002.1089670544553122464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b26969313323d834c6350e85ba7222d46375985b2a6883ad6f069e02039ef7f
Date: Sat, 07 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772882093
