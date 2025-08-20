Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F3F35337C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755691194; cv=none; b=IjGz6pGzDrbXPGrhIB7sLJytzwRcIUPJcjTAsTi0UPhCLbyh2tTIpr9yxMiwheQBYoDwYb3ppA1MNE+MGu8KOyJ4BCxVk7of5p4k/uaY8+sM2gZnrHR5wFXx3OK7aFLaIyDMGOq9SjO5xpqw+rrqzpLRHUQHOLotBilznAeHsVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755691194; c=relaxed/simple;
	bh=UN7C1+BzDY4rULIEr9lYKMyhCH8SqIq05RiavH0KH9M=;
	h=To:Subject:From:Message-Id:Date; b=gQjMnxHLk6RnZYKNQYZT8FsLp6Uxybp1iDesao2QOUI3sO8Rw634UMy8HbE4tfBai9efSLQLqyTy3v6iRPm0DUsinH2GvpNTr+1Ik4wPweH4Xja67sVlCyezZ8I7QuKMHDNA0H3kdv06Ofrht8oMy8yvnIyEtV6nw8UTdW3WRx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHvTCdBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHvTCdBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1099C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755691193;
	bh=UN7C1+BzDY4rULIEr9lYKMyhCH8SqIq05RiavH0KH9M=;
	h=To:Subject:From:Date:From;
	b=jHvTCdBx+cCYlV0bQVKt7yhPpfW/i59N3dY6lEyr+x/CzYfm0QOFX0cUkjR/9xe12
	 SBWPKzvlPplk1U+m/4K1QgRZYR5uG8Y2dtiyu/ZWPNAqHh51FDmuOZ0hBozJXVdABQ
	 WPj5/6XK28Om4jNdwHb5Wqheouk0x2FtvRPc6b8DfhhwI6mrtvg2I/t1lIa/gZ/mxP
	 4hulJNoNqaxlQy7xQ/WZBtSOSa66gHNgwjMOiy7z94B22UE3wpdoVp5EfzUgVfOczg
	 cCQGDkI6Zp9pdyoIh1LSxjjMvi60LACuU1LwcRXfv2rVft8gbn7IStsDOBmHbfvm2/
	 gLPbyp0TuLSQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FCCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569119357.25474.6973230695431758490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5815260637e0de240e459b419158997f8bb5f1a38a3099e81eeb60a0d2a1371c
Date: Wed, 20 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755691193
