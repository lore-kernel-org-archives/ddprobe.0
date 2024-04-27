Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCAE8F77
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714234943; cv=none; b=genAqOCf5JXMe2Z6uPXih4YtUyUOhseD2khuUO62xCKec/8uxvqsGtsft0zf0stWwgl7Kr1FSw4R9jVG3TDpsEZRe6H8vZmFH7Xi5RcnPKdT/3JwZSYnA0GXw3IkHqi7k2+czcRf2+1AvW2mICSKM4kSvov5mdno5M48GlKiRGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714234943; c=relaxed/simple;
	bh=eRPRsIJn5gcoKzHD0Es4oY2oLLFsQrFQU/poC3F0b2A=;
	h=To:Subject:From:Message-Id:Date; b=lqFZ9iDq/1WDOLyQbPpEllvUbYu1w1gvfKr8cdZT0nMzUJ77dSQkevTC8kwekQ4p9scAE4i0f20Fi5zDuc0N2k9tZs3s+FrNzMF5/jEbgXk8fJEuU2zEjtMU6HvG58PNcygrekLbvMYIy27uXUmD1qneYxidVr2CHzKePZajO9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaGpN8tL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaGpN8tL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ADCC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714234942;
	bh=eRPRsIJn5gcoKzHD0Es4oY2oLLFsQrFQU/poC3F0b2A=;
	h=To:Subject:From:Date:From;
	b=qaGpN8tLmMUp6qw5RnATrSbzI9hdZgH7Vjy/tLZ9t/mBTyZw3YaD3PeoOictcbX8v
	 2JeOj2GRUBPwtug/im1kQHigq9vodksEl8Mcwwu4d5D4Avx8jTp6hoR2YbLTkrcetk
	 NaZlviKquqmKEtBKy1su2ctQvFULeM7n0FM2CAK9wV7uBvZJko6G4b7PSqo5oqz5hz
	 rZI1tt+k68+fgS+gft9drpBuc7HuPEwmSKTDUontAoCozJt0NvnGwWJWfJtNRJZhXX
	 sQYTKRftTorXdltBF9njK2nOZ2Cl81xBzneJDR9MEeQ3ah7uUYrjPNonXUC2QjC/uP
	 X9ndyCP2FDDbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF9EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423494277.14379.4130934456192452541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40282818c829c9225b98958a449a75c638017189708163496021dd0183c8eece
Date: Sat, 27 Apr 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714234942
