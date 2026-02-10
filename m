Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E585B1F03EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770750234; cv=none; b=UN/Dmx+Akz7FxPQzDPWcV/5fJVxoCSqwBq+HzKGDWWzEU9+goWyaxd+siLo/j+O46sL703/0BLClDwQLLCHzsW+ABOQw3o3dVPFMONM9Eu4KN0Tz1ph5w6IceAjio0l1BIe8dv+YtnjFLB+Ufh2ONGb3Iz9t5DmurYQaLXfxLDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770750234; c=relaxed/simple;
	bh=hrq1tDW+Z0PqkKjlauJwBJ+iUNSs3nfPiuxoykvXaoI=;
	h=To:Subject:From:Message-Id:Date; b=lajhs1oiFHYHp6RMWA27VhafA/+NOrgkbN9wxu+xkoY0awnsctGRVpkE7xK2XDas7ADmbmYyVihwcwMUIBCRkVBpR8W8QpAx0CD0jaVR2860WpogT49oLK49ysUVOViofTyO9olCn3NRqlxFJYfdR/RCVncazEEDpRgs9EkbMFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLYw7Znp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLYw7Znp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62A9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770750233;
	bh=hrq1tDW+Z0PqkKjlauJwBJ+iUNSs3nfPiuxoykvXaoI=;
	h=To:Subject:From:Date:From;
	b=tLYw7ZnpMp8lIB9BsH8qsTiig62hff17XJnd5omcb6SAkiCnIxlqN12fTWGWdrEB1
	 BGuX5d09vGiPH2jBmw8waXiKA1sTeEmAPZv+zGHcWeUJ9kWKs/l4XSWCMYR8OxEreU
	 awiTfWFodXCNwmz2uGP2vFkjO3lHE/y4O1gmH5O+pgTR0o5Q+qkVpykcIvcate3O/Z
	 NLJO4yJ0apxYel0Y0P/kHlXAH4ERTgT4+HUhiFdairiuXsEF57Irnn0qVN34e0Z14x
	 leWv25Vv+77KvPvFWZdfP3iYKfcEWg5Fmmqc1nLLxzLiukx980jSUbFA/yKg/0xqx7
	 SVRBBjlKuuuGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC77EB26FF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075023362.28443.12285529307475052391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2fccdb4b5c5feb512eb77a01c993b9769c79ff440876722ae1fa30d14d99ae
Date: Tue, 10 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770750233
