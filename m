Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CE67C6D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723797954; cv=none; b=I2xKVv/qTYT00FFHv7260JGBfzHm+p351f7xUkq1oC79VvQKVY3RVcETHDbUJ57TkL+uetTy9nFl8S1cyhp++zJrLXgxXT+vOTsJP6FidAnEWlsIpSKqM+9OmodBVM3Ccj2MbOMOL3K0VDPnPV503g3a8Pik3JbbxZJbprkNHWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723797954; c=relaxed/simple;
	bh=0CHmhwNqNtrEhPrxiIcpV4/uz22GWcISZgnjJYi9Juw=;
	h=To:Subject:From:Message-Id:Date; b=G2Jbo25lbCoOrgaMZ8SqLSMFMQmYZ9876gBdt/icbY7NcPPL3xA37HE8idYV/Pr0ETta66bFxrFXS1SGy6Fv1RHJz73UT/ejAsIrlw8Z1tp6ciEvK1lYHsHRdNYynVN4Hi1O7JUS/o4ocxWmmpnRq0vud79mBXJJyI5HKDKLyis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFXSqj31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFXSqj31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA318C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723797953;
	bh=0CHmhwNqNtrEhPrxiIcpV4/uz22GWcISZgnjJYi9Juw=;
	h=To:Subject:From:Date:From;
	b=PFXSqj310bBEjxaWi9rSowswERUtuxngn12r9HJ+EG085bAt7vVd76ttnBtjk35Rz
	 inwIEAQT/ieNQxqkpgA9ZGj0UWR5T9WUH3KQJKAXT4kKR9qhQWOGe4gPic+bMWHJ0M
	 Ar2qhag/cizFzfJoJB2mz2G3sslPtWmWP1YQXeRquK8yrnz7VQpfjLO+arPK0dtHxQ
	 4rFyTX1B4ko07o1j7zKvrP4fRzYmrKtxzmaqn573v278GnsKlT9DU7MQnM7/HUYUmK
	 KoSucB7BVnae+JtoiXZsTovPdVWmbHjZWZlE6OiTjhqBGc0LnQBTif1HBVcMxYBysk
	 HFe8TtrAXhvMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99912C531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172379795362.3621.14073024137991722878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e4ec48da4f4eb76d181df1515217cbfa28dc56232c9a593fe6c51214885059
Date: Fri, 16 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723797953
