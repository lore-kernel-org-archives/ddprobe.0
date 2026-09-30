Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE47B48E0EB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790764838; cv=none; b=AL41y992ihq+VdaXLveq3J5Or9IMXRu4UuC1qCn31H7ITu0G1Zsq6pL2HWVmscY0N0b9YfW0kGGmVM9Eb/DaojmsY575a5oY/sGZpH/+y5sjZRuFZEFuKNALLroxJoMyfwldcHsgn2mP4g675BMw5tWtySrn5i+yodJ/W1FRDmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790764838; c=relaxed/simple;
	bh=Lwa1Dw6AE6FzX37CFCKdk2gwa62m+r5s39yt2dLJBaA=;
	h=To:Subject:From:Message-Id:Date; b=CJ1lXU5ANGk2Ih9ocF3kX1Labm4usha+tZCO5rqpUrFpgYDDqNNJ7omMejEFmGLYcEl0tvCUZQ1SJUjy2477IyQ/x0BOj3iInWtYQuPV9EgMtkon5wFCf9JwNTzkqttbQ0lzGMGBSKkTBT8J04puqGtTeMc6jcf/9rQy5sI5ORU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9rde9n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9rde9n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8753C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790764833;
	bh=Lwa1Dw6AE6FzX37CFCKdk2gwa62m+r5s39yt2dLJBaA=;
	h=To:Subject:From:Date:From;
	b=Z9rde9n7K8WHP0LXk6enLE8gsAUtb9xfH+YiBA72fttQf9mMyRe80s0YdUScO0V0x
	 2pPivlmTGNjgoSbNGR5amvib+ZZpg0vEOzGbv+7H6jdxMTwnGCqCHCljJ/HQjkX2kl
	 y/g+pYKoXmCldDeqgcrB6aXE5LYclKYg6jU5RVRSQUAuzNCJWOKTP7x6+fkIf4FVHp
	 A1yMozp38ZwmEjzOiTOicPfJEZCJVnCJZMvib8ZirD72vRuXFvt4mE5dmd0dlQ7FwU
	 8yMR6aK+1KGQiMroqBf2sBjf/ui/roByjsKpCHZd+v+O2ZQZpEw9IyeONTaVdVX1vx
	 YR8MvVVeUEQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A9FCA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076483371.24807.2432293533294707409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b8322d2c0563010a9dfec255a6a0f735d05dc5fddf41894ad3e78ce2e621ec
Date: Wed, 30 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790764833
