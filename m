Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149FC2D3EFC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030994; cv=none; b=PKPjlkqDGeiCSW0AoV7UF5iw0Q6xjTJ6i6EXYv0Buj9JsCWp/TzXae9b3QnmihUe+K5EKWKCVzW+Sw1XBTjUtectkCKJ/tWHiwikmcHq/G8K2lIBGBjHt1hcvNY8HUYv6pNRFep+scIV1sjlelEB+Td1RECfbbdupfd/uCspB0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030994; c=relaxed/simple;
	bh=JRVp/3YZ2Pc8lN0F8pWP4rJllc6APWsjJ8Egg8v5XGk=;
	h=To:Subject:From:Message-Id:Date; b=ab/xchw4DTQRgtW2zGnNvWAnKIYaM2/X8fWtzFdhBcRy+lvaulCgbR1yC7pveO5a2Via6SJeVUeUnhAsFSOa9mEfdM98X27GlsWqzR0sKH1JAKhdB6BNY5Ht4rOTEcoyXv8W7yTwkVBknyNS55ivVD5b4HCR1aFR7tMg282JqQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8gEiMDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8gEiMDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F8C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751030993;
	bh=JRVp/3YZ2Pc8lN0F8pWP4rJllc6APWsjJ8Egg8v5XGk=;
	h=To:Subject:From:Date:From;
	b=L8gEiMDZ3+BQ2gGH79FKhGQLHX8/wN6G9ol1+Yau4GoQLSZvjqYIGE0gQRKb30+NX
	 DT7J9QnISrT2Fl2GZ1nGC2gf2qBcYk4fNaIdmSiZw+pUrOe8PwDFeasf1YjljCJLxu
	 S/pNlp+ryxCG2YGsRkJPqRdwkDAB2OGIXeUSQBCQV9ligCIkJCLhlipQOpQ00jGA9P
	 TXDVBYWB63h/3ovlPQ/5nqqT2fTlbYnnFXuwHk+L+s0SqXtsAWEDY5MgH9whEsS4Iu
	 mSAD+4gTjvxINu/smWJCTV5EhaB7IkO5Dz/8JDU/Ovn6U254unjOT/5dSDdIZqsdpm
	 IShWftS2ANzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C66C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103099359.21562.2497158966946049857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c220981aff8859e3af2f5e4dcf2fd1ba0fa31228e2daa26bbb61c83a97534591
Date: Fri, 27 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751030993
