Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411B816ABC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730051754; cv=none; b=H4tPe0Q9faeHH8Xard5DMsoQg6epFYoucwHanOoNyUZtuNOLCbmOVpU+y9w67c/OzvWjkem8fkz6JE21sjILgzuBj6KgZSXk3YBJ5Jte3abA3YXXX5v8vv84yy+a7aQ7Yh2l1iQ+AVgU1MtbZ1k5e/RmZ089Z5+aKx/zcuWOglg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730051754; c=relaxed/simple;
	bh=6bHv6kMNpbc5chGwYSkF7njHZLi/L0nuBugJX36aAmw=;
	h=To:Subject:From:Message-Id:Date; b=rznWKNtYphlhQ9HTyRLZlH4f3nDRbhz/CmPwoDRevgA6VX4lruoZOm0Trd0rHOhM0Kr2hmQTk7zFB7jL9NTweT1kNV0Hf3/xcZ8jBRl4mB4rzqetk+e9GhE/te4x004UroEvTZeMDACgPamHUdR7dFWGJWUy+NU/YcYsTEfwd0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPKCDVLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPKCDVLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1EAC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730051753;
	bh=6bHv6kMNpbc5chGwYSkF7njHZLi/L0nuBugJX36aAmw=;
	h=To:Subject:From:Date:From;
	b=rPKCDVLzW5hXkLNUJRapMppH2ms55lNajS8X+ujjWwKun9RrrDXF8Aij6f1QXcc2f
	 XMXvFCxnzu8Ue7khWWFe3BHeQkMvI5+T+liM4fxKVHm8mhKB2rays78tGlCDtJTf1u
	 bVPFgT+oAt9n0BZbZfBMFG3WnKbU5U6omTZAfJ9P8Rtcg/Yc/UjN/H0BXXaLNtLFS2
	 oaYWcacrVZb4g0vyFhGmR7LIEbY7JN+/eYRWCLojxBhO2gV7ldNRQJunFf1kwhg67K
	 cmDNlf05RgYewLnuKdnSKmPZfI6PK+alYqx+vQiBuCHNCAM/+s1GhBDoCX8gZ4VwzO
	 vM1ORhZVAVZgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92853D13572
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005175359.19109.17758683521736175857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af37f03fa2b5ada0b9e02e065e05cb579b9abe812c2ed9c12d5ad978eeefbd5
Date: Sun, 27 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730051753
