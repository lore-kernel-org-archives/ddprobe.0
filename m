Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE02933121F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769106834; cv=none; b=TWzufxMnpricMTcgEf9dry0LJULqrNJ2AXNBbuhI80fb2Vn2kC3AwYpmEKEYNGviCA95MDuxitlFwp2w0EC5SswJ7lWrDH0aBeRUol+3t4O0SCXSSc6KUvoOVfp+rCt41CrkMmMnZiCJI4AZxgifw0ICi1VAqe9mu4AP4ScOEsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769106834; c=relaxed/simple;
	bh=mX8dy4SrsC6nJj7fB84hwpZ5C01uLKreG7NBa81MkUk=;
	h=To:Subject:From:Message-Id:Date; b=MkoRubTAPV7Uxt25NIWZa0TVFOZm9zMwTefkKwPraCUPWyZX4SR1UxvxGeW1omLpLNQ4DCXywXJS0z+Pq1YLNHwyF4SVDLaaXqPPFvbIs42hNyCGYrp6amobUgH7T0vcZH12bJz73G30oRKuf2cWV8p+YXYSzOD4jLJyy47NBVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0GlJwSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0GlJwSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DDFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769106833;
	bh=mX8dy4SrsC6nJj7fB84hwpZ5C01uLKreG7NBa81MkUk=;
	h=To:Subject:From:Date:From;
	b=u0GlJwSpna33wP5RgYgbb/dD/26jqzMuj3NqAnB8bNi1GTwWl0m9/8zS3GVNu4uBE
	 PevrsXWZsNQizEuchU8zCuB0+nLKWZnnrlL3rVfm9214SS9Tt4SSpfu+2+2bZr0SUg
	 5Jjx/5a2Fz6MNOamMTEPe9IsU00d5swZdnG7dTBuaBqIxfJiWIcVIDwrWVx/78c4lb
	 a4tBrLQzX+flR7+/9s4enFordEmO02578qILU2iTYrBJR99ulsyV88Jz0j8x/QFs53
	 OHAv+4EiICQogckqXARz5pOrKmOQ6F+/u3ZmbPJmFQhYZQyc69Sal5ds66mUYX1pk5
	 DaCnakkG/bUZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92015D6CFA1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910683358.2041.7769410547837124365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be3e75cd079bfb5158b574bb2dbaebb92885ae1561bd0a4a37c148171c56b0a
Date: Thu, 22 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769106833
