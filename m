Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D68E2D9EE7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777852054; cv=none; b=fowdiEVRypzKR9AD7S9WzGj6CzNjWAoGP2/SMZ6gG7Pb5bF1xxSF1zYcErRN0gSTIGWvSWIxdlQnMHxlg09hDUKs0c7swufFccAnKWjADmbiTBUDA21ZT5x9Y1sVRTXYfRke+Dq3Q/07l7EWeXJVzNxPlxVGVXk0EOX5ZoJgXnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777852054; c=relaxed/simple;
	bh=KCnOuqlppUVnA/V2JFeTzVb4mz+CIzmaJw/dyOQosDE=;
	h=To:Subject:From:Message-Id:Date; b=FONjVwb/BioflcU8zp39VRIjnpJN0GfxR2DdWSCThrWI3bR0ThahqqT6AAf38zzWPl+u/crd4lRaL7tN9jCWiGMt+Z4Ce971vHhGbSnRYCH7wbHZO/OxA/DUwV3PqaYXly/Xai3fZOjWoseFffp0uznyFzfHSp8J7DlR4b4hEJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxN49IzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxN49IzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB89C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777852053;
	bh=KCnOuqlppUVnA/V2JFeTzVb4mz+CIzmaJw/dyOQosDE=;
	h=To:Subject:From:Date:From;
	b=DxN49IzLCYKTGPgbYD9+KyR/3HOE+52KqxnF8cnbbROsE/gRNBlVba6M4i1ripOxK
	 GNLqvMqoY2KiarH9oMhB1xyvhUmtEtIBgr0rbPCcWctn9Ws2md4Yrdv8KpexpYKnKn
	 vrAxGPAvKVvia6aH7Usn3Qor+WfKYBJdOMaooxUOBkQrOjBkIBf1XwXu3VppWyb7I0
	 vnr41fxsyd9nowc6SsDMfIkD+/Dwg+WoYdFIRE6i5xjzZH6ipK71R44Gw0aBvbWPPo
	 x9ZhJvmo//Z2wR9Y8oZ+RL9gPcu/pMCRhJzRLLmnThwWogOdMa0RD/UJdRWmwULG2K
	 nVNdWlSdXlIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE377CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785205368.17776.11077864063186173645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b44cf34889ecf6b4702d318fc8e71a44df7e06553655b618886d098fe0c0d4
Date: Sun, 03 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777852053
