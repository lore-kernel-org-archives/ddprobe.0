Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2414831ED7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767698634; cv=none; b=kIRzpDfVlbiIy/O63DmtbR615JioozwiX9E6YiDCAGLUXmg4Jn92a3AVBZPWc6DeR2Ya5i2D76n/FJpU+rt4+wbVAgRc2OtA2aCf8GSy6/y+LF5GAszmjsTELmIyc5RxVc0RCqL6UiLhx+VRU5NbxY3mCf0adqx3Ds6bEw8GhFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767698634; c=relaxed/simple;
	bh=gwsmZHdra+80pFcHvI2YcO8hirjshbOU2ZnBdj7az9I=;
	h=To:Subject:From:Message-Id:Date; b=i33I4lHcSN6qrN7VEofkLLol6ZJ1NsJ7kUXm6MkZpF0zuuWgeJx1cNn1+yxi0FA2iMPD2AcBfiOTmirMTL/ziTFzxHz67CarDE+zLR5OnZXe6X2F0n7BHntqOThVD+p0JmZt4LH89qMPHd3iYszQqaMeJA7zVewJpBDMJ7cs6iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C44NENQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C44NENQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A588AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767698633;
	bh=gwsmZHdra+80pFcHvI2YcO8hirjshbOU2ZnBdj7az9I=;
	h=To:Subject:From:Date:From;
	b=C44NENQkduab0cbWk0S67i6XvT74ZLBw+iLAx8qfXcxwo5DWbJlz1cT2HCurRKsk3
	 L73eBxdL7JoR+9tlaU4sjJs/YFlf3hcmczqwtmrMGeRIQVG0hZSPSausJYeZwt4tNf
	 5M7BN9k+olmdLMkq2UN9vnX4IHywzrm89rsrnM2iZ7N26nyLNbPnEbDZmOVv3TBrD3
	 H0JjIsiZiaKtFinQGYH/VxGhD2Zhzs11JlumGl/ve98da5mw7K+kJBmluDxAlS6W8o
	 GYu5oMyEhlmrE4VGjMJ+fshZxOhk/jpiLjTsAGEk4sORUTmQCdIwDDNMKDoarMfNjV
	 Om1XPYJ5O+dzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B8C47BEE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769863360.11106.16403429844866582338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3621317768e93b49542974c306b1b7f2003148e1e1b81d8fc8ac163e4d3d550
Date: Tue, 06 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767698633
