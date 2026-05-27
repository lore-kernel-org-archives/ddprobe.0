Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FE137AA7A
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779900754; cv=none; b=pS8k4pf6e/JIYjo+po+/CZeIm1VbORdyzXT74IOn3bjqZ6Lz5olAIpqt2ykq/meNNW5rhZ+lCKsAakrXn/B2c5ZN52CD6wJgDWdkIN0KGSrHNoSVAwL200AK3A1Ss6kPhlqcwa6uT2F9YIjl23alzQ24xWNB5lErwMAT/TtIGwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779900754; c=relaxed/simple;
	bh=i+L5qFg+xZGj+Gr0AzaY0u/vzyajDS5WQIG5F70kHII=;
	h=To:Subject:From:Message-Id:Date; b=RbZjBnUKPh6HEqKW6ZEInY1LhIe4S+jaAgk0tvktBT0UnJd4Fea2MIflPNQyaW3W7JHknV1UwHiAhf+k0Bzj0S3fRDANjtwXYypUVmjtCVrar42U2QCIFPpP8DUHzS06MgkC5QFmlDYT5SqZjtaL/28Zs3WvxLAA6NWmXcJNWng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb0p09TU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb0p09TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C62C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779900753;
	bh=i+L5qFg+xZGj+Gr0AzaY0u/vzyajDS5WQIG5F70kHII=;
	h=To:Subject:From:Date:From;
	b=tb0p09TUEw5QXtQgThn9znIdWzR4+/kJSOMPqd3jMGhaNXB75CbEytvAlrzAV3oDX
	 E77l0rb4tarDYIHgHFmCNE2otQxzQUBrOF/lU0BG1wHFN4kkt7DsA1xuKB7ex9Rhui
	 g3FMfrDve0DGuXHgTviPvLtumxyQLpjubxF/aLIJnx+zmfGOxqhHCe6RtH0WJgsArx
	 MP2dNslnSaThXQYW7gxlJ+OZ0A8VJgi+U2BCYQkyqdTYU8up+gDQVpnFfnnx9LUlfJ
	 FuKE0Cub0s37Kdn8I4AHMB+GrOrYTBwCk0Ix7cMn54IllYw1Kd8J+F18MhqujUHln9
	 2dq+rhzN8+CFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3C1CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990075370.17800.3969923683379253282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4186a58bb2d61e834b4d9adc1df605f89929544f05b34d13d44f4d2160bc7777
Date: Wed, 27 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779900753
