Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306C3215066
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747176594; cv=none; b=fEOjC6+5S8WdqhjicGcIljAMskVtjO3O5Z4m1/gQcp0TFPS4bRiOd0RfcnW9RA6Mp+QHVrmD9rMsPes3zr/bRct8AEsXsUNeLFBnIzLDw66sWz2C3hdyXI0bmPbCNo1I7KAo2p/z3hHBckcOZ2SYtoyclk7jMPi1jSian7kWeKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747176594; c=relaxed/simple;
	bh=jYZh0hIlvbITdTnU/YbZIUzXZuk7HX25A39TT9PYsaw=;
	h=To:Subject:From:Message-Id:Date; b=jc3n5pPRQuiwqdl0rDyA4MMoiz4xJAzsQKTmBH9VSfQJv0DASYDdZZGNTrEljy8WaXXKzWC04RxxlekE3bEt/fUGbFgsDCfAjgY/VGqwdQZbK7G/q/97RfLhh3Zmngia/DoObJ56C+/6CygOyK1Tw8OqSEhQc5hbCmhvBV4+bhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXZUk5vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXZUk5vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC7C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747176593;
	bh=jYZh0hIlvbITdTnU/YbZIUzXZuk7HX25A39TT9PYsaw=;
	h=To:Subject:From:Date:From;
	b=UXZUk5vxvWjF/f9WolNcOoSFY/aZ1uXvx5RpQ3Zr7THcgxhCiQ/1b73uW2iaWRUA3
	 6OqHldkBh91mIzT9/+81DIq7jSHsalXgyeirOek4uumgmBEjZB99c79M4BcDTeLTlr
	 t/aD+ocKFJNeY5mWP6PhWcNtL8lgjTFn0/rylpAxBxxN9bC2kR2n12cBa6f56rBmED
	 MjvTgaAx0zeN32stdxq18ZSUP3i4UW42vuGWRJTKO3IGNa7BW94N1bETLZYhYC7I7o
	 K8JpkzBquIyStIhDFUmi8xh6fZeNhC1uq6a2c97zTc/JRLfcRTJd2sLDsPzu5wpPDk
	 R+KxgBvSRHfSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93543C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717659357.21595.10609006484345195939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae9c0f7755b6ad331136ce3246b9b560257117204fd7460a4bed6d73fb01685
Date: Tue, 13 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747176593
