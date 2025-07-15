Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3738F2417F8
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752598794; cv=none; b=MNyvMbhhPuZK3i3dTVNnQpDV9kSTpFyZuVgS7WJjZ1JYF0OZ2Veaea5Dof+0Ed11Ckz5Rs4dmV9oE2/9Xz9LCo+id9UauAA//OnQWWzItGbSBXhOV0negBOTIHl3IzN1gqHlnIaIo/gWcNYcs7LwHYR5KL2lvTKFpawT/GfFXIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752598794; c=relaxed/simple;
	bh=6LDfooN6cmkz4UdvneAeep56T//oF2AtsmpwPerLpD0=;
	h=To:Subject:From:Message-Id:Date; b=PgJs1oUEQRnfidjRL6EwtS5nmhUUkx6Wc3zerw1hL/Xi1GUHjOC8+AJI4jJxkzEVAe+80UpJ50KSdmghIcMVmXLKn83ZDZlOTuSYij1uQbEw/0wUo1d6TSHDnZA485mJDUtpU8mqoktxMXHdYKZg/o34J/HIRpUqHvuMiXU9lmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfTFQHgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfTFQHgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B854BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752598793;
	bh=6LDfooN6cmkz4UdvneAeep56T//oF2AtsmpwPerLpD0=;
	h=To:Subject:From:Date:From;
	b=cfTFQHgvJyD2bI7bIQwDr6Dz/LnzCZm1J2B7oVuKDsvyc9e1x1grpw8SPJXkaHZ//
	 Yrjp4CuugU5+AH80FgAr4N2PVanQh0agBmj8WwU8KG7fnVVROHkl37j3I3QA1UQo+X
	 LAN9MYRYiIQ3v6GsB1l39JPDUiyYrdgKypuUeLiCfq8p6+AzdSJlU8ERXDZfS9IHrr
	 kTrxdgtkvzZ7/Q0B89g9LHVeDILTAfIlTcLoiiMNbFRkV5udtpPyHpQhJCw/PZ2IqK
	 Dy8xqcmRw04lJV1IX2icrmopBiA/zfDiApdb/3LHYxJxfgTFU+9CUzkQk7HrNkSX+w
	 dc/eRGW0MXT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5CC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259879358.21397.6660189988779229041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31cfe87b6e4c77c1d0ea5aefba41f49dab2d0513a2500901b19841a36fa29323
Date: Tue, 15 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752598793
