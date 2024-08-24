Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D315339D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724505354; cv=none; b=XZnoLg9CrQkEMiR9En1R00RqAYuqIVBFV2IoOpy5eooDPNRpaLwJpZXkJyhs9+6rVMlyC291s3S4NibxUR71mcNEot6DEvIKZo1/slT2Qpf2vCYNHVjAI0yY9FP4VVISnuA0B1KC3qUs1qolfDLC09kAw5MaS6TZbqmIa4/hrXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724505354; c=relaxed/simple;
	bh=B+x0Rybk7ULhM1oEo7KiGvtmIQEZ/TORufweMIDmVSE=;
	h=To:Subject:From:Message-Id:Date; b=Zde6sTbnl31t1LH/ZLxjbGibDKUe1qgs6Umn/6F0z6vWHnXNkKeoioBp0Z2iZL+UHHF3c0SiH2VbuqlC0qsM+IgUGFd25jD7R0BOIhmQSUF09ODP6ICcICAlYEPETSDCshcs45zEsaD585hxslKnFYHH9V6jLsaxz+t6NgNrvWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpzdP6Gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpzdP6Gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B303BC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724505353;
	bh=B+x0Rybk7ULhM1oEo7KiGvtmIQEZ/TORufweMIDmVSE=;
	h=To:Subject:From:Date:From;
	b=HpzdP6GgYPOAMxCtYDSLwqEj3HCduYQ+lrIa4pG2s6GCWgH4SJ3aKyT1FN4kOjnPl
	 ozxy6b45Eg3oj3+Z4h9jJzo7x3yi7bA95y94wytT6HfXDVM9lgdIk91Z6QkdADRb8a
	 0oVlOHGG8QNTwtJz/5cm3+ttZSMMXuV3AX9vusunRUFOyl4zlF8kLCGyZPBqsL7kmX
	 sIvcjxJdcl1+sn4+WYnCdPB+V3rteSx3xgqJ1NnzCYd/N2mooRojot4CaUxMcYz+nZ
	 ZE0VkuXf5Mv+rVdwbGaFcbWe68rj1UiU+lFz5fXe8Ll9qemx2yldiJxhHg0qgrC9a+
	 PJj7R2NLQKvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A050CC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172450535364.31305.1858904396449352745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fa95dfa1e88906bd9842aa30b6cc9a45d7c7cf25f52741ba50dade648fe452
Date: Sat, 24 Aug 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724505353
