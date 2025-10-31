Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F2F2F3C1E
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761892194; cv=none; b=dBwsxZoTHXohgNxcel2wR2thvDRqliz//PAaQp4ZJ5A7m2PesmLzEWIYGnPEL9Qgv2CCe3S1AAAqPU6j0tGAC/dofbtztC2nXEqZKoD9nhZNIWPsx2SAGTt06lhh3HRK3XzNJRfQm20Ow5bRFtw2Oo1FNaKdd0u8Nm/oo8DsUUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761892194; c=relaxed/simple;
	bh=nWkx0nY0aV17ug+mzUDG6iUEYBo/mVuf7eE0s3Rfu9w=;
	h=To:Subject:From:Message-Id:Date; b=odqPiURCYbH4aZpAPcYG5QRCJqfjz2g3QrYrSaPB98DWyYtqn+xutTAz7o17CuUjqAsXRuBZcrLxn4GbGFBmdbKqRiEG1KEIQt/qlhhAhTvGqcwbCUIqWQ3p6LZyva1OMJqiMoMOMHuqhhgFpYqhG2ECJV1tYtZilTKNl/uoYvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlmnkWXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlmnkWXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4667C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761892193;
	bh=nWkx0nY0aV17ug+mzUDG6iUEYBo/mVuf7eE0s3Rfu9w=;
	h=To:Subject:From:Date:From;
	b=hlmnkWXy2qtyTvjop2UxMb9NYxbz2DEAVZZIENQkQfVUXfdJp9te+No6mySfgJEF1
	 ZFYWTstdxXoyLGQRpHwe9lRxAtLt2oh7sf/kovY2P4RMxltUlR+DPMOThPYtXZM2kL
	 eTKE7zMBY3jhrJiPABtTw9CBnjiyI/yjJEh5i5JEYb2DyLOgIdDUsUgVk87jfTA4VP
	 9ifkR6s8tcgKfspjgN3ZOSdxVcELHYjGiQCqjT38FmumbPf300E0/+8wGsk5iFIBQ3
	 JiPPkoURBgbZsBJ+XAfFu5SHuEV8g6rbefs/AhB2DumM8OfmvBayl1bbjpQnPKdkBq
	 suDOodluYO8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968C3CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189219358.9823.7853134457623824457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002a5fd544fa95a2086e2cef03669fc1e6e0338b36b6920d88bb949d553d38b0
Date: Fri, 31 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761892193
