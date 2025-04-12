Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3828A19CC39
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744490994; cv=none; b=TFRqXCdo9hQrULyqsInGGLxEXZshpvnLZP1gxc/HtMzfgHqaZQO34XLSoLD/zzZPwdVFqmphvLf2zKXcpvoh33Tkhq+MTogUqHdHwvypcKXA8mLcqk+FYARxmmMF3UMcxfAmLhduZCbHXJxJMY3o0ACQ15qtMWO4x9+R50NVCF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744490994; c=relaxed/simple;
	bh=794ENME3iBvsrKJAtEDJ59M25NVHNSEto7zCVfR5ndA=;
	h=To:Subject:From:Message-Id:Date; b=hSkaTAFUJt/yQhIXcfRmZGsxUP97WTJ6cwuwwgPUPsLVP03HQnfdmS0HJwzFXaND/LDuPhUBIQtp7MDxk2GqgqjzmLpzDJgaM956/vh7xhoR5rbG447Oj+PwAPFzI58Zcj3HAgOELWTsQFxOZ4aE+4ykmWE1mHJNGDqGYDZwVEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBf+BVuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBf+BVuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744490993;
	bh=794ENME3iBvsrKJAtEDJ59M25NVHNSEto7zCVfR5ndA=;
	h=To:Subject:From:Date:From;
	b=aBf+BVuyXCWhjx+l1z6JV8JkTUJxH7Awui7WDLPZUjByHpFxGshbvGVEyFJfAZN0/
	 znJab5fttzOluvb9NY3OzTygyejCK9bjwkVxhs/Nu7D1njWzRrVvp56+L7vnWk+NUh
	 uSOeKJe1RF5UDNfW9l7Z2KnxhCHqHqlIj+Yuz6gi8ZtZ5fVW4fCwY+7XzL8lvZi7Uq
	 BDhvz60Jhhwxe/AFiw0ZNbpp7CH7yMb7Kijx1h/aOJIe4oBeU3676VI8sy9zpRlSnR
	 TirJDFvZyqjZ0Nx6tMy72z3Uimd4emcsP9rcdGSsn4HArI/kD0yws35Eah30cvx20A
	 Xg5GZo9y2+MRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942BDC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449099359.18909.16739757716397260264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7b5ce0dd86cfc184a45c5943e9b9c267c9b8cdcd3fff49ffa15c21ab627b7f
Date: Sat, 12 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744490993
