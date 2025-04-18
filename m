Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4140F22D4F1
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745002194; cv=none; b=batlaIVRK2lgRPhm50DUYEfcgKu7TXTKgKluAEbRs3ovXQ4ZR0p3gMiScRcB7XBnIJVK3+2lQy9dpEjwEl460AAC9RXKrbGudNYm8EYB33+vGnptLQ1q3sZZvtYrFw/3Y8IzyXg+HsjiCM8Cv9jKbUVV8AeNRpFMDiQCDSQ/+EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745002194; c=relaxed/simple;
	bh=kRlVtTLvXTCm+jVOEvZl5BRbWN8q4P150aNvVn3Un7s=;
	h=To:Subject:From:Message-Id:Date; b=IWYTbYnKtoRpOK/ifxVGN9OcF/Jv9m5Y8at0rF6JiYS3/tASH0PVP8NUOdBV/QFfxjp5ekh8khEHlAHe0u84PZtlkTBiC9Gv15ZBmk/A9kZh+Bto4NQV0O74J0z4agvOGDmmgZ1/X9I+mqL3+M6a7lxiur/Fo6JiJCNx5ECEsRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9qnoo51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9qnoo51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A9C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745002193;
	bh=kRlVtTLvXTCm+jVOEvZl5BRbWN8q4P150aNvVn3Un7s=;
	h=To:Subject:From:Date:From;
	b=Q9qnoo51aAEBce+clDXiXFYda3q5mxZ3fhLCoYwaPOwKzt0FucDY4A3kGgvWz26Ib
	 MMiveHCczL2sqgYlZp1CBwxy0dnpM/unS/wO3WaUOelZiutx9FvHzFhiFOYVZT0w+h
	 5uNXJr4bBTwzpNb3o2mIAh73A/EuynEpTtoaEq/DdVi62VQYqHg5UFm6P4vfuaIQ0j
	 Eb1e6kvk4zFBSA5Flps66wpy7+VTg3fUVoR4GFmQ8YPY2BhwUUiJyl1e+r/IF04Y7B
	 zap5tx01IuYbcJ/QBJHvRa8u7DyGjvPN4bayB2OgJ+Tker3kPOEr4nZdR/1nTKvgAz
	 0vdwmKVCi92LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC34C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500219361.25129.9203107833243777317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a404d31d938819d722941cb58d7fd95682c03a1c4679f6106e5f098cd07679af
Date: Fri, 18 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745002193
