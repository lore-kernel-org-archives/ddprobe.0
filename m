Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172A92DF6E6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767166434; cv=none; b=Ker4+ipoHdpB/4u9Qj5XEOGaBs1bVIYrqlYvU7GJmZWtNoMXXOMBLo4HpW7iLfhTxwy97x5o/sDuUurGh/mZRBNrwjSHbIcDYfu5Aw9kyX0IvGKaLfLfOoNdKmqNqxTgx2RmK/mEeJ6IcBoK4o+rl/AyYPKu0onT5/nda3SYkxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767166434; c=relaxed/simple;
	bh=EOWreTr5D1vz9ktrJWEvCa2z0YdR/vbrlW1xLMZoHRA=;
	h=To:Subject:From:Message-Id:Date; b=f2eiMDe/x6QEnog5K/LdzPehBVJ8aV4Q1vRZENB40GNiEcDN96E0vZm2JjGDb0r5KCvrll2lLYity1BcVP9VlWLEIyfD/3nU/lcLDXoRv2gJzaVx2dhWnOWrEPlMOwXHqjBhARA8Ve6YI53ATNtbdlmTpEgRMDdDYW2mODXCSiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAN82Vdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAN82Vdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0802C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767166433;
	bh=EOWreTr5D1vz9ktrJWEvCa2z0YdR/vbrlW1xLMZoHRA=;
	h=To:Subject:From:Date:From;
	b=IAN82Vduh1+EweFNTJhKzwFGOPYjKgU6a9TP3nBRmcj++1X2k0ADaI32PfBHNRDzE
	 6Yp8UJdZpRnv+9k3IZzMMnPuD10V+RNeTsgjJjIVi3NbzzjRFhsPZk0j7tedAgCyZC
	 NnLzc+6S7nb68WAkRCjeyJWUIsdQqkrG76pKI2CSv0p70BasbiOAXa8sv8bWQfEk37
	 KiaveODyFfEvq6KnyJ80kjwxGhemrHD9zFhIPrHhcRepDz0S4yonEcIEJmz18sM8Wz
	 VxkPe6umq6gVcFcN0Xto6yS7F+YDVZMeSRsEPcV25RBOv+BkQCbnS3SqC8QR1nlDZq
	 aCGdBYlOXH8NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D6EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716643358.8829.1771584590805636469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f92e0b40a0df364090924b98049a1c8055639bc1df4f4de11bb464c3e13c0e
Date: Wed, 31 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767166433
