Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1747C335C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759347594; cv=none; b=fR5IVew/21ksveSKqLReaDT0Z8mbKSvP2D6HJdDEDDhwp9+PTX9Arn41TzqhjGjgZevVRyBrYFraHXQeXj8F9rcjLNZyHHdAspTv7OkdRSgSwknuvMkwvBW5dCm56zb72kxYEmMjvTp37ffiNzdLhE3jymFkLZJ++JKSF23hjfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759347594; c=relaxed/simple;
	bh=W3wrEnlH6jDN1JBN/AMOjWTBOPlg3u3t8w9/3Ug3i64=;
	h=To:Subject:From:Message-Id:Date; b=RmWMyNukTB8fAGC/fuTjxA7S4YUicxKzZ516h2OxXBc0v7DfZQEqXnL+CLzJUX+WnUyYa0oaYTm4dZ2Jk50jZFpA+f+fpQXyfZ634cmk+Yd12LRusz6iPcCMR8UpLk3xrJEwdl/S+9ks+gPQohQk13djSbwAfj5tez/Bt7oHFCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbDihlhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbDihlhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB0BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759347593;
	bh=W3wrEnlH6jDN1JBN/AMOjWTBOPlg3u3t8w9/3Ug3i64=;
	h=To:Subject:From:Date:From;
	b=RbDihlhkorRFKahIUlPHFj9aEJ54MetCDmiwlcBHXJC84QADtUcQdOxaZEvAjqbur
	 S/kMI0dFzeD4IqR3j6VIg/7rMRKoRl9lBV0W2IxbL0hJB1ddYBrJ6dqYeH3GanZVnp
	 kgq9pUEPIC9nb9W60T//PJY9GrLaDJt29d0G1JG/gOVtRl4UxC6FslxTETXP2aNU1Y
	 1PsKhpDt53TrHfXExKnvAD9E4b1d8G40FXVIAn1SLaHLRgZk1uvJZJLNdNeyHcWlJH
	 R1GSP/TJeObjVV7aEernLmdBa+JCHVwoejBZjPzaeQkDnMNkGqROwE07wz0PLoxQRq
	 /jm5j3tthhojw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B102CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934759360.29652.14743713209549366917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faad3377b92028fa93542638a1d284415c4c0d631bd8a3cd85cc17cb4c3eddc0
Date: Wed, 01 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759347593
